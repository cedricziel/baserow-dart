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

  /// Login with email and password to get authentication tokens
  ///
  /// [email] is the user's email address
  /// [password] is the user's password
  /// [username] is deprecated, use email instead
  ///
  /// Throws [BaserowException] with specific error codes:
  /// - ERROR_INVALID_CREDENTIALS: Invalid email/password combination
  /// - ERROR_DEACTIVATED_USER: User account is deactivated
  /// - ERROR_AUTH_PROVIDER_DISABLED: Authentication provider is disabled
  /// - ERROR_EMAIL_VERIFICATION_REQUIRED: Email verification is required
  Future<AuthResponse> login(
    String email,
    String password,
  ) async {
    final url = Uri.parse('${config.baseUrl}/api/user/token-auth/');
    final response = await _httpClient.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    final responseData = json.decode(response.body);

    if (response.statusCode != 200) {
      if (responseData is Map<String, dynamic> &&
          responseData.containsKey('error')) {
        final error = responseData['error'] as String;
        switch (error.toLowerCase()) {
          case 'error_invalid_credentials':
            throw BaserowException('ERROR_INVALID_CREDENTIALS', 401);
          case 'error_deactivated_user':
            throw BaserowException('ERROR_DEACTIVATED_USER', 401);
          case 'error_auth_provider_disabled':
            throw BaserowException('ERROR_AUTH_PROVIDER_DISABLED', 401);
          case 'error_email_verification_required':
            throw BaserowException('ERROR_EMAIL_VERIFICATION_REQUIRED', 401);
          default:
            throw BaserowException(error, response.statusCode);
        }
      }
      throw BaserowException(
        'Failed to perform login: ${response.statusCode}',
        response.statusCode,
      );
    }

    final authResponse = AuthResponse.fromJson(responseData);
    if (config.authType == BaserowAuthType.jwt) {
      config = config.copyWith(
        token: authResponse.accessToken,
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

    final accessToken = response['access_token'];
    if (accessToken == null || accessToken is! String) {
      // Fallback to deprecated token field
      final token = response['token'];
      if (token == null || token is! String) {
        throw FormatException(
            'Missing or invalid fields: access_token and token');
      }
      return token;
    }
    return accessToken;
  }

  /// Verify JWT token
  ///
  /// [token] can be either an access_token or a deprecated token
  Future<bool> verifyToken(String token) async {
    final url = Uri.parse('${config.baseUrl}/api/user/token-verify/');
    final headers = {'Content-Type': 'application/json'};

    // Try with access_token first
    final accessTokenResponse = await _httpClient.post(
      url,
      headers: headers,
      body: json.encode({'access_token': token}),
    );

    if (accessTokenResponse.statusCode == 200 ||
        accessTokenResponse.statusCode == 204) {
      return true;
    }

    // If access_token fails, try with legacy token field
    final legacyTokenResponse = await _httpClient.post(
      url,
      headers: headers,
      body: json.encode({'token': token}),
    );

    return legacyTokenResponse.statusCode == 200 ||
        legacyTokenResponse.statusCode == 204;
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
      String errorMessage =
          'Failed to perform POST request: ${response.statusCode}';
      try {
        final errorData = json.decode(response.body);
        if (errorData is Map<String, dynamic>) {
          // Try to get error from 'error' or 'detail' field
          final error = errorData['error'] ?? errorData['detail'];
          if (error != null && error is String) {
            errorMessage = error;
          } else if (errorData.values.isNotEmpty) {
            // If no error/detail field, try to get first value as error
            final firstValue = errorData.values.first;
            if (firstValue is String) {
              errorMessage = firstValue;
            }
          }
        }
      } catch (_) {
        // Use default error message if parsing fails
      }
      throw BaserowException(errorMessage, response.statusCode);
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

  /// Checks if a database token is valid
  ///
  /// Returns void if the token is valid (200 response)
  /// Throws [BaserowException] with error code ERROR_TOKEN_DOES_NOT_EXIST if invalid (403 response)
  Future<void> checkDatabaseToken() async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/check/');
    final response = await _httpClient.get(
      url,
      headers: createHeaders(),
    );

    if (response.statusCode == 200) {
      return;
    }

    if (response.statusCode == 403) {
      final responseData = json.decode(response.body);
      if (responseData is Map<String, dynamic> &&
          responseData['error'] == 'ERROR_TOKEN_DOES_NOT_EXIST') {
        throw BaserowException('ERROR_TOKEN_DOES_NOT_EXIST', 403);
      }
    }

    throw BaserowException(
      'Failed to check database token: ${response.statusCode}',
      response.statusCode,
    );
  }

  /// Gets a single row from a table by its ID
  ///
  /// [tableId] is the ID of the table containing the row
  /// [rowId] is the ID of the row to retrieve
  /// [userFieldNames] if true, uses human-readable field names instead of field_123 format
  ///
  /// Throws [BaserowException] with specific error codes:
  /// - ERROR_USER_NOT_IN_GROUP: User is not a member of the workspace
  /// - ERROR_TABLE_DOES_NOT_EXIST: Table does not exist
  /// - ERROR_ROW_DOES_NOT_EXIST: Row does not exist
  Future<Row> getRow(
    int tableId,
    int rowId, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await get(
      'database/rows/table/$tableId/$rowId/',
      queryParams,
    );

    return Row.fromJson(response);
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

  /// Returns the requested database token if it is owned by the authorized user
  /// and if the user has access to the related workspace.
  ///
  /// [tokenId] is the ID of the database token to retrieve.
  ///
  /// Throws [BaserowBadRequestError] with error code ERROR_USER_NOT_IN_GROUP if the
  /// user is not a member of the workspace.
  /// Throws [BaserowNotFoundError] with error code ERROR_TOKEN_DOES_NOT_EXIST if the
  /// token does not exist.
  Future<DatabaseToken> getDatabaseToken(int tokenId) async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/$tokenId/');
    final response = await _httpClient.get(
      url,
      headers: createHeaders(),
    );

    final responseData = json.decode(response.body);

    switch (response.statusCode) {
      case 200:
        return DatabaseToken.fromJson(responseData);
      case 400:
        if (responseData is Map<String, dynamic> &&
            responseData['error'] == 'ERROR_USER_NOT_IN_GROUP') {
          throw BaserowException('ERROR_USER_NOT_IN_GROUP', 400);
        }
        throw BaserowException(
          'Failed to get database token: ${response.statusCode}',
          response.statusCode,
        );
      case 404:
        if (responseData is Map<String, dynamic> &&
            responseData['error'] == 'ERROR_TOKEN_DOES_NOT_EXIST') {
          throw BaserowException('ERROR_TOKEN_DOES_NOT_EXIST', 404);
        }
        throw BaserowException(
          'Failed to get database token: ${response.statusCode}',
          response.statusCode,
        );
      default:
        throw BaserowException(
          'Failed to get database token: ${response.statusCode}',
          response.statusCode,
        );
    }
  }

  /// Lists all database tokens that belong to the authorized user
  ///
  /// A token can be used to create, read, update and delete rows in the tables of
  /// the token's workspace. It only works on the tables if the token has the correct
  /// permissions.
  Future<List<DatabaseToken>> listDatabaseTokens() async {
    final response = await get('database/tokens/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response
        .cast<Map<String, dynamic>>()
        .map(DatabaseToken.fromJson)
        .toList();
  }

  /// Creates a new database token for a given workspace
  ///
  /// The token can be used to create, read, update and delete rows in the tables of
  /// the workspace. It only works on the tables if the token has the correct
  /// permissions.
  ///
  /// [name] is the human readable name of the database token for the user.
  /// [workspace] is the ID of the workspace that the token will have access to.
  ///
  /// Throws [BaserowException] with specific error codes:
  /// - ERROR_USER_NOT_IN_GROUP: User is not a member of the workspace
  /// - ERROR_REQUEST_BODY_VALIDATION: Invalid request parameters
  Future<DatabaseToken> createDatabaseToken({
    required String name,
    required int workspace,
  }) async {
    final request = CreateDatabaseTokenRequest(
      name: name,
      workspace: workspace,
    );

    final response = await post(
      'database/tokens/',
      request.toJson(),
    );

    return DatabaseToken.fromJson(response);
  }

  /// Deletes a database token if it is owned by the authorized user and if
  /// the user has access to the related workspace.
  ///
  /// [tokenId] is the ID of the database token to delete.
  ///
  /// Throws [BaserowException] with specific error codes:
  /// - ERROR_USER_NOT_IN_GROUP: User is not a member of the workspace
  /// - ERROR_TOKEN_DOES_NOT_EXIST: Token does not exist
  Future<void> deleteDatabaseToken(int tokenId) async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/$tokenId/');
    final response = await _httpClient.delete(
      url,
      headers: createHeaders(),
    );

    if (response.statusCode == 204) {
      return;
    }

    final responseData = json.decode(response.body);

    switch (response.statusCode) {
      case 400:
        if (responseData is Map<String, dynamic> &&
            responseData['error'] == 'ERROR_USER_NOT_IN_GROUP') {
          throw BaserowException('ERROR_USER_NOT_IN_GROUP', 400);
        }
        throw BaserowException(
          'Failed to delete database token: ${response.statusCode}',
          response.statusCode,
        );
      case 404:
        if (responseData is Map<String, dynamic> &&
            responseData['error'] == 'ERROR_TOKEN_DOES_NOT_EXIST') {
          throw BaserowException('ERROR_TOKEN_DOES_NOT_EXIST', 404);
        }
        throw BaserowException(
          'Failed to delete database token: ${response.statusCode}',
          response.statusCode,
        );
      default:
        throw BaserowException(
          'Failed to delete database token: ${response.statusCode}',
          response.statusCode,
        );
    }
  }

  /// Lists all workspaces of the authorized user
  ///
  /// A workspace can contain multiple applications like a database.
  /// Multiple users can have access to a workspace.
  /// The order of the workspaces is custom for each user and can be configured
  /// via the order_workspaces endpoint.
  ///
  /// Returns a list of [Workspace] objects containing workspace details and users.
  Future<List<Workspace>> listWorkspaces() async {
    final response = await get('workspaces/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response
        .cast<Map<String, dynamic>>()
        .map(Workspace.fromJson)
        .toList();
  }

  /// Closes the HTTP client
  void close() {
    _refreshTimer?.cancel();
    _httpClient.close();
  }
}
