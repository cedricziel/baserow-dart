/// Custom exception for Baserow API errors
class BaserowException implements Exception {
  final String message;
  final int statusCode;

  BaserowException(this.message, this.statusCode);

  @override
  String toString() => 'BaserowException: $message (Status Code: $statusCode)';
}

/// Exception thrown when JWT token needs to be refreshed
class TokenRefreshException implements Exception {
  final String message;
  final String? refreshToken;

  TokenRefreshException(this.message, {this.refreshToken});

  @override
  String toString() => 'TokenRefreshException: $message';
}

/// Exception thrown when attempting to set a field as primary when it's already primary
class FieldIsAlreadyPrimaryException extends BaserowException {
  FieldIsAlreadyPrimaryException(super.message, super.statusCode);
}
