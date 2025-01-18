import 'models/user.dart';

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

  const BaserowConfig({
    required this.baseUrl,
    this.token,
    this.refreshToken,
    this.authType = BaserowAuthType.token,
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
    );
  }
}

/// Response from login attempt
class AuthResponse {
  /// The user object containing user information
  final User user;

  /// Deprecated. Use accessToken instead.
  @Deprecated('Use accessToken instead')
  final String token;

  /// Token used for authorization, valid for 10 minutes
  final String accessToken;

  /// Token used to get new access tokens, valid for 168 hours
  final String refreshToken;

  AuthResponse({
    required this.user,
    required this.token,
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    final userJson = json['user'];
    if (userJson == null || userJson is! Map<String, dynamic>) {
      throw FormatException('Missing or invalid field: user');
    }

    final user = User.fromJson(userJson);

    final accessToken = json['access_token'];
    if (accessToken == null || accessToken is! String) {
      throw FormatException('Missing or invalid field: access_token');
    }

    final token = json['token'] ??
        accessToken; // Fallback to access_token if token is not present

    final refreshToken = json['refresh_token'];
    if (refreshToken == null || refreshToken is! String) {
      throw FormatException('Missing or invalid field: refresh_token');
    }

    return AuthResponse(
      user: user,
      token: token,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
