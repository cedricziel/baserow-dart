import '../models.dart';

/// Interface for table related operations in Baserow
abstract class TableOperations {
  /// Lists all tables in a database
  ///
  /// [databaseId] is the ID of the database to list tables for
  Future<List<Table>> listTables(int databaseId);

  /// Lists all fields in a table
  ///
  /// [tableId] is the ID of the table to list fields for
  Future<List<Field>> listFields(int tableId);

  /// Gets a table with its fields
  ///
  /// [tableId] is the ID of the table to retrieve
  Future<Table> getTableWithFields(int tableId);

  /// Gets a database table by its ID
  ///
  /// Returns the requested table if the authorized user has access to the related database's workspace.
  /// Throws [BaserowException] if the table doesn't exist or the user doesn't have access.
  ///
  /// [tableId] is the ID of the table to retrieve
  Future<Table> getDatabaseTable(int tableId);
}
