import 'dart:async';
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

  /// Optional refresh token for JWT authentication
  final String? refreshToken;

  /// The type of authentication to use
  final BaserowAuthType authType;

  /// Duration between JWT token refreshes (defaults to 10 minutes)
  final Duration refreshInterval;

  /// Callback when token is refreshed
  final void Function(String token, String refreshToken)? onTokenRefresh;

  const BaserowConfig({
    required this.baseUrl,
    this.token,
    this.refreshToken,
    this.authType = BaserowAuthType.token,
    this.refreshInterval = const Duration(minutes: 10),
    this.onTokenRefresh,
  });

  /// Creates a new config with updated tokens
  BaserowConfig copyWith({
    String? token,
    String? refreshToken,
  }) {
    return BaserowConfig(
      baseUrl: baseUrl,
      token: token ?? this.token,
      refreshToken: refreshToken ?? this.refreshToken,
      authType: authType,
      refreshInterval: refreshInterval,
      onTokenRefresh: onTokenRefresh,
    );
  }
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

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    final token = json['token'];
    if (token == null || token is! String) {
      throw FormatException('Missing or invalid field: token');
    }

    final refreshToken = json['refresh_token'];
    if (refreshToken == null || refreshToken is! String) {
      throw FormatException('Missing or invalid field: refresh_token');
    }

    final user = json['user'];
    if (user == null || user is! Map<String, dynamic>) {
      throw FormatException('Missing or invalid field: user');
    }

    return AuthResponse(
      token: token,
      refreshToken: refreshToken,
      user: user,
    );
  }
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

  Map<String, String> toQueryParameters() {
    final params = <String, String>{};
    if (page != null) params['page'] = page.toString();
    if (size != null) params['size'] = size.toString();
    if (orderBy != null) {
      params['order_by'] = descending == true ? '-$orderBy' : orderBy as String;
    }
    if (filters != null && filters!.isNotEmpty) {
      params['filters'] = jsonEncode(filters!.map((f) => f.toJson()).toList());
    }
    if (includeFieldMetadata) params['include'] = 'field_metadata';
    if (viewId != null) params['view_id'] = viewId.toString();
    if (userFieldNames) params['user_field_names'] = userFieldNames.toString();
    return params;
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

  factory RowsResponse.fromJson(Map<String, dynamic> json) {
    final count = json['count'];
    if (count == null) {
      throw FormatException('Missing required field: count');
    }

    final countValue =
        count is String ? int.parse(count) : (count as num).toInt();
    final next = json['next'] as String?;
    final previous = json['previous'] as String?;
    final resultsList = json['results'];
    if (resultsList == null || resultsList is! List) {
      throw FormatException('Missing or invalid field: results');
    }

    final results = resultsList.map((row) {
      if (row is! Map<String, dynamic>) {
        throw FormatException('Invalid row format in results');
      }
      return Row.fromJson(row);
    }).toList();

    return RowsResponse(
      count: countValue,
      next: next,
      previous: previous,
      results: results,
    );
  }
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

  factory Row.fromJson(Map<String, dynamic> json) {
    // Handle the order field which can be numeric or non-numeric
    var order = json['order'];
    int orderValue;
    if (order is num) {
      orderValue = order.toInt();
    } else if (order is String) {
      // Try to parse as integer, default to 0 if not possible
      try {
        orderValue = int.parse(order);
      } catch (e) {
        orderValue = 0;
      }
    } else {
      orderValue = 0;
    }

    // Extract all fields except id and order
    final fields = Map<String, dynamic>.fromEntries(
      json.entries.where((entry) => entry.key != 'id' && entry.key != 'order'),
    );

    final id = json['id'];
    if (id == null) {
      throw FormatException('Missing required field: id');
    }

    final idValue = id is String ? int.parse(id) : (id as num).toInt();

    return Row(
      id: idValue,
      order: orderValue,
      fields: fields,
    );
  }

  Map<String, dynamic> toJson() {
    // Create a new map with id and order
    final result = <String, dynamic>{
      'id': id,
      'order': order,
    };

    // Add all fields at root level, ensuring values are properly typed
    fields.forEach((key, value) {
      result[key] = value;
    });

    return result;
  }
}

/// The main Baserow client class for interacting with the Baserow API.
class BaserowClient {
  BaserowConfig config;
  final http.Client _httpClient;
  Timer? _refreshTimer;

  BaserowClient({
    required this.config,
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client() {
    _setupTokenRefresh();
  }

  void _setupTokenRefresh() {
    if (config.authType == BaserowAuthType.jwt &&
        config.token != null &&
        config.refreshToken != null) {
      _refreshTimer?.cancel();
      _refreshTimer = Timer.periodic(config.refreshInterval, (_) async {
        try {
          final newToken = await refreshToken(config.refreshToken!);
          config = config.copyWith(token: newToken);
          config.onTokenRefresh?.call(newToken, config.refreshToken!);
        } catch (e) {
          // Token refresh failed - could add error callback here if needed
        }
      });
    }
  }

  /// Creates headers for API requests including authentication if available
  Map<String, String> createHeaders() {
    final headers = {
      'Content-Type': 'application/json',
    };

    final token = config.token;
    if (token != null) {
      final prefix = config.authType == BaserowAuthType.jwt ? 'JWT' : 'Token';
      headers['Authorization'] = '$prefix $token';
    }

    return headers;
  }

  /// Login with username and password to get JWT token
  Future<AuthResponse> login(String email, String password) async {
    final response = await post('user/token-auth/', {
      'email': email,
      'password': password,
    });

    final authResponse = AuthResponse.fromJson(response);
    if (config.authType == BaserowAuthType.jwt) {
      config = config.copyWith(
        token: authResponse.token,
        refreshToken: authResponse.refreshToken,
      );
      _setupTokenRefresh();
    }

    return authResponse;
  }

  /// Refresh JWT token
  Future<String> refreshToken(String refreshToken) async {
    final response = await post('user/token-refresh/', {
      'refresh_token': refreshToken,
    });

    final token = response['token'];
    if (token == null || token is! String) {
      throw FormatException('Missing or invalid field: token');
    }
    return token;
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

  /// Logs out the user by blacklisting their refresh token
  Future<void> logout() async {
    if (config.authType != BaserowAuthType.jwt || config.refreshToken == null) {
      throw BaserowException(
          'Logout requires JWT authentication with a refresh token', 400);
    }

    try {
      final url = Uri.parse('${config.baseUrl}/api/user/token-blacklist/');
      final response = await _httpClient.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'refresh': config.refreshToken}),
      );

      if (response.statusCode != 204) {
        throw BaserowException(
          'Failed to blacklist token: ${response.statusCode}',
          response.statusCode,
        );
      }

      // Clean up tokens and stop refresh timer
      _refreshTimer?.cancel();
      _refreshTimer = null;
      config = config.copyWith(token: null, refreshToken: null);
    } catch (e) {
      if (e is BaserowException) {
        rethrow;
      }
      throw BaserowException('Failed to logout: $e', 500);
    }
  }

  /// Performs a GET request to the Baserow API
  Future<dynamic> get(String path, [Map<String, String>? queryParams]) async {
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

    return json.decode(response.body);
  }

  /// Performs a POST request to the Baserow API
  Future<Map<String, dynamic>> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]) async {
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
      [Map<String, String>? queryParams]) async {
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

  /// Performs a multipart file upload request to the Baserow API
  Future<Map<String, dynamic>> uploadMultipart(
    String path,
    List<int> fileBytes,
    String filename, [
    Map<String, String>? queryParams,
  ]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }

    final request = http.MultipartRequest('POST', url);

    // Add authorization header
    final token = config.token;
    if (token != null) {
      final prefix = config.authType == BaserowAuthType.jwt ? 'JWT' : 'Token';
      request.headers['Authorization'] = '$prefix $token';
    }

    // Add the file
    request.files.add(
      http.MultipartFile.fromBytes(
        'file',
        fileBytes,
        filename: filename,
      ),
    );

    final streamedResponse = await _httpClient.send(request);
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw BaserowException(
        'Failed to perform file upload: ${response.statusCode}',
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
    final response = await get('database/tables/database/$databaseId/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response.cast<Map<String, dynamic>>().map(Table.fromJson).toList();
  }

  /// Lists all fields in a table
  Future<List<Field>> listFields(int tableId) async {
    final response = await get('database/fields/table/$tableId/');
    final List<dynamic> data = response['fields'] as List<dynamic>;

    return data
        .map((field) => Field.fromJson(field as Map<String, dynamic>))
        .toList();
  }

  /// Gets a table with its fields
  Future<Table> getTableWithFields(int tableId) async {
    final response = await get('database/tables/$tableId/');
    final table = Table.fromJson(response as Map<String, dynamic>);

    // Fetch fields separately
    final fields = await listFields(tableId);
    return Table(
      id: table.id,
      name: table.name,
      order: table.order,
      fields: fields,
    );
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

  /// Lists all rows in a table, automatically handling pagination
  Future<List<Row>> listAllRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async {
    final allRows = <Row>[];
    var currentPage = 1;

    while (true) {
      final response = await listRows(
        tableId,
        options: ListRowsOptions(
          page: currentPage,
          size: options.size ?? 100,
          orderBy: options.orderBy,
          descending: options.descending,
          filters: options.filters,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
        ),
      );

      allRows.addAll(response.results);

      if (response.next == null) {
        break;
      }

      currentPage++;
    }

    return allRows;
  }

  /// Returns a stream of rows from a table, yielding rows as they are fetched
  Stream<Row> streamRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async* {
    var currentPage = 1;

    while (true) {
      final response = await listRows(
        tableId,
        options: ListRowsOptions(
          page: currentPage,
          size: options.size ?? 100,
          orderBy: options.orderBy,
          descending: options.descending,
          filters: options.filters,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
        ),
      );

      for (final row in response.results) {
        yield row;
      }

      if (response.next == null) {
        break;
      }

      currentPage++;
    }
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
      fields,
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
        'items': fieldsList,
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
      fields,
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
              ...entry.value,
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

  /// Uploads a file to Baserow
  Future<FileUploadResponse> uploadFile(
      List<int> fileBytes, String filename) async {
    final response = await uploadMultipart(
      'user-files/upload-file/',
      fileBytes,
      filename,
    );
    return FileUploadResponse.fromJson(response);
  }

  /// Uploads a file to Baserow by downloading it from a URL
  Future<FileUploadResponse> uploadFileViaUrl(String url) async {
    final response = await post(
      'user-files/upload-via-url/',
      {'url': url},
    );
    return FileUploadResponse.fromJson(response);
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
    _refreshTimer?.cancel();
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
class Table {
  final int id;
  final String name;
  final int order;
  final List<Field>? fields;

  Table({
    required this.id,
    required this.name,
    required this.order,
    this.fields,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        id: (json['id'] as num).toInt(),
        name: json['name'] as String,
        order: (json['order'] as num).toInt(),
        fields: null, // Fields are fetched separately
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'order': order,
        if (fields != null) 'fields': fields!.map((f) => f.toJson()).toList(),
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

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

/// Custom exception for Baserow API errors
/// Response from a file upload
@JsonSerializable()
class FileUploadResponse {
  final String url;
  final Map<String, ThumbnailInfo> thumbnails;
  final String name;
  final int size;
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @JsonKey(name: 'is_image')
  final bool isImage;
  @JsonKey(name: 'image_width')
  final int? imageWidth;
  @JsonKey(name: 'image_height')
  final int? imageHeight;
  @JsonKey(name: 'uploaded_at')
  final String uploadedAt;

  FileUploadResponse({
    required this.url,
    required this.thumbnails,
    required this.name,
    required this.size,
    required this.mimeType,
    required this.isImage,
    this.imageWidth,
    this.imageHeight,
    required this.uploadedAt,
  });

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FileUploadResponseToJson(this);
}

/// Information about a thumbnail
class ThumbnailInfo {
  final String url;
  final int? width;
  final int? height;

  ThumbnailInfo({
    required this.url,
    this.width,
    this.height,
  });

  factory ThumbnailInfo.fromJson(Map<String, dynamic> json) {
    final url = json['url'];
    if (url == null || url is! String) {
      throw FormatException('Missing or invalid field: url');
    }

    final width = json['width'];
    final height = json['height'];

    return ThumbnailInfo(
      url: url,
      width: width == null ? null : (width as num).toInt(),
      height: height == null ? null : (height as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'url': url,
        if (width != null) 'width': width,
        if (height != null) 'height': height,
      };
}

class BaserowException implements Exception {
  final String message;
  final int statusCode;

  BaserowException(this.message, this.statusCode);

  @override
  String toString() => 'BaserowException: $message (Status Code: $statusCode)';
}
