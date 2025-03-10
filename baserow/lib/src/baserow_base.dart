import 'dart:async';

import 'models/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'auth.dart';
import 'client_interface.dart';
import 'exceptions.dart';
import 'mixins/user_operations_mixin.dart';
import 'mixins/workspace_operations_mixin.dart';
import 'mixins/database_token_operations_mixin.dart';
import 'mixins/row_operations_mixin.dart';
import 'mixins/file_operations_mixin.dart';
import 'mixins/database_operations_mixin.dart';
import 'mixins/table_operations_mixin.dart';
import 'mixins/field_operations_mixin.dart';
import 'mixins/application_operations_mixin.dart';
import 'mixins/view_operations_mixin.dart';

/// The main Baserow client class for interacting with the Baserow API.
class BaserowClient
    with
        UserOperationsMixin,
        WorkspaceOperationsMixin,
        DatabaseTokenOperationsMixin,
        RowOperationsMixin,
        FileOperationsMixin,
        DatabaseOperationsMixin,
        TableOperationsMixin,
        FieldOperationsMixin,
        ApplicationOperationsMixin,
        ViewOperationsMixin
    implements BaserowClientInterface {
  @override
  BaserowConfig config;

  final StreamController<User?> _userController =
      StreamController<User?>.broadcast();

  @override
  StreamController<User?> get userController => _userController;

  @override
  Stream<User?> get userStream => _userController.stream;

  @override
  final http.Client httpClient;
  BaserowClient({
    required this.config,
    http.Client? httpClient,
  }) : httpClient = httpClient ?? http.Client();

  @override
  void updateConfig(BaserowConfig newConfig) {
    config = newConfig;
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

    if (response.statusCode == 401 && config.authType == BaserowAuthType.jwt) {
      throw TokenRefreshException(
        'Token expired, needs refresh',
        refreshToken: config.refreshToken,
      );
    } else if (response.statusCode != 200) {
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

    if (response.statusCode == 401 && config.authType == BaserowAuthType.jwt) {
      throw TokenRefreshException(
        'Token expired, needs refresh',
        refreshToken: config.refreshToken,
      );
    } else if (response.statusCode != 201 && response.statusCode != 200) {
      String errorMessage =
          'Failed to perform POST request: ${response.statusCode}';
      Map<String, dynamic>? errorData;
      try {
        errorData = json.decode(response.body) as Map<String, dynamic>;
        // Try to get error from 'error' or 'detail' field
        final error = errorData['error'] ?? errorData['detail'];
        if (error != null && error is String) {
          errorMessage = error;
          // Check for specific error codes
          if (error == 'ERROR_FIELD_IS_ALREADY_PRIMARY') {
            throw FieldIsAlreadyPrimaryException(error, response.statusCode);
          }
        } else if (errorData.values.isNotEmpty) {
          // If no error/detail field, try to get first value as error
          final firstValue = errorData.values.first;
          if (firstValue is String) {
            errorMessage = firstValue;
          }
        }
      } catch (e) {
        if (e is FieldIsAlreadyPrimaryException) {
          rethrow;
        }
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

    if (response.statusCode == 401 && config.authType == BaserowAuthType.jwt) {
      throw TokenRefreshException(
        'Token expired, needs refresh',
        refreshToken: config.refreshToken,
      );
    } else if (response.statusCode != 200) {
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

    if (response.statusCode == 401 && config.authType == BaserowAuthType.jwt) {
      throw TokenRefreshException(
        'Token expired, needs refresh',
        refreshToken: config.refreshToken,
      );
    } else if (response.statusCode != 201 && response.statusCode != 200) {
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

    if (response.statusCode == 401 && config.authType == BaserowAuthType.jwt) {
      throw TokenRefreshException(
        'Token expired, needs refresh',
        refreshToken: config.refreshToken,
      );
    } else if (response.statusCode != 204) {
      throw BaserowException(
        'Failed to perform DELETE request: ${response.statusCode}',
        response.statusCode,
      );
    }
  }

  /// Closes the HTTP client
  @override
  void close() {
    _userController.close();
    httpClient.close();
  }
}
