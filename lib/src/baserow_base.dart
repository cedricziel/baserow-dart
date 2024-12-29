import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

/// The main configuration class for the Baserow client.
class BaserowConfig {
  /// The base URL of the Baserow instance
  final String baseUrl;

  /// Optional API token for authentication
  final String? token;

  const BaserowConfig({
    required this.baseUrl,
    this.token,
  });
}

/// The main Baserow client class for interacting with the Baserow API.
class BaserowClient {
  final BaserowConfig config;
  final http.Client _httpClient;

  BaserowClient({
    required this.config,
  }) : _httpClient = http.Client();

  /// Creates headers for API requests including authentication if available
  Map<String, String> _createHeaders() {
    final headers = {
      'Content-Type': 'application/json',
    };

    if (config.token != null) {
      headers['Authorization'] = 'Token ${config.token}';
    }

    return headers;
  }

  /// Performs a GET request to the Baserow API
  Future<Map<String, dynamic>> get(String path) async {
    final url = Uri.parse('${config.baseUrl}/api/$path');
    final response = await _httpClient.get(
      url,
      headers: _createHeaders(),
    );

    if (response.statusCode != 200) {
      throw BaserowException(
        'Failed to perform GET request: ${response.statusCode}',
        response.statusCode,
      );
    }

    return json.decode(response.body) as Map<String, dynamic>;
  }

  /// Performs a POST request to the Baserow API
  Future<Map<String, dynamic>> post(String path, Map<String, dynamic> data) async {
    final url = Uri.parse('${config.baseUrl}/api/$path');
    final response = await _httpClient.post(
      url,
      headers: _createHeaders(),
      body: json.encode(data),
    );

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw BaserowException(
        'Failed to perform POST request: ${response.statusCode}',
        response.statusCode,
      );
    }

    return json.decode(response.body) as Map<String, dynamic>;
  }

  /// Performs a PATCH request to the Baserow API
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data) async {
    final url = Uri.parse('${config.baseUrl}/api/$path');
    final response = await _httpClient.patch(
      url,
      headers: _createHeaders(),
      body: json.encode(data),
    );

    if (response.statusCode != 200) {
      throw BaserowException(
        'Failed to perform PATCH request: ${response.statusCode}',
        response.statusCode,
      );
    }

    return json.decode(response.body) as Map<String, dynamic>;
  }

  /// Performs a DELETE request to the Baserow API
  Future<void> delete(String path) async {
    final url = Uri.parse('${config.baseUrl}/api/$path');
    final response = await _httpClient.delete(
      url,
      headers: _createHeaders(),
    );

    if (response.statusCode != 204) {
      throw BaserowException(
        'Failed to perform DELETE request: ${response.statusCode}',
        response.statusCode,
      );
    }
  }

  /// Lists all databases accessible to the authenticated user
  Future<List<Database>> listDatabases() async {
    final response = await get('applications/');
    final List<dynamic> data = response['applications'] as List<dynamic>;

    return data
        .where((app) => app['type'] == 'database')
        .map((db) => Database.fromJson(db as Map<String, dynamic>))
        .toList();
  }

  /// Lists all tables in a database
  Future<List<Table>> listTables(int databaseId) async {
    final response = await get('database/$databaseId/tables/');
    final List<dynamic> data = response['tables'] as List<dynamic>;

    return data
        .map((table) => Table.fromJson(table as Map<String, dynamic>))
        .toList();
  }

  /// Lists all rows in a table
  Future<List<Map<String, dynamic>>> listRows(int tableId) async {
    final response = await get('database/rows/table/$tableId/');
    final List<dynamic> data = response['results'] as List<dynamic>;

    return data.cast<Map<String, dynamic>>();
  }

  /// Creates a new row in a table
  Future<Map<String, dynamic>> createRow(
    int tableId,
    Map<String, dynamic> fields,
  ) async {
    return post('database/rows/table/$tableId/', {'fields': fields});
  }

  /// Updates an existing row in a table
  Future<Map<String, dynamic>> updateRow(
    int tableId,
    int rowId,
    Map<String, dynamic> fields,
  ) async {
    return patch(
      'database/rows/table/$tableId/$rowId/',
      {'fields': fields},
    );
  }

  /// Deletes a row from a table
  Future<void> deleteRow(int tableId, int rowId) async {
    await delete('database/rows/table/$tableId/$rowId/');
  }

  /// Closes the HTTP client
  void close() {
    _httpClient.close();
  }
}

/// Represents a Baserow database
@JsonSerializable()
class Database {
  final int id;
  final String name;
  final String type;

  Database({
    required this.id,
    required this.name,
    required this.type,
  });

  factory Database.fromJson(Map<String, dynamic> json) => Database(
        id: json['id'] as int,
        name: json['name'] as String,
        type: json['type'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
      };
}

/// Represents a table within a Baserow database
@JsonSerializable()
class Table {
  final int id;
  final String name;
  final int order;
  final List<Field> fields;

  Table({
    required this.id,
    required this.name,
    required this.order,
    required this.fields,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        id: json['id'] as int,
        name: json['name'] as String,
        order: json['order'] as int,
        fields: (json['fields'] as List<dynamic>)
            .map((field) => Field.fromJson(field as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'order': order,
        'fields': fields.map((field) => field.toJson()).toList(),
      };
}

/// Represents a field within a Baserow table
@JsonSerializable()
class Field {
  final int id;
  final String name;
  final String type;
  final int order;
  final bool primary;

  Field({
    required this.id,
    required this.name,
    required this.type,
    required this.order,
    required this.primary,
  });

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        id: json['id'] as int,
        name: json['name'] as String,
        type: json['type'] as String,
        order: json['order'] as int,
        primary: json['primary'] as bool,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'order': order,
        'primary': primary,
      };
}

/// Custom exception for Baserow API errors
class BaserowException implements Exception {
  final String message;
  final int statusCode;

  BaserowException(this.message, this.statusCode);

  @override
  String toString() => 'BaserowException: $message (Status Code: $statusCode)';
}
