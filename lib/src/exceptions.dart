/// Custom exception for Baserow API errors
class BaserowException implements Exception {
  final String message;
  final int statusCode;

  BaserowException(this.message, this.statusCode);

  @override
  String toString() => 'BaserowException: $message (Status Code: $statusCode)';
}
