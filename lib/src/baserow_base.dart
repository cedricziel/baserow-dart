import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'baserow_base.g.dart';

/// Authentication type for Baserow
enum BaserowAuthType {
  /// Traditional token-based authentication
  token,

  /// JWT-based authentication
  jwt
}

/// The main configuration class for the Baserow client.
class BaserowConfig {
  /// The base URL of the Baserow instance
  final String baseUrl;

  /// Optional API token for authentication
  final String? token;

  /// The type of authentication to use
  final BaserowAuthType authType;

  const BaserowConfig({
    required this.baseUrl,
    this.token,
    this.authType = BaserowAuthType.token,
  });
}

/// Response from login attempt
class AuthResponse {
  final String token;
  final String refreshToken;
  final Map<String, dynamic> user;

  AuthResponse({
    required this.token,
    required this.refreshToken,
    required this.user,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        token: json['token'] as String,
        refreshToken: json['refresh_token'] as String,
        user: json['user'] as Map<String, dynamic>,
      );
}

/// Filter operator for querying rows
enum FilterOperator {
  equal,
  notEqual,
  greaterThan,
  greaterThanOrEqual,
  lessThan,
  lessThanOrEqual,
  contains,
  containsNot,
  hasFileType,
  isEmpty,
  isNotEmpty,
}

/// Represents a filter condition for querying rows
class RowFilter {
  final String field;
  final FilterOperator operator;
  final dynamic value;

  const RowFilter({
    required this.field,
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toJson() {
    final operatorStr = switch (operator) {
      FilterOperator.equal => 'equal',
      FilterOperator.notEqual => 'not_equal',
      FilterOperator.greaterThan => 'greater_than',
      FilterOperator.greaterThanOrEqual => 'greater_than_or_equal',
      FilterOperator.lessThan => 'less_than',
      FilterOperator.lessThanOrEqual => 'less_than_or_equal',
      FilterOperator.contains => 'contains',
      FilterOperator.containsNot => 'contains_not',
      FilterOperator.hasFileType => 'has_file_type',
      FilterOperator.isEmpty => 'empty',
      FilterOperator.isNotEmpty => 'not_empty',
    };

    return {
      'field': field,
      'type': operatorStr,
      if (value != null) 'value': value,
    };
  }
}

/// Options for listing rows
class ListRowsOptions {
  /// The page number to fetch (1-based)
  final int? page;

  /// The number of rows per page
  final int? size;

  /// The field to order by
  final String? orderBy;

  /// Whether to order in descending order
  final bool? descending;

  /// Filters to apply
  final List<RowFilter>? filters;

  /// Whether to include field metadata
  final bool includeFieldMetadata;

  /// Optional view ID to scope the request to a particular view
  final int? viewId;

  /// Whether to use human-readable field names instead of field_123 format
  final bool userFieldNames;

  const ListRowsOptions({
    this.page,
    this.size,
    this.orderBy,
    this.descending,
    this.filters,
    this.includeFieldMetadata = false,
    this.viewId,
    this.userFieldNames = false,
  });

  Map<String, dynamic> toQueryParameters() {
    return {
      if (page != null) 'page': page.toString(),
      if (size != null) 'size': size.toString(),
      if (orderBy != null)
        'order_by': descending == true ? '-$orderBy' : orderBy,
      if (filters != null && filters!.isNotEmpty)
        'filters': jsonEncode(filters!.map((f) => f.toJson()).toList()),
      if (includeFieldMetadata) 'include': 'field_metadata',
      if (viewId != null) 'view_id': viewId.toString(),
      if (userFieldNames) 'user_field_names': 'true',
    };
  }
}

/// Response from listing rows
class RowsResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<Row> results;

  RowsResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory RowsResponse.fromJson(Map<String, dynamic> json) => RowsResponse(
        count: json['count'] as int,
        next: json['next'] as String?,
        previous: json['previous'] as String?,
        results: (json['results'] as List<dynamic>)
            .map((row) => Row.fromJson(row as Map<String, dynamic>))
            .toList(),
      );
}

/// Represents a row in a Baserow table
class Row {
  final int id;
  final int order;
  final Map<String, dynamic> fields;

  Row({
    required this.id,
    required this.order,
    required this.fields,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
        id: json['id'] as int,
        order: json['order'] as int,
        fields: json['fields'] as Map<String, dynamic>,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'fields': fields,
      };
}

/// The main Baserow client class for interacting with the Baserow API.
class BaserowClient {
  final BaserowConfig config;
  final http.Client _httpClient;

  BaserowClient({
    required this.config,
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  /// Creates headers for API requests including authentication if available
  Map<String, String> createHeaders() {
    final headers = {
      'Content-Type': 'application/json',
    };

    if (config.token != null) {
      final prefix = config.authType == BaserowAuthType.jwt ? 'JWT' : 'Token';
      headers['Authorization'] = '$prefix ${config.token}';
    }

    return headers;
  }

  /// Login with username and password to get JWT token
  Future<AuthResponse> login(String email, String password) async {
    final response = await post('user/token-auth/', {
      'email': email,
      'password': password,
    });

    return AuthResponse.fromJson(response);
  }

  /// Refresh JWT token
  Future<String> refreshToken(String refreshToken) async {
    final response = await post('user/token-refresh/', {
      'refresh_token': refreshToken,
    });

    return response['token'] as String;
  }

  /// Verify JWT token
  Future<bool> verifyToken(String token) async {
    try {
      await post('user/token-verify/', {
        'token': token,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Performs a GET request to the Baserow API
  Future<Map<String, dynamic>> get(String path,
      [Map<String, dynamic>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }

    final response = await _httpClient.get(
      url,
      headers: createHeaders(),
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
  Future<Map<String, dynamic>> post(String path, Map<String, dynamic> data,
      [Map<String, dynamic>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }
    final response = await _httpClient.post(
      url,
      headers: createHeaders(),
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
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data,
      [Map<String, dynamic>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }
    final response = await _httpClient.patch(
      url,
      headers: createHeaders(),
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
      headers: createHeaders(),
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

  /// Lists rows in a table with optional filtering and pagination
  Future<RowsResponse> listRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async {
    final response = await get(
      'database/rows/table/$tableId/',
      options.toQueryParameters(),
    );

    return RowsResponse.fromJson(response);
  }

  /// Creates a new row in a table
  Future<Row> createRow(
    int tableId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await post(
      'database/rows/table/$tableId/',
      {'fields': fields},
      queryParams,
    );

    return Row.fromJson(response);
  }

  /// Creates multiple rows in a table
  Future<List<Row>> createRows(
    int tableId,
    List<Map<String, dynamic>> fieldsList, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await post(
      'database/rows/table/$tableId/batch/',
      {
        'items': fieldsList.map((fields) => {'fields': fields}).toList()
      },
      queryParams,
    );

    final List<dynamic> items = response['items'] as List<dynamic>;
    return items
        .map((item) => Row.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Updates an existing row in a table
  Future<Row> updateRow(
    int tableId,
    int rowId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await patch(
      'database/rows/table/$tableId/$rowId/',
      {'fields': fields},
      queryParams,
    );

    return Row.fromJson(response);
  }

  /// Updates multiple rows in a table
  Future<List<Row>> updateRows(
    int tableId,
    Map<int, Map<String, dynamic>> updates, {
    bool userFieldNames = false,
  }) async {
    final items = updates.entries
        .map((entry) => {
              'id': entry.key,
              'fields': entry.value,
            })
        .toList();

    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await patch(
      'database/rows/table/$tableId/batch/',
      {'items': items},
      queryParams,
    );

    final List<dynamic> updatedItems = response['items'] as List<dynamic>;
    return updatedItems
        .map((item) => Row.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Deletes a row from a table
  Future<void> deleteRow(int tableId, int rowId) async {
    await delete('database/rows/table/$tableId/$rowId/');
  }

  /// Deletes multiple rows from a table
  Future<void> deleteRows(int tableId, List<int> rowIds) async {
    await post(
      'database/rows/table/$tableId/batch-delete/',
      {
        'items': rowIds.map((id) => {'id': id}).toList()
      },
    );
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

  factory Database.fromJson(Map<String, dynamic> json) =>
      _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
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

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);

  Map<String, dynamic> toJson() => _$TableToJson(this);
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

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

/// Custom exception for Baserow API errors
class BaserowException implements Exception {
  final String message;
  final int statusCode;

  BaserowException(this.message, this.statusCode);

  @override
  String toString() => 'BaserowException: $message (Status Code: $statusCode)';
}
