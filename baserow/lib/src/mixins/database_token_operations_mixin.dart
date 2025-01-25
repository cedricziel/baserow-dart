import 'dart:convert';
import 'package:http/http.dart' as http;

import '../auth.dart';
import '../exceptions.dart';
import '../interfaces/database_token_operations.dart';
import '../models.dart';

/// Mixin that implements database token related operations for Baserow
mixin DatabaseTokenOperationsMixin implements DatabaseTokenOperations {
  /// The HTTP client used to make requests
  http.Client get httpClient;

  /// The configuration for the Baserow client
  BaserowConfig get config;

  /// Function to create headers for API requests
  Map<String, String> createHeaders();

  /// Function to perform a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);

  /// Function to perform a POST request
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Function to perform a DELETE request
  Future<void> delete(String path, [Map<String, String>? queryParams]);

  @override
  Future<void> checkDatabaseToken() async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/check/');
    final response = await httpClient.get(
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

  @override
  Future<DatabaseToken> getDatabaseToken(int tokenId) async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/$tokenId/');
    final response = await httpClient.get(
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

  @override
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

  @override
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

  @override
  Future<void> deleteDatabaseToken(int tokenId) async {
    var url = Uri.parse('${config.baseUrl}/api/database/tokens/$tokenId/');
    final response = await httpClient.delete(
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
}
