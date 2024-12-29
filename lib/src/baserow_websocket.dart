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
  rowCreated,
  rowUpdated,
  rowDeleted,
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

/// Represents a subscription request message
class BaserowSubscribeMessage extends BaserowWebSocketMessage {
  final int tableId;

  BaserowSubscribeMessage({
    required this.tableId,
  }) : super(
          type: BaserowWebSocketMessageType.subscribe.name,
          data: {
            'table_id': tableId,
          },
        );
}

/// Represents an unsubscribe request message
class BaserowUnsubscribeMessage extends BaserowWebSocketMessage {
  final int tableId;

  BaserowUnsubscribeMessage({
    required this.tableId,
  }) : super(
          type: BaserowWebSocketMessageType.unsubscribe.name,
          data: {
            'table_id': tableId,
          },
        );
}

/// Represents a row event received from the server
class BaserowRowEvent {
  final String type;
  final int tableId;
  final int rowId;
  final Map<String, dynamic>? values;

  BaserowRowEvent({
    required this.type,
    required this.tableId,
    required this.rowId,
    this.values,
  });

  factory BaserowRowEvent.fromJson(Map<String, dynamic> json) =>
      BaserowRowEvent(
        type: json['type'] as String,
        tableId: json['table_id'] as int,
        rowId: json['row_id'] as int,
        values: json['values'] as Map<String, dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'table_id': tableId,
        'row_id': rowId,
        if (values != null) 'values': values,
      };
}

/// Callback type for handling row events
typedef BaserowRowEventCallback = void Function(BaserowRowEvent event);

/// WebSocket client for Baserow real-time updates
class BaserowWebSocket {
  final String baseUrl;
  final String? token;
  WebSocketChannel? _channel;
  final _subscriptions = <int, StreamController<BaserowRowEvent>>{};
  bool _isConnected = false;

  BaserowWebSocket({
    required this.baseUrl,
    this.token,
  });

  /// Connects to the Baserow WebSocket server
  Future<void> connect() async {
    if (_isConnected) return;

    final wsUrl = baseUrl.replaceFirst(RegExp(r'^http'), 'ws');
    var uri = Uri.parse('$wsUrl/ws/core/');

    if (token != null) {
      uri = uri.replace(queryParameters: {'token': token});
    }

    _channel = WebSocketChannel.connect(uri);
    _isConnected = true;

    // Listen for incoming messages
    _channel!.stream.listen(
      (message) {
        final data = json.decode(message as String) as Map<String, dynamic>;
        final event = BaserowRowEvent.fromJson(data);

        // Forward the event to the appropriate subscription stream
        final subscription = _subscriptions[event.tableId];
        if (subscription != null) {
          subscription.add(event);
        }
      },
      onError: (error) {
        print('WebSocket error: $error');
        _handleDisconnect();
      },
      onDone: () {
        print('WebSocket connection closed');
        _handleDisconnect();
      },
    );
  }

  /// Subscribes to updates for a specific table
  Stream<BaserowRowEvent> subscribeToTable(int tableId) {
    if (!_isConnected) {
      throw StateError('WebSocket is not connected');
    }

    // Create a new subscription if one doesn't exist
    if (!_subscriptions.containsKey(tableId)) {
      final controller = StreamController<BaserowRowEvent>.broadcast();
      _subscriptions[tableId] = controller;

      // Send subscribe message
      final message = BaserowSubscribeMessage(tableId: tableId);
      _channel!.sink.add(json.encode(message.toJson()));
    }

    return _subscriptions[tableId]!.stream;
  }

  /// Unsubscribes from updates for a specific table
  void unsubscribeFromTable(int tableId) {
    if (!_isConnected) return;

    final subscription = _subscriptions.remove(tableId);
    if (subscription != null) {
      // Send unsubscribe message
      final message = BaserowUnsubscribeMessage(tableId: tableId);
      _channel!.sink.add(json.encode(message.toJson()));
      subscription.close();
    }
  }

  /// Handles WebSocket disconnection
  void _handleDisconnect() {
    _isConnected = false;
    _channel?.sink.close();
    _channel = null;

    // Close all subscription controllers
    for (final controller in _subscriptions.values) {
      controller.close();
    }
    _subscriptions.clear();
  }

  /// Closes the WebSocket connection
  void close() {
    if (!_isConnected) return;

    // Unsubscribe from all tables
    for (final tableId in _subscriptions.keys.toList()) {
      unsubscribeFromTable(tableId);
    }

    _handleDisconnect();
  }

  /// Checks if the WebSocket is connected
  bool get isConnected => _isConnected;
}
