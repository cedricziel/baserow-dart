import 'package:baserow/baserow.dart';
import '../test/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

void main() {
  group('Baserow SDK Testing Examples', () {
    test('Mocking API calls', () async {
      // Create a mock client
      final mockClient = BaserowTestUtils.createMockClient();

      // Configure mock responses
      when(mockClient.listRows(1)).thenAnswer((_) async => RowsResponse(
            count: 1,
            next: null,
            previous: null,
            results: [
              Row(id: 1, order: 1, fields: {'name': 'Test Row'}),
            ],
          ));

      // Use the mock client in your tests
      final rows = await mockClient.listRows(1);
      expect(rows.results.first.fields['name'], equals('Test Row'));

      // Verify the mock was called
      verify(mockClient.listRows(1)).called(1);
    });

    test('Testing real-time events', () async {
      // Create a mock WebSocket
      final mockWebSocket = BaserowTestUtils.createMockWebSocket();

      // Connect and subscribe to events
      await mockWebSocket.connect();
      final subscription = mockWebSocket.subscribeToTable(1);

      // Emit a test event
      mockWebSocket.emitTableEvent(
        1,
        'row_created',
        {
          'row_id': 1,
          'values': {'name': 'New Row'},
        },
      );

      // Verify the event was received
      await expectLater(
        subscription,
        emits(isA<BaserowTableEvent>()
            .having((e) => e.type, 'type', 'row_created')
            .having((e) => e.tableId, 'tableId', 1)),
      );
    });

    test('Testing error handling', () async {
      final mockWebSocket = BaserowTestUtils.createMockWebSocket();
      await mockWebSocket.connect();

      var errorReceived = false;
      mockWebSocket.onError = (error) {
        errorReceived = true;
      };

      // Simulate an error
      mockWebSocket.emitError(Exception('Test error'));

      // Wait for error handler
      await Future.delayed(Duration.zero);
      expect(errorReceived, isTrue);
    });

    test('Testing workspace events', () async {
      final mockWebSocket = BaserowTestUtils.createMockWebSocket();
      await mockWebSocket.connect();

      final subscription = mockWebSocket.subscribeToWorkspace(1);

      mockWebSocket.emitWorkspaceEvent(
        1,
        'workspace_updated',
        {
          'workspace': {'id': 1, 'name': 'Updated Workspace'},
        },
      );

      await expectLater(
        subscription,
        emits(isA<BaserowWorkspaceEvent>()
            .having((e) => e.type, 'type', 'workspace_updated')
            .having((e) => e.workspaceId, 'workspaceId', 1)),
      );
    });

    test('Testing application events', () async {
      final mockWebSocket = BaserowTestUtils.createMockWebSocket();
      await mockWebSocket.connect();

      final subscription = mockWebSocket.subscribeToApplication(1);

      mockWebSocket.emitApplicationEvent(
        1,
        'application_updated',
        {
          'application': {'id': 1, 'name': 'Updated Application'},
        },
      );

      await expectLater(
        subscription,
        emits(isA<BaserowApplicationEvent>()
            .having((e) => e.type, 'type', 'application_updated')
            .having((e) => e.applicationId, 'applicationId', 1)),
      );
    });

    test('Testing complex API scenarios', () async {
      final mockClient = BaserowTestUtils.createMockClient();

      // Mock a sequence of related operations
      when(mockClient.createRow(1, {'name': 'Test'})).thenAnswer(
          (_) async => Row(id: 1, order: 1, fields: {'name': 'Test'}));

      when(mockClient.updateRow(1, 1, {'name': 'Updated Test'})).thenAnswer(
          (_) async => Row(id: 1, order: 1, fields: {'name': 'Updated Test'}));

      // Execute the operations
      final createdRow = await mockClient.createRow(1, {'name': 'Test'});
      expect(createdRow.fields['name'], equals('Test'));

      final updatedRow =
          await mockClient.updateRow(1, 1, {'name': 'Updated Test'});
      expect(updatedRow.fields['name'], equals('Updated Test'));

      // Verify the sequence
      verifyInOrder([
        mockClient.createRow(1, {'name': 'Test'}),
        mockClient.updateRow(1, 1, {'name': 'Updated Test'}),
      ]);
    });
  });
}
