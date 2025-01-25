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

  /// Creates a new table in the specified database
  ///
  /// [databaseId] is the ID of the database to create the table in
  /// [name] is the name of the table (required, max 255 chars)
  /// [data] Optional initial data for the table. Each inner list represents a row
  /// [firstRowHeader] Optional flag to use first row as field names
  ///
  /// Returns the created table
  /// Throws [BaserowException] if the table creation fails or the user doesn't have access
  Future<Table> createTable(
    int databaseId, {
    required String name,
    List<List<dynamic>>? data,
    bool firstRowHeader = false,
  });
}
