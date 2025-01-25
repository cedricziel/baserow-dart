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


/// tests for DatabaseTableViewSortingsApi
void main() {
  // final instance = DatabaseTableViewSortingsApi();

  group('tests for DatabaseTableViewSortingsApi', () {
    // Creates a new sort for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, they will be returned in the respected order defined by all the sortings.
    //
    //Future<ViewSort> createDatabaseTableViewSort(int viewId, CreateViewSort createViewSort, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test createDatabaseTableViewSort', () async {
      // TODO
    });

    // Deletes the existing sort if the authorized user has access to the related database's workspace.
    //
    //Future deleteDatabaseTableViewSort(int viewSortId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableViewSort', () async {
      // TODO
    });

    // Returns the existing view sort if the authorized user has access to the related database's workspace.
    //
    //Future<ViewSort> getDatabaseTableViewSort(int viewSortId) async
    test('test getDatabaseTableViewSort', () async {
      // TODO
    });

    // Lists all sortings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple sortings. When all the rows are requested they will be in the desired order.
    //
    //Future<List<ViewSort>> listDatabaseTableViewSortings(int viewId) async
    test('test listDatabaseTableViewSortings', () async {
      // TODO
    });

    // Updates the existing sort if the authorized user has access to the related database's workspace.
    //
    //Future<ViewSort> updateDatabaseTableViewSort(int viewSortId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedUpdateViewSort patchedUpdateViewSort }) async
    test('test updateDatabaseTableViewSort', () async {
      // TODO
    });

  });
}
