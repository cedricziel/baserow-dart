import 'dart:convert';
import 'package:http/http.dart' as http;

import '../auth.dart';
import '../exceptions.dart';
import '../interfaces/user_operations.dart';

/// Mixin that implements user related operations for Baserow
mixin UserOperationsMixin implements UserOperations {
  /// The HTTP client used to make requests
  http.Client get httpClient;

  /// The configuration for the Baserow client
  BaserowConfig get config;

  /// Function to update the config
  void updateConfig(BaserowConfig newConfig);

  @override
  Future<AuthResponse> login(String email, String password) async {
    final url = Uri.parse('${config.baseUrl}/api/user/token-auth/');
    final response = await httpClient.post(
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
      updateConfig(config.copyWith(
        token: authResponse.accessToken,
        refreshToken: authResponse.refreshToken,
      ));
    }

    // Emit the user object after successful login
    userController.add(authResponse.user);
    return authResponse;
  }

  @override
  Future<String> refreshToken(String refreshToken) async {
    final url = Uri.parse('${config.baseUrl}/api/user/token-refresh/');
    final response = await httpClient.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'refresh_token': refreshToken}),
    );

    if (response.statusCode != 200) {
      throw BaserowException(
        'Failed to refresh token: ${response.statusCode}',
        response.statusCode,
      );
    }

    final responseData = json.decode(response.body);
    final accessToken = responseData['access_token'];
    if (accessToken == null || accessToken is! String) {
      // Fallback to deprecated token field
      final token = responseData['token'];
      if (token == null || token is! String) {
        throw FormatException(
            'Missing or invalid fields: access_token and token');
      }
      return token;
    }
    return accessToken;
  }

  @override
  Future<bool> verifyToken(String token) async {
    final url = Uri.parse('${config.baseUrl}/api/user/token-verify/');
    final headers = {'Content-Type': 'application/json'};

    // Try with access_token first
    final accessTokenResponse = await httpClient.post(
      url,
      headers: headers,
      body: json.encode({'access_token': token}),
    );

    if (accessTokenResponse.statusCode == 200 ||
        accessTokenResponse.statusCode == 204) {
      return true;
    }

    // If access_token fails, try with legacy token field
    final legacyTokenResponse = await httpClient.post(
      url,
      headers: headers,
      body: json.encode({'token': token}),
    );

    return legacyTokenResponse.statusCode == 200 ||
        legacyTokenResponse.statusCode == 204;
  }

  @override
  Future<void> logout() async {
    if (config.authType != BaserowAuthType.jwt || config.refreshToken == null) {
      throw BaserowException(
          'Logout requires JWT authentication with a refresh token', 400);
    }

    try {
      final url = Uri.parse('${config.baseUrl}/api/user/token-blacklist/');
      final response = await httpClient.post(
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
      updateConfig(BaserowConfig(
        baseUrl: config.baseUrl,
        authType: config.authType,
      ));

      // Emit null after successful logout
      userController.add(null);
    } catch (e) {
      if (e is BaserowException) {
        rethrow;
      }
      throw BaserowException('Failed to logout: $e', 500);
    }
  }
}
