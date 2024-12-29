import 'dart:async';
import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:test/test.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:stream_channel/stream_channel.dart';

class MockWebSocketChannel extends StreamChannelMixin<dynamic>
    implements WebSocketChannel {
  final StreamController<dynamic> _controller = StreamController<dynamic>();
  final StreamController<dynamic> _sinkController = StreamController<dynamic>();
  bool _closed = false;

  String? get protocol => null;

  @override
  Future<void> get ready => Future.value();

  @override
  Stream get stream => _controller.stream;

  @override
  WebSocketSink get sink => _MockWebSocketSink(_sinkController, this);

  void add(dynamic data) {
    if (!_closed) {
      _controller.add(data);
    }
  }

  void addError(Object error, [StackTrace? stackTrace]) {
    if (!_closed) {
      _controller.addError(error, stackTrace);
    }
  }

  void close([int? code, String? reason]) {
    _closed = true;
    _controller.close();
    _sinkController.close();
  }

  Stream<dynamic> get sinkStream => _sinkController.stream;

  @override
  Future get done => _controller.done;

  @override
  int? get closeCode => _closed ? status.normalClosure : null;

  @override
  String? get closeReason => null;
}

class _MockWebSocketSink implements WebSocketSink {
  final StreamController<dynamic> _controller;
  final MockWebSocketChannel _channel;

  _MockWebSocketSink(this._controller, this._channel);

  @override
  void add(dynamic data) {
    _controller.add(data);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    _controller.addError(error, stackTrace);
  }

  @override
  Future addStream(Stream stream) {
    return _controller.addStream(stream);
  }

  @override
  Future close([int? code, String? reason]) {
    _channel.close(code, reason);
    return Future.value();
  }

  @override
  Future get done => _controller.done;
}

void main() {
  group('BaserowWebSocket', () {
    late MockWebSocketChannel mockChannel;
    late BaserowWebSocket webSocket;
    const baseUrl = 'http://localhost:8000';
    const token = 'test-token';

    setUp(() {
      mockChannel = MockWebSocketChannel();
      webSocket = BaserowWebSocket(baseUrl: baseUrl, token: token);
    });

    test('connects with correct URL and token', () async {
      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);
    });

    test('handles connection timeout', () async {
      // Create a WebSocket that will never receive a message
      final slowWebSocket = BaserowWebSocket(baseUrl: baseUrl, token: token);

      expect(
        () => slowWebSocket.connect(),
        throwsA(isA<TimeoutException>().having(
          (e) => e.message,
          'message',
          'WebSocket connection timeout',
        )),
      );
    });

    test('attempts to reconnect on disconnection', () async {
      var disconnectCallCount = 0;
      webSocket.onDisconnect = () {
        disconnectCallCount++;
      };

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      // Simulate disconnection
      mockChannel.close();

      // Wait for reconnection attempts
      await Future.delayed(
          Duration(milliseconds: 1100)); // Just after first retry
      expect(disconnectCallCount, equals(1));

      await Future.delayed(Duration(milliseconds: 1100)); // After second retry
      expect(disconnectCallCount, equals(2));
    });

    test('calls error handler on WebSocket error', () async {
      Object? lastError;
      webSocket.onError = (error) {
        lastError = error;
      };

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      // Simulate error
      final testError = Exception('Test error');
      mockChannel.addError(testError);

      // Wait for error to be processed
      await Future.delayed(Duration.zero);
      expect(lastError, equals(testError));
    });

    test('handles table subscription', () async {
      const tableId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      // Simulate receiving a table event
      final event = {
        'type': 'table_updated',
        'table_id': tableId,
        'table': {'id': tableId, 'name': 'Updated Table'},
      };
      mockChannel.add(json.encode(event));

      await expectLater(
        subscription,
        emits(isA<BaserowTableEvent>()
            .having((e) => e.tableId, 'tableId', tableId)
            .having((e) => e.type, 'type', 'table_updated')),
      );
    });

    test('handles workspace subscription', () async {
      const workspaceId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToWorkspace(workspaceId);
      expect(subscription, isNotNull);

      // Simulate receiving a workspace event
      final event = {
        'type': 'workspace_updated',
        'workspace_id': workspaceId,
        'workspace': {'id': workspaceId, 'name': 'Updated Workspace'},
      };
      mockChannel.add(json.encode(event));

      await expectLater(
        subscription,
        emits(isA<BaserowWorkspaceEvent>()
            .having((e) => e.workspaceId, 'workspaceId', workspaceId)
            .having((e) => e.type, 'type', 'workspace_updated')),
      );
    });

    test('handles application subscription', () async {
      const applicationId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToApplication(applicationId);
      expect(subscription, isNotNull);

      // Simulate receiving an application event
      final event = {
        'type': 'application_updated',
        'application_id': applicationId,
        'application': {'id': applicationId, 'name': 'Updated Application'},
      };
      mockChannel.add(json.encode(event));

      await expectLater(
        subscription,
        emits(isA<BaserowApplicationEvent>()
            .having((e) => e.applicationId, 'applicationId', applicationId)
            .having((e) => e.type, 'type', 'application_updated')),
      );
    });

    test('handles row events', () async {
      const tableId = 1;
      const rowId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      // Simulate receiving a row event
      final event = {
        'type': 'row_created',
        'table_id': tableId,
        'row_id': rowId,
        'values': {'name': 'New Row'},
      };
      mockChannel.add(json.encode(event));

      await expectLater(
        subscription,
        emits(isA<BaserowRowEvent>()
            .having((e) => e.tableId, 'tableId', tableId)
            .having((e) => e.rowId, 'rowId', rowId)
            .having((e) => e.type, 'type', 'row_created')),
      );
    });

    test('handles field events', () async {
      const tableId = 1;
      const fieldId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      // Simulate receiving a field event
      final event = {
        'type': 'field_created',
        'table_id': tableId,
        'field_id': fieldId,
        'field': {'id': fieldId, 'name': 'New Field', 'type': 'text'},
      };
      mockChannel.add(json.encode(event));

      await expectLater(
        subscription,
        emits(isA<BaserowFieldEvent>()
            .having((e) => e.tableId, 'tableId', tableId)
            .having((e) => e.fieldId, 'fieldId', fieldId)
            .having((e) => e.type, 'type', 'field_created')),
      );
    });

    test('handles unsubscribe from table', () async {
      const tableId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      webSocket.unsubscribeFromTable(tableId);

      // Verify the subscription is closed by attempting to listen
      expect(() => subscription.listen((_) {}), throwsStateError);
    });

    test('handles unsubscribe from workspace', () async {
      const workspaceId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToWorkspace(workspaceId);
      expect(subscription, isNotNull);

      webSocket.unsubscribeFromWorkspace(workspaceId);

      // Verify the subscription is closed by attempting to listen
      expect(() => subscription.listen((_) {}), throwsStateError);
    });

    test('handles unsubscribe from application', () async {
      const applicationId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToApplication(applicationId);
      expect(subscription, isNotNull);

      webSocket.unsubscribeFromApplication(applicationId);

      // Verify the subscription is closed by attempting to listen
      expect(() => subscription.listen((_) {}), throwsStateError);
    });

    test('handles connection errors', () async {
      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      // Simulate a connection error
      mockChannel.addError(Exception('Connection error'));

      // Wait for the error to be processed
      await Future.delayed(Duration.zero);
      expect(webSocket.isConnected, isFalse);
    });

    test('handles disconnection', () async {
      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      // Simulate disconnection
      mockChannel.close();

      // Wait for the disconnection to be processed
      await Future.delayed(Duration.zero);
      expect(webSocket.isConnected, isFalse);
    });

    test('closes all subscriptions on disconnect', () async {
      const tableId = 1;
      const workspaceId = 1;
      const applicationId = 1;
      await webSocket.connect();

      final tableSubscription = webSocket.subscribeToTable(tableId);
      final workspaceSubscription = webSocket.subscribeToWorkspace(workspaceId);
      final applicationSubscription =
          webSocket.subscribeToApplication(applicationId);

      // Close the connection
      webSocket.close();

      // Verify all subscriptions are closed
      expect(() => tableSubscription.listen((_) {}), throwsStateError);
      expect(() => workspaceSubscription.listen((_) {}), throwsStateError);
      expect(() => applicationSubscription.listen((_) {}), throwsStateError);
    });

    test('throws StateError when subscribing without connection', () {
      expect(() => webSocket.subscribeToTable(1), throwsStateError);
      expect(() => webSocket.subscribeToWorkspace(1), throwsStateError);
      expect(() => webSocket.subscribeToApplication(1), throwsStateError);
    });
  });
}
