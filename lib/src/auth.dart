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

  /// Duration between JWT token refreshes (defaults to 9 minutes)
  final Duration refreshInterval;

  /// Callback when token is refreshed
  final void Function(String token, String refreshToken)? onTokenRefresh;

  const BaserowConfig({
    required this.baseUrl,
    this.token,
    this.refreshToken,
    this.authType = BaserowAuthType.token,
    this.refreshInterval = const Duration(minutes: 9),
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
