import '../models.dart';

/// Interface for database token related operations in Baserow
abstract class DatabaseTokenOperations {
  /// Checks if a database token is valid
  Future<void> checkDatabaseToken();

  /// Returns the requested database token
  ///
  /// [tokenId] is the ID of the token to retrieve
  Future<DatabaseToken> getDatabaseToken(int tokenId);

  /// Lists all database tokens that belong to the authorized user
  Future<List<DatabaseToken>> listDatabaseTokens();

  /// Creates a new database token for a given workspace
  ///
  /// [name] is the name of the token
  /// [workspace] is the ID of the workspace to create the token for
  Future<DatabaseToken> createDatabaseToken({
    required String name,
    required int workspace,
  });

  /// Deletes a database token
  ///
  /// [tokenId] is the ID of the token to delete
  Future<void> deleteDatabaseToken(int tokenId);
}
