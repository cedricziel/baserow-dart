import 'auth.dart';
import 'interfaces/row_operations.dart';
import 'interfaces/file_operations.dart';
import 'interfaces/database_token_operations.dart';
import 'interfaces/workspace_operations.dart';
import 'interfaces/user_operations.dart';
import 'interfaces/database_operations.dart';
import 'interfaces/table_operations.dart';

/// Abstract interface for interacting with the Baserow API.
abstract class BaserowClientInterface
    implements
        RowOperations,
        FileOperations,
        DatabaseTokenOperations,
        WorkspaceOperations,
        UserOperations,
        DatabaseOperations,
        TableOperations {
  /// The current configuration for the client
  BaserowConfig get config;

  /// Creates headers for API requests including authentication if available
  Map<String, String> createHeaders();

  /// Performs a GET request to the Baserow API
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);

  /// Performs a POST request to the Baserow API
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Performs a PATCH request to the Baserow API
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Performs a DELETE request to the Baserow API
  Future<void> delete(String path, [Map<String, String>? queryParams]);

  /// Performs a multipart file upload request to the Baserow API
  Future<Map<String, dynamic>> uploadMultipart(
    String path,
    List<int> fileBytes,
    String filename, [
    Map<String, String>? queryParams,
  ]);

  /// Closes any resources used by the client
  void close();
}
