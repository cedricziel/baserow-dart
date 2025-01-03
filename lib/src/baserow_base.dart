import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'auth.dart';
import 'exceptions.dart';
import 'files.dart';
import 'models.dart';
import 'rows.dart';

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
      config = BaserowConfig(
        baseUrl: config.baseUrl,
        authType: config.authType,
        refreshInterval: config.refreshInterval,
        onTokenRefresh: config.onTokenRefresh,
      );
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
  Future<dynamic> post(String path, Map<String, dynamic> data,
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

    if (response.statusCode == 204) {
      return null;
    }

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw BaserowException(
        'Failed to perform POST request: ${response.statusCode}',
        response.statusCode,
      );
    }

    return json.decode(response.body);
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
  Future<void> delete(String path, [Map<String, String>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }

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
          filterType: options.filterType,
          filters: options.filters,
          fieldFilters: options.fieldFilters,
          include: options.include,
          exclude: options.exclude,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
          linkRowJoins: options.linkRowJoins,
          search: options.search,
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
          filterType: options.filterType,
          filters: options.filters,
          fieldFilters: options.fieldFilters,
          include: options.include,
          exclude: options.exclude,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
          linkRowJoins: options.linkRowJoins,
          search: options.search,
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
  ///
  /// If [sendWebhookEvents] is provided, it controls whether webhooks are triggered
  /// after the operation. Defaults to true.
  ///
  /// Example:
  /// ```dart
  /// // Delete row without triggering webhooks
  /// await client.deleteRow(586, 123, sendWebhookEvents: false);
  /// ```
  Future<void> deleteRow(int tableId, int rowId,
      {bool sendWebhookEvents = true}) async {
    final queryParams =
        !sendWebhookEvents ? {'send_webhook_events': 'false'} : null;
    await delete('database/rows/table/$tableId/$rowId/', queryParams);
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

  /// Deletes multiple rows from a table in batch mode
  ///
  /// If [sendWebhookEvents] is provided, it controls whether webhooks are triggered
  /// after the operation. Defaults to true.
  ///
  /// Example:
  /// ```dart
  /// // Delete multiple rows without triggering webhooks
  /// await client.deleteRows(586, [123, 456], sendWebhookEvents: false);
  /// ```
  Future<void> deleteRows(
    int tableId,
    List<int> rowIds, {
    bool sendWebhookEvents = true,
  }) async {
    final queryParams =
        !sendWebhookEvents ? {'send_webhook_events': 'false'} : null;
    await post(
      'database/rows/table/$tableId/batch-delete/',
      {'items': rowIds},
      queryParams,
    );
  }

  /// Moves a row to a new position in a table
  ///
  /// If [beforeId] is provided in the options, moves the row before that row.
  /// If not provided, moves the row to the end of the table.
  ///
  /// Example:
  /// ```dart
  /// // Move row 123 before row 456
  /// final movedRow = await client.moveRow(
  ///   tableId: 586,
  ///   rowId: 123,
  ///   options: MoveRowOptions(beforeId: 456),
  /// );
  /// ```
  Future<Row> moveRow(
    int tableId,
    int rowId, {
    MoveRowOptions options = const MoveRowOptions(),
  }) async {
    final response = await patch(
      'database/rows/table/$tableId/$rowId/move/',
      {}, // Empty body as all parameters are in query string
      options.toQueryParameters(),
    );

    return Row.fromJson(response);
  }

  /// Closes the HTTP client
  void close() {
    _refreshTimer?.cancel();
    _httpClient.close();
  }
}
