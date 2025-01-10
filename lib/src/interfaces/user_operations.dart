import '../auth.dart';

/// Interface for user related operations in Baserow
abstract class UserOperations {
  /// Login with email and password to get authentication tokens
  ///
  /// [email] is the user's email address
  /// [password] is the user's password
  ///
  /// Throws [BaserowException] with specific error codes:
  /// - ERROR_INVALID_CREDENTIALS: Invalid email/password combination
  /// - ERROR_DEACTIVATED_USER: User account is deactivated
  /// - ERROR_AUTH_PROVIDER_DISABLED: Authentication provider is disabled
  /// - ERROR_EMAIL_VERIFICATION_REQUIRED: Email verification is required
  Future<AuthResponse> login(String email, String password);

  /// Refresh JWT token
  Future<String> refreshToken(String refreshToken);

  /// Verify JWT token
  ///
  /// [token] can be either an access_token or a deprecated token
  Future<bool> verifyToken(String token);

  /// Logs out the user by blacklisting their refresh token
  Future<void> logout();
}
