import '../models.dart';

/// Interface for database related operations in Baserow
abstract class DatabaseOperations {
  /// Lists all databases accessible to the authenticated user
  Future<List<Database>> listDatabases();
}
