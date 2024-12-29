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

  // Simulate successful connection by sending a dummy message
  Future<void> simulateConnection() async {
    if (!_closed) {
      // Add a dummy message to simulate successful connection
      add(json.encode({
        'type': 'connection_established',
        'workspace_id': 1,
        'page': 'test'
      }));
    }
  }

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

/// Helper function to process all pending microtasks
Future<void> pumpEventQueue() async {
  await Future<void>.delayed(Duration.zero);
  await Future<void>.delayed(Duration.zero);
}

void main() {
  group('BaserowWebSocket', () {
    late MockWebSocketChannel mockChannel;
    late BaserowWebSocket webSocket;
    const baseUrl = 'http://localhost:8000';
    const token = 'test-token';

    setUp(() {
      mockChannel = MockWebSocketChannel();
      webSocket = BaserowWebSocket(
        baseUrl: baseUrl,
        token: token,
        channelFactory: (uri) async {
          await mockChannel.simulateConnection();
          return mockChannel;
        },
      );
    });

    tearDown(() async {
      await webSocket.close();
      await pumpEventQueue();
    });

    test('connects with correct URL and token', () async {
      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);
    });

    test('handles connection timeout', () async {
      // Create a WebSocket that will never receive a message
      final slowWebSocket = BaserowWebSocket(
        baseUrl: baseUrl,
        token: token,
        channelFactory: (uri) async =>
            MockWebSocketChannel(), // Don't simulate connection
      );

      expect(
        () => slowWebSocket.connect().timeout(Duration(seconds: 6)),
        throwsA(isA<TimeoutException>().having(
          (e) => e.message,
          'message',
          'WebSocket connection timeout',
        )),
      );

      await slowWebSocket.close();
    });

    test('attempts to reconnect on disconnection', () async {
      var disconnectCount = 0;
      final completer = Completer<void>();
      MockWebSocketChannel? currentChannel;

      webSocket = BaserowWebSocket(
        baseUrl: baseUrl,
        token: token,
        channelFactory: (uri) async {
          currentChannel = MockWebSocketChannel();
          await currentChannel!.simulateConnection();
          return currentChannel!;
        },
      );

      webSocket.onDisconnect = () {
        disconnectCount++;
        if (disconnectCount == 2) {
          completer.complete();
        } else {
          // Wait for the first reconnection delay (1000ms) and then trigger the next disconnection
          Future.delayed(Duration(milliseconds: 1100), () {
            currentChannel?.close();
          });
        }
      };

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      // Trigger first disconnection
      currentChannel?.close();

      // Wait for two reconnection attempts with a longer timeout
      await completer.future.timeout(Duration(seconds: 10));
      expect(disconnectCount, equals(2));
    });

    test('calls error handler on WebSocket error', () async {
      final errorCompleter = Completer<Object>();
      webSocket.onError = errorCompleter.complete;

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      final testError = Exception('Test error');
      mockChannel.addError(testError);

      final error = await errorCompleter.future;
      expect(error, equals(testError));
    });

    test('handles table subscription', () async {
      const tableId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      final event = {
        'type': 'table_updated',
        'table_id': tableId,
        'table': {'id': tableId, 'name': 'Updated Table'},
        'workspace_id': 1,
        'page': 'test',
      };
      mockChannel.add(json.encode(event));

      final receivedEvent = await subscription.first;
      expect(receivedEvent, isA<BaserowTableEvent>());
      expect(receivedEvent.type, equals('table_updated'));
      expect((receivedEvent as BaserowTableEvent).tableId, equals(tableId));
    });

    test('handles workspace subscription', () async {
      const workspaceId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToWorkspace(workspaceId);
      expect(subscription, isNotNull);

      final event = {
        'type': 'workspace_updated',
        'workspace_id': workspaceId,
        'workspace': {'id': workspaceId, 'name': 'Updated Workspace'},
        'page': 'test',
      };
      mockChannel.add(json.encode(event));

      final receivedEvent = await subscription.first;
      expect(receivedEvent, isA<BaserowWorkspaceEvent>());
      expect(receivedEvent.type, equals('workspace_updated'));
      expect((receivedEvent as BaserowWorkspaceEvent).workspaceId,
          equals(workspaceId));
    });

    test('handles application subscription', () async {
      const applicationId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToApplication(applicationId);
      expect(subscription, isNotNull);

      final event = {
        'type': 'application_updated',
        'application_id': applicationId,
        'application': {'id': applicationId, 'name': 'Updated Application'},
        'workspace_id': 1,
        'page': 'test',
      };
      mockChannel.add(json.encode(event));

      final receivedEvent = await subscription.first;
      expect(receivedEvent, isA<BaserowApplicationEvent>());
      expect(receivedEvent.type, equals('application_updated'));
      expect((receivedEvent as BaserowApplicationEvent).applicationId,
          equals(applicationId));
    });

    test('handles row events', () async {
      const tableId = 1;
      const rowId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      final event = {
        'type': 'row_created',
        'table_id': tableId,
        'row_id': rowId,
        'values': {'name': 'New Row'},
        'workspace_id': 1,
        'page': 'test',
      };
      mockChannel.add(json.encode(event));

      final receivedEvent = await subscription.first;
      expect(receivedEvent, isA<BaserowRowEvent>());
      expect(receivedEvent.type, equals('row_created'));
      expect((receivedEvent as BaserowRowEvent).rowId, equals(rowId));
      expect(receivedEvent.tableId, equals(tableId));
    });

    test('handles field events', () async {
      const tableId = 1;
      const fieldId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      expect(subscription, isNotNull);

      final event = {
        'type': 'field_created',
        'table_id': tableId,
        'field_id': fieldId,
        'field': {'id': fieldId, 'name': 'New Field', 'type': 'text'},
        'workspace_id': 1,
        'page': 'test',
      };
      mockChannel.add(json.encode(event));

      final receivedEvent = await subscription.first;
      expect(receivedEvent, isA<BaserowFieldEvent>());
      expect(receivedEvent.type, equals('field_created'));
      expect((receivedEvent as BaserowFieldEvent).fieldId, equals(fieldId));
      expect(receivedEvent.tableId, equals(tableId));
    });

    test('handles unsubscribe from table', () async {
      const tableId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToTable(tableId);
      await webSocket.unsubscribeFromTable(tableId);
      await pumpEventQueue();

      var isDone = false;
      await subscription.isEmpty.then((_) => isDone = true);
      expect(isDone, isTrue);
    });

    test('handles unsubscribe from workspace', () async {
      const workspaceId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToWorkspace(workspaceId);
      await webSocket.unsubscribeFromWorkspace(workspaceId);
      await pumpEventQueue();

      var isDone = false;
      await subscription.isEmpty.then((_) => isDone = true);
      expect(isDone, isTrue);
    });

    test('handles unsubscribe from application', () async {
      const applicationId = 1;
      await webSocket.connect();

      final subscription = webSocket.subscribeToApplication(applicationId);
      await webSocket.unsubscribeFromApplication(applicationId);
      await pumpEventQueue();

      var isDone = false;
      await subscription.isEmpty.then((_) => isDone = true);
      expect(isDone, isTrue);
    });

    test('handles connection errors', () async {
      final errorCompleter = Completer<void>();
      webSocket.onError = (_) => errorCompleter.complete();

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      mockChannel.addError(Exception('Connection error'));
      await errorCompleter.future;
      await pumpEventQueue();

      expect(webSocket.isConnected, isFalse);
    });

    test('handles disconnection', () async {
      final disconnectCompleter = Completer<void>();
      webSocket.onDisconnect = disconnectCompleter.complete;

      await webSocket.connect();
      expect(webSocket.isConnected, isTrue);

      mockChannel.close();
      await disconnectCompleter.future;
      await pumpEventQueue();

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

      // Set up listeners and track their done status
      final doneCompleters = <Completer<void>>[];
      final subscriptions = <StreamSubscription>[];

      for (final stream in [
        tableSubscription,
        workspaceSubscription,
        applicationSubscription
      ]) {
        final completer = Completer<void>();
        final subscription = stream.listen(
          null,
          onDone: () {
            if (!completer.isCompleted) completer.complete();
          },
        );
        doneCompleters.add(completer);
        subscriptions.add(subscription);
      }

      // Close the connection which should trigger all subscriptions to close
      await webSocket.close();
      await pumpEventQueue();

      // Wait for all subscriptions to be done with a reasonable timeout
      await Future.wait(
        doneCompleters.map((c) => c.future),
      ).timeout(Duration(seconds: 1));

      // Clean up subscriptions
      await Future.wait(subscriptions.map((s) => s.cancel()));
    });

    test('throws StateError when subscribing without connection', () {
      expect(() => webSocket.subscribeToTable(1), throwsStateError);
      expect(() => webSocket.subscribeToWorkspace(1), throwsStateError);
      expect(() => webSocket.subscribeToApplication(1), throwsStateError);
    });
  });
}
