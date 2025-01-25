//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DatabaseTablesApi
void main() {
  // final instance = DatabaseTablesApi();

  group('tests for DatabaseTablesApi', () {
    // Creates a new data sync table with the given data sync type. This will technically create a table, but it's synchronized with the provided data sync information. This means that some fields related to it will automatically be created and will be read-only.
    //
    //Future<Table> createDatabaseDataSyncTable(int databaseId, { String clientSessionId, String clientUndoRedoActionGroupId, DataSyncCreateDataSync dataSyncCreateDataSync }) async
    test('test createDatabaseDataSyncTable', () async {
      // TODO
    });

    // Creates synchronously a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace.  As an alternative you can use the `create_async_database_table` for better performances and importing bigger files.
    //
    //Future<Table> createDatabaseTable(int databaseId, TableCreate tableCreate, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test createDatabaseTable', () async {
      // TODO
    });

    // Creates a job that creates a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
    //
    //Future<FileImportJobTypeResponse> createDatabaseTableAsync(int databaseId, TableCreate tableCreate, { String clientSessionId }) async
    test('test createDatabaseTableAsync', () async {
      // TODO
    });

    // Deletes the existing table if the authorized user has access to the related database's workspace.
    //
    //Future deleteDatabaseTable(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTable', () async {
      // TODO
    });

    // Start a job to duplicate the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
    //
    //Future<DuplicateTableJobTypeResponse> duplicateDatabaseTableAsync(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test duplicateDatabaseTableAsync', () async {
      // TODO
    });

    // Returns the requested table if the authorized user has access to the related database's workspace.
    //
    //Future<Table> getDatabaseTable(int tableId) async
    test('test getDatabaseTable', () async {
      // TODO
    });

    // Responds with the data sync, including the data sync type specific properties, if the user has the right permissions.
    //
    //Future<DataSyncDataSync> getTableDataSync(int dataSyncId) async
    test('test getTableDataSync', () async {
      // TODO
    });

    // Lists all the available properties of the provided data sync.
    //
    //Future<List<ListDataSyncProperty>> getTableDataSyncProperties(int dataSyncId, { String clientSessionId }) async
    test('test getTableDataSyncProperties', () async {
      // TODO
    });

    // Lists all the properties of the provided data sync type given the request data. This can be used to choose which properties should be included when creating the data sync.
    //
    //Future<List<ListDataSyncProperty>> getTableDataSyncTypeProperties({ DataSyncListDataSyncPropertiesRequest dataSyncListDataSyncPropertiesRequest }) async
    test('test getTableDataSyncTypeProperties', () async {
      // TODO
    });

    // Import data in the specified table if the authorized user has access to the related database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
    //
    //Future<FileImportJobTypeResponse> importDataDatabaseTableAsync(int tableId, TableImport tableImport) async
    test('test importDataDatabaseTableAsync', () async {
      // TODO
    });

    // Lists all the tables that are in the database related to the `database_id` parameter if the user has access to the database's workspace. A table is exactly as the name suggests. It can hold multiple fields, each having their own type and multiple rows. They can be added via the **create_database_table_field** and **create_database_table_row** endpoints.
    //
    //Future<List<Table>> listDatabaseTables(int databaseId) async
    test('test listDatabaseTables', () async {
      // TODO
    });

    // Changes the order of the provided table ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
    //
    //Future orderDatabaseTables(int databaseId, OrderTables orderTables, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test orderDatabaseTables', () async {
      // TODO
    });

    // Start a job to sync the data sync table with the provided `data_sync_id` parameter if the authorized user has access to the database's workspace.
    //
    //Future<SyncDataSyncTableJobTypeResponse> syncDataSyncTableAsync(int dataSyncId) async
    test('test syncDataSyncTableAsync', () async {
      // TODO
    });

    // Updates the existing table if the authorized user has access to the related database's workspace.
    //
    //Future<Table> updateDatabaseTable(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedTableUpdate patchedTableUpdate }) async
    test('test updateDatabaseTable', () async {
      // TODO
    });

    // Updates the properties of the provided data sync, if the user has the right permissions. Note that if the `synced_properties` is not provided, the available properties change, then the unavailable ones will automatically be removed.
    //
    //Future<DataSync> updateTableDataSync(int dataSyncId, { PatchedDataSyncUpdateDataSync patchedDataSyncUpdateDataSync }) async
    test('test updateTableDataSync', () async {
      // TODO
    });

  });
}
