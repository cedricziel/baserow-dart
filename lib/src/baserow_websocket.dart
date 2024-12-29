import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Types of WebSocket messages that can be sent to the server
enum BaserowWebSocketMessageType {
  subscribe,
  unsubscribe,
}

/// Types of events that can be received from the server
enum BaserowEventType {
  // Page events
  pageAdd,
  pageUpdate,
  pageDelete,

  // Workspace events
  workspaceCreate,
  workspaceUpdate,
  workspaceDelete,

  // Application events
  applicationCreate,
  applicationUpdate,
  applicationDelete,

  // Database events
  databaseCreate,
  databaseUpdate,
  databaseDelete,

  // Table events
  tableCreate,
  tableUpdate,
  tableDelete,

  // Field events
  fieldCreate,
  fieldUpdate,
  fieldDelete,

  // Row events
  rowCreate,
  rowUpdate,
  rowDelete,
}

/// Base class for all WebSocket messages
class BaserowWebSocketMessage {
  final String type;
  final Map<String, dynamic> data;

  BaserowWebSocketMessage({
    required this.type,
    required this.data,
  });

  Map<String, dynamic> toJson() => {
        'type': type,
        'data': data,
      };
}

/// Base class for all Baserow events
abstract class BaserowEvent {
  final String type;
  final int? workspaceId;
  final String? page;

  BaserowEvent({
    required this.type,
    this.workspaceId,
    this.page,
  });

  Map<String, dynamic> toJson();

  factory BaserowEvent.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    // Determine the concrete event type based on the type field
    switch (type) {
      case 'page_add':
      case 'page_update':
      case 'page_delete':
        return BaserowPageEvent.fromJson(json);
      case 'workspace_created':
      case 'workspace_updated':
      case 'workspace_deleted':
        return BaserowWorkspaceEvent.fromJson(json);
      case 'application_created':
      case 'application_updated':
      case 'application_deleted':
        return BaserowApplicationEvent.fromJson(json);
      case 'database_created':
      case 'database_updated':
      case 'database_deleted':
        return BaserowDatabaseEvent.fromJson(json);
      case 'table_created':
      case 'table_updated':
      case 'table_deleted':
        return BaserowTableEvent.fromJson(json);
      case 'field_created':
      case 'field_updated':
      case 'field_deleted':
        return BaserowFieldEvent.fromJson(json);
      case 'row_created':
      case 'row_updated':
      case 'row_deleted':
        return BaserowRowEvent.fromJson(json);
      default:
        throw FormatException('Unknown event type: $type');
    }
  }
}

/// Represents a page event
class BaserowPageEvent extends BaserowEvent {
  final Map<String, dynamic> pageData;

  BaserowPageEvent({
    required String type,
    required this.pageData,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowPageEvent.fromJson(Map<String, dynamic> json) =>
      BaserowPageEvent(
        type: json['type'] as String,
        pageData: json['page'] as Map<String, dynamic>,
        workspaceId: json['workspace_id'] as int?,
        page: json['page_name'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'page': pageData,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page_name': page,
      };
}

/// Represents a workspace event
class BaserowWorkspaceEvent extends BaserowEvent {
  final int workspaceId;
  final Map<String, dynamic> workspace;

  BaserowWorkspaceEvent({
    required String type,
    required this.workspaceId,
    required this.workspace,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowWorkspaceEvent.fromJson(Map<String, dynamic> json) =>
      BaserowWorkspaceEvent(
        type: json['type'] as String,
        workspaceId: json['workspace_id'] as int,
        workspace: json['workspace'] as Map<String, dynamic>,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'workspace_id': workspaceId,
        'workspace': workspace,
        if (page != null) 'page': page,
      };
}

/// Represents an application event
class BaserowApplicationEvent extends BaserowEvent {
  final int applicationId;
  final Map<String, dynamic> application;

  BaserowApplicationEvent({
    required String type,
    required this.applicationId,
    required this.application,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowApplicationEvent.fromJson(Map<String, dynamic> json) =>
      BaserowApplicationEvent(
        type: json['type'] as String,
        applicationId: json['application_id'] as int,
        application: json['application'] as Map<String, dynamic>,
        workspaceId: json['workspace_id'] as int?,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'application_id': applicationId,
        'application': application,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page': page,
      };
}

/// Represents a database event
class BaserowDatabaseEvent extends BaserowEvent {
  final int databaseId;
  final Map<String, dynamic> database;

  BaserowDatabaseEvent({
    required String type,
    required this.databaseId,
    required this.database,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowDatabaseEvent.fromJson(Map<String, dynamic> json) =>
      BaserowDatabaseEvent(
        type: json['type'] as String,
        databaseId: json['database_id'] as int,
        database: json['database'] as Map<String, dynamic>,
        workspaceId: json['workspace_id'] as int?,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'database_id': databaseId,
        'database': database,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page': page,
      };
}

/// Represents a table event
class BaserowTableEvent extends BaserowEvent {
  final int tableId;
  final Map<String, dynamic> table;

  BaserowTableEvent({
    required String type,
    required this.tableId,
    required this.table,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowTableEvent.fromJson(Map<String, dynamic> json) =>
      BaserowTableEvent(
        type: json['type'] as String,
        tableId: json['table_id'] as int,
        table: json['table'] as Map<String, dynamic>,
        workspaceId: json['workspace_id'] as int?,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'table_id': tableId,
        'table': table,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page': page,
      };
}

/// Represents a field event
class BaserowFieldEvent extends BaserowEvent {
  final int fieldId;
  final Map<String, dynamic> field;
  final int tableId;

  BaserowFieldEvent({
    required String type,
    required this.fieldId,
    required this.field,
    required this.tableId,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowFieldEvent.fromJson(Map<String, dynamic> json) =>
      BaserowFieldEvent(
        type: json['type'] as String,
        fieldId: json['field_id'] as int,
        field: json['field'] as Map<String, dynamic>,
        tableId: json['table_id'] as int,
        workspaceId: json['workspace_id'] as int?,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'field_id': fieldId,
        'field': field,
        'table_id': tableId,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page': page,
      };
}

/// Represents a row event
class BaserowRowEvent extends BaserowEvent {
  final int tableId;
  final int rowId;
  final Map<String, dynamic>? values;

  BaserowRowEvent({
    required String type,
    required this.tableId,
    required this.rowId,
    this.values,
    int? workspaceId,
    String? page,
  }) : super(type: type, workspaceId: workspaceId, page: page);

  factory BaserowRowEvent.fromJson(Map<String, dynamic> json) =>
      BaserowRowEvent(
        type: json['type'] as String,
        tableId: json['table_id'] as int,
        rowId: json['row_id'] as int,
        values: json['values'] as Map<String, dynamic>?,
        workspaceId: json['workspace_id'] as int?,
        page: json['page'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'table_id': tableId,
        'row_id': rowId,
        if (values != null) 'values': values,
        if (workspaceId != null) 'workspace_id': workspaceId,
        if (page != null) 'page': page,
      };
}

/// Callback type for handling Baserow events
typedef BaserowEventCallback = void Function(BaserowEvent event);

/// WebSocket client for Baserow real-time updates
class BaserowWebSocket {
  final String baseUrl;
  final String? token;
  WebSocketChannel? _channel;
  final Future<WebSocketChannel> Function(Uri uri)? _channelFactory;
  StreamSubscription? _channelSubscription;
  final _tableSubscriptions = <int, StreamController<BaserowEvent>>{};
  final _workspaceSubscriptions = <int, StreamController<BaserowEvent>>{};
  final _applicationSubscriptions = <int, StreamController<BaserowEvent>>{};
  bool _isConnected = false;

  BaserowWebSocket({
    required this.baseUrl,
    this.token,
    Future<WebSocketChannel> Function(Uri uri)? channelFactory,
  }) : _channelFactory = channelFactory;

  /// Error handler for WebSocket errors
  void Function(Object error)? onError;

  /// Handler for WebSocket disconnections
  void Function()? onDisconnect;

  /// Maximum number of reconnection attempts
  static const int _maxReconnectAttempts = 5;

  /// Delay between reconnection attempts in milliseconds
  static const int _reconnectDelay = 1000;

  /// Timeout for initial connection in milliseconds
  static const int _connectionTimeout = 5000;

  /// Current number of reconnection attempts
  int _reconnectAttempts = 0;

  /// Timer for reconnection attempts
  Timer? _reconnectTimer;

  /// Connects to the Baserow WebSocket server
  Future<void> connect() async {
    if (_isConnected) return;

    final wsUrl = baseUrl.replaceFirst(RegExp(r'^http'), 'ws');
    var uri = Uri.parse('$wsUrl/ws/core/');

    if (token != null) {
      uri = uri.replace(queryParameters: {'token': token});
    }

    try {
      // Create a completer to handle the connection timeout
      final completer = Completer<void>();
      Timer? timeoutTimer;

      // Set up the timeout
      timeoutTimer = Timer(Duration(milliseconds: _connectionTimeout), () {
        if (!completer.isCompleted) {
          completer
              .completeError(TimeoutException('WebSocket connection timeout'));
        }
      });

      // Attempt to connect using the provided factory or default WebSocketChannel.connect
      _channel =
          await (_channelFactory?.call(uri) ?? WebSocketChannel.connect(uri));
      _isConnected = true;

      // Wait for the first message or error to confirm connection
      _channelSubscription = _channel!.stream.listen(
        (message) {
          if (!completer.isCompleted) {
            timeoutTimer?.cancel();
            completer.complete();
          }

          final data = json.decode(message as String) as Map<String, dynamic>;
          final type = data['type'] as String;

          // Skip processing for connection_established message
          if (type == 'connection_established') {
            return;
          }

          final event = BaserowEvent.fromJson(data);

          // Forward the event to the appropriate subscription stream based on event type
          if (event is BaserowRowEvent ||
              event is BaserowTableEvent ||
              event is BaserowFieldEvent) {
            final tableId = event is BaserowRowEvent
                ? event.tableId
                : event is BaserowTableEvent
                    ? event.tableId
                    : (event as BaserowFieldEvent).tableId;
            final subscription = _tableSubscriptions[tableId];
            if (subscription != null) {
              subscription.add(event);
            }
          }

          if (event.workspaceId != null) {
            final subscription = _workspaceSubscriptions[event.workspaceId];
            if (subscription != null) {
              subscription.add(event);
            }
          }

          if (event is BaserowApplicationEvent) {
            final subscription = _applicationSubscriptions[event.applicationId];
            if (subscription != null) {
              subscription.add(event);
            }
          }
        },
        onError: (error) {
          if (!completer.isCompleted) {
            timeoutTimer?.cancel();
            completer.completeError(error);
          }
          onError?.call(error);
          _handleDisconnect();
          _attemptReconnect();
        },
        onDone: () {
          if (!completer.isCompleted) {
            timeoutTimer?.cancel();
            completer.complete();
          }
          onDisconnect?.call();
          _handleDisconnect();
          _attemptReconnect();
        },
      );

      // Wait for the connection to be established or timeout
      await completer.future;
      _reconnectAttempts =
          0; // Reset reconnection attempts on successful connection
    } catch (e) {
      _handleDisconnect();
      rethrow;
    }
  }

  /// Attempts to reconnect to the WebSocket server
  void _attemptReconnect() {
    if (_reconnectAttempts >= _maxReconnectAttempts || _isConnected) return;

    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(
      Duration(milliseconds: _reconnectDelay * (_reconnectAttempts + 1)),
      () async {
        _reconnectAttempts++;
        try {
          await connect();
        } catch (e) {
          // If reconnection fails, try again
          _attemptReconnect();
        }
      },
    );
  }

  /// Subscribes to updates for a specific table
  Stream<BaserowEvent> subscribeToTable(int tableId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    // Create a new subscription if one doesn't exist
    if (!_tableSubscriptions.containsKey(tableId)) {
      final controller = StreamController<BaserowEvent>.broadcast();
      _tableSubscriptions[tableId] = controller;

      // Send subscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.subscribe.name,
        data: {'table_id': tableId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
    }

    return _tableSubscriptions[tableId]!.stream;
  }

  /// Subscribes to updates for a specific workspace
  Stream<BaserowEvent> subscribeToWorkspace(int workspaceId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    // Create a new subscription if one doesn't exist
    if (!_workspaceSubscriptions.containsKey(workspaceId)) {
      final controller = StreamController<BaserowEvent>.broadcast();
      _workspaceSubscriptions[workspaceId] = controller;

      // Send subscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.subscribe.name,
        data: {'workspace_id': workspaceId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
    }

    return _workspaceSubscriptions[workspaceId]!.stream;
  }

  /// Subscribes to updates for a specific application
  Stream<BaserowEvent> subscribeToApplication(int applicationId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    // Create a new subscription if one doesn't exist
    if (!_applicationSubscriptions.containsKey(applicationId)) {
      final controller = StreamController<BaserowEvent>.broadcast();
      _applicationSubscriptions[applicationId] = controller;

      // Send subscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.subscribe.name,
        data: {'application_id': applicationId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
    }

    return _applicationSubscriptions[applicationId]!.stream;
  }

  /// Unsubscribes from updates for a specific table
  Future<void> unsubscribeFromTable(int tableId) async {
    if (!_isConnected) return;

    final subscription = _tableSubscriptions.remove(tableId);
    if (subscription != null) {
      // Send unsubscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.unsubscribe.name,
        data: {'table_id': tableId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
      await subscription.close();
      // Ensure all listeners are removed and the stream is closed
      await subscription.stream.drain();
    }
  }

  /// Unsubscribes from updates for a specific workspace
  Future<void> unsubscribeFromWorkspace(int workspaceId) async {
    if (!_isConnected) return;

    final subscription = _workspaceSubscriptions.remove(workspaceId);
    if (subscription != null) {
      // Send unsubscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.unsubscribe.name,
        data: {'workspace_id': workspaceId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
      await subscription.close();
      await subscription.stream.drain();
    }
  }

  /// Unsubscribes from updates for a specific application
  Future<void> unsubscribeFromApplication(int applicationId) async {
    if (!_isConnected) return;

    final subscription = _applicationSubscriptions.remove(applicationId);
    if (subscription != null) {
      // Send unsubscribe message
      final message = BaserowWebSocketMessage(
        type: BaserowWebSocketMessageType.unsubscribe.name,
        data: {'application_id': applicationId},
      );
      _channel!.sink.add(json.encode(message.toJson()));
      await subscription.close();
      await subscription.stream.drain();
    }
  }

  /// Handles WebSocket disconnection
  Future<void> _handleDisconnect() async {
    _isConnected = false;
    _channelSubscription?.cancel();
    _channelSubscription = null;
    _channel?.sink.close();
    _channel = null;

    // Close all subscription controllers directly
    await Future.wait([
      ..._tableSubscriptions.values.map((controller) => controller.close()),
      ..._workspaceSubscriptions.values.map((controller) => controller.close()),
      ..._applicationSubscriptions.values
          .map((controller) => controller.close()),
    ]);

    // Clear all subscriptions
    _tableSubscriptions.clear();
    _workspaceSubscriptions.clear();
    _applicationSubscriptions.clear();
  }

  /// Closes the WebSocket connection
  Future<void> close() async {
    _reconnectTimer?.cancel();
    if (!_isConnected) return;
    await _handleDisconnect();
  }

  /// Checks if the WebSocket is connected
  bool get isConnected => _isConnected;
}
