import 'auth.dart';
import 'files.dart';
import 'models.dart';
import 'interfaces/row_operations.dart';

/// Abstract interface for interacting with the Baserow API.
abstract class BaserowClientInterface implements RowOperations {
  /// The current configuration for the client
  BaserowConfig get config;

  /// Creates headers for API requests including authentication if available
  Map<String, String> createHeaders();

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

  /// Lists all databases accessible to the authenticated user
  Future<List<Database>> listDatabases();

  /// Lists all tables in a database
  Future<List<Table>> listTables(int databaseId);

  /// Lists all fields in a table
  Future<List<Field>> listFields(int tableId);

  /// Gets a table with its fields
  Future<Table> getTableWithFields(int tableId);

  /// Uploads a file to Baserow
  Future<FileUploadResponse> uploadFile(List<int> fileBytes, String filename);

  /// Uploads a file to Baserow by downloading it from a URL
  Future<FileUploadResponse> uploadFileViaUrl(String url);

  /// Checks if a database token is valid
  Future<void> checkDatabaseToken();

  /// Returns the requested database token
  Future<DatabaseToken> getDatabaseToken(int tokenId);

  /// Lists all database tokens that belong to the authorized user
  Future<List<DatabaseToken>> listDatabaseTokens();

  /// Creates a new database token for a given workspace
  Future<DatabaseToken> createDatabaseToken({
    required String name,
    required int workspace,
  });

  /// Deletes a database token
  Future<void> deleteDatabaseToken(int tokenId);

  /// Lists all workspaces of the authorized user
  Future<List<Workspace>> listWorkspaces();

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
