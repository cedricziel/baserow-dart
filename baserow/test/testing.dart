import 'dart:async';
import 'dart:convert';

import 'package:mockito/mockito.dart';
import 'package:baserow/baserow.dart';

/// A collection of test utilities for the Baserow SDK.
///
/// This class provides mock implementations and helper methods to make testing
/// applications that use the Baserow SDK easier.
class BaserowTestUtils {
  /// Creates a mock [BaserowClient] with pre-configured responses.
  ///
  /// Example:
  /// ```dart
  /// final mockClient = BaserowTestUtils.createMockClient();
  /// when(mockClient.listRows(1)).thenAnswer((_) async => RowsResponse(...));
  /// ```
  static BaserowClient createMockClient() {
    return MockBaserowClient();
  }

  /// Creates a mock [BaserowWebSocket] for testing real-time functionality.
  ///
  /// Example:
  /// ```dart
  /// final mockWebSocket = BaserowTestUtils.createMockWebSocket();
  /// mockWebSocket.emitTableEvent(1, 'row_created', {'id': 1, 'name': 'Test'});
  /// ```
  static MockBaserowWebSocket createMockWebSocket() {
    return MockBaserowWebSocket();
  }
}

/// A mock implementation of [BaserowClient] for testing.
class MockBaserowClient extends Mock implements BaserowClient {}

/// A mock implementation of [BaserowWebSocket] for testing real-time functionality.
class MockBaserowWebSocket extends BaserowWebSocket {
  final StreamController<dynamic> _controller =
      StreamController<dynamic>.broadcast();
  bool _isConnected = false;

  MockBaserowWebSocket()
      : super(baseUrl: 'mock://baserow', token: 'mock-token');

  @override
  bool get isConnected => _isConnected;

  @override
  Future<void> connect() async {
    _isConnected = true;
  }

  @override
  Future<void> close() async {
    _isConnected = false;
    await _controller.close();
  }

  /// Emits a table event to all subscribers.
  void emitTableEvent(int tableId, String type, Map<String, dynamic> data) {
    if (!_isConnected) return;

    final event = {
      'type': type,
      'table_id': tableId,
      ...data,
    };
    _controller.add(json.encode(event));
  }

  /// Emits a workspace event to all subscribers.
  void emitWorkspaceEvent(
      int workspaceId, String type, Map<String, dynamic> data) {
    if (!_isConnected) return;

    final event = {
      'type': type,
      'workspace_id': workspaceId,
      ...data,
    };
    _controller.add(json.encode(event));
  }

  /// Emits an application event to all subscribers.
  void emitApplicationEvent(
      int applicationId, String type, Map<String, dynamic> data) {
    if (!_isConnected) return;

    final event = {
      'type': type,
      'application_id': applicationId,
      ...data,
    };
    _controller.add(json.encode(event));
  }

  /// Simulates a WebSocket error.
  void emitError(dynamic error) {
    if (!_isConnected) return;
    _controller.addError(error);
  }

  @override
  Stream<BaserowTableEvent> subscribeToTable(int tableId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    return _controller.stream.where((event) {
      final decoded = json.decode(event as String);
      return decoded['table_id'] == tableId;
    }).map((event) => BaserowTableEvent.fromJson(json.decode(event as String)));
  }

  @override
  Stream<BaserowWorkspaceEvent> subscribeToWorkspace(int workspaceId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    return _controller.stream.where((event) {
      final decoded = json.decode(event as String);
      return decoded['workspace_id'] == workspaceId;
    }).map((event) =>
        BaserowWorkspaceEvent.fromJson(json.decode(event as String)));
  }

  @override
  Stream<BaserowApplicationEvent> subscribeToApplication(int applicationId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    return _controller.stream.where((event) {
      final decoded = json.decode(event as String);
      return decoded['application_id'] == applicationId;
    }).map((event) =>
        BaserowApplicationEvent.fromJson(json.decode(event as String)));
  }
}
