import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'auth.dart';
import 'client_interface.dart';
import 'exceptions.dart';
import 'models.dart';
import 'mixins/user_operations_mixin.dart';
import 'mixins/workspace_operations_mixin.dart';
import 'mixins/database_token_operations_mixin.dart';
import 'mixins/row_operations_mixin.dart';
import 'mixins/file_operations_mixin.dart';

/// The main Baserow client class for interacting with the Baserow API.
class BaserowClient
    with
        UserOperationsMixin,
        WorkspaceOperationsMixin,
        DatabaseTokenOperationsMixin,
        RowOperationsMixin,
        FileOperationsMixin
    implements BaserowClientInterface {
  @override
  BaserowConfig config;

  @override
  final http.Client httpClient;
  Timer? _refreshTimer;

  BaserowClient({
    required this.config,
    http.Client? httpClient,
  }) : httpClient = httpClient ?? http.Client() {
    setupTokenRefresh();
  }

  @override
  void updateConfig(BaserowConfig newConfig) {
    config = newConfig;
  }

  @override
  void setupTokenRefresh() {
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
  @override
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

  /// Creates headers for API requests including authentication if available
  @override
  Future<dynamic> get(String path, [Map<String, String>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }

    final response = await httpClient.get(
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
  @override
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }
    final response = await httpClient.post(
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
  @override
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }
    final response = await httpClient.patch(
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
  @override
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

    final streamedResponse = await httpClient.send(request);
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
  @override
  Future<void> delete(String path, [Map<String, String>? queryParams]) async {
    var url = Uri.parse('${config.baseUrl}/api/$path');
    if (queryParams != null) {
      url = url.replace(queryParameters: queryParams);
    }

    final response = await httpClient.delete(
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
  @override
  Future<List<Database>> listDatabases() async {
    final response = await get('applications/');
    final List<dynamic> data = response['applications'] as List<dynamic>;

    return data
        .where((app) => app['type'] == 'database')
        .map((db) => Database.fromJson(db as Map<String, dynamic>))
        .toList();
  }

  /// Lists all tables in a database
  @override
  Future<List<Table>> listTables(int databaseId) async {
    final response = await get('database/tables/database/$databaseId/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response.cast<Map<String, dynamic>>().map(Table.fromJson).toList();
  }

  /// Lists all fields in a table
  @override
  Future<List<Field>> listFields(int tableId) async {
    final response = await get('database/fields/table/$tableId/');
    final List<dynamic> data = response['fields'] as List<dynamic>;

    return data
        .map((field) => Field.fromJson(field as Map<String, dynamic>))
        .toList();
  }

  /// Gets a table with its fields
  @override
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

  /// Closes the HTTP client
  @override
  void close() {
    _refreshTimer?.cancel();
    httpClient.close();
  }
}
