import '../rows.dart';

/// Interface for row-related operations in Baserow.
///
/// This interface provides methods for creating, reading, updating, and deleting rows
/// in Baserow tables, as well as specialized operations like moving rows and streaming
/// row data.
abstract class RowOperations {
  /// Lists rows in a table with optional filtering and pagination
  Future<RowsResponse> listRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  });

  /// Lists all rows in a table, automatically handling pagination
  Future<List<Row>> listAllRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  });

  /// Returns a stream of rows from a table, yielding rows as they are fetched
  Stream<Row> streamRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  });

  /// Gets a single row from a table by its ID
  Future<Row> getRow(
    int tableId,
    int rowId, {
    bool userFieldNames = false,
  });

  /// Creates a new row in a table
  Future<Row> createRow(
    int tableId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  });

  /// Creates multiple rows in a table
  Future<List<Row>> createRows(
    int tableId,
    List<Map<String, dynamic>> fieldsList, {
    bool userFieldNames = false,
  });

  /// Updates an existing row in a table
  Future<Row> updateRow(
    int tableId,
    int rowId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  });

  /// Updates multiple rows in a table
  Future<List<Row>> updateRows(
    int tableId,
    Map<int, Map<String, dynamic>> updates, {
    bool userFieldNames = false,
  });

  /// Deletes a row from a table
  Future<void> deleteRow(
    int tableId,
    int rowId, {
    bool sendWebhookEvents = true,
  });

  /// Deletes multiple rows from a table in batch mode
  Future<void> deleteRows(
    int tableId,
    List<int> rowIds, {
    bool sendWebhookEvents = true,
  });

  /// Moves a row to a new position in a table
  Future<Row> moveRow(
    int tableId,
    int rowId, {
    MoveRowOptions options = const MoveRowOptions(),
  });
}
