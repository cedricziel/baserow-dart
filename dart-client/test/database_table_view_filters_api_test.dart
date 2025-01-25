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


/// tests for DatabaseTableViewFiltersApi
void main() {
  // final instance = DatabaseTableViewFiltersApi();

  group('tests for DatabaseTableViewFiltersApi', () {
    // Creates a new filter for the view related to the provided `view_id` parameter. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, then only the rows that apply to all the filters are going to be returned. A filter compares the value of a field to the value of a filter. It depends on the type how values are going to be compared.
    //
    //Future<ViewFilter> createDatabaseTableViewFilter(int viewId, CreateViewFilter createViewFilter, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test createDatabaseTableViewFilter', () async {
      // TODO
    });

    // Creates a new filter group for the view related to the provided `view_id` parameter.
    //
    //Future<ViewFilterGroup> createDatabaseTableViewFilterGroup(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId, CreateViewFilterGroup createViewFilterGroup }) async
    test('test createDatabaseTableViewFilterGroup', () async {
      // TODO
    });

    // Deletes the existing filter if the authorized user has access to the related database's workspace.
    //
    //Future deleteDatabaseTableViewFilter(int viewFilterId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableViewFilter', () async {
      // TODO
    });

    // Deletes the existing filter group with the given `view_filter_group_id`.
    //
    //Future deleteDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableViewFilterGroup', () async {
      // TODO
    });

    // Returns the existing view filter.
    //
    //Future<ViewFilter> getDatabaseTableViewFilter(int viewFilterId) async
    test('test getDatabaseTableViewFilter', () async {
      // TODO
    });

    // Returns the existing view filter group with the given `view_filter_group_id`.
    //
    //Future<ViewFilterGroup> getDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId) async
    test('test getDatabaseTableViewFilterGroup', () async {
      // TODO
    });

    // Lists all filters of the view related to the provided `view_id`. A view can have multiple filters. When all the rows are requested for the view only those that apply to the filters are returned.
    //
    //Future<List<ViewFilter>> listDatabaseTableViewFilters(int viewId) async
    test('test listDatabaseTableViewFilters', () async {
      // TODO
    });

    // Updates the existing filter.
    //
    //Future<ViewFilter> updateDatabaseTableViewFilter(int viewFilterId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedUpdateViewFilter patchedUpdateViewFilter }) async
    test('test updateDatabaseTableViewFilter', () async {
      // TODO
    });

    // Updates the existing filter group with the given `view_filter_group_id`.
    //
    //Future<ViewFilterGroup> updateDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedUpdateViewFilterGroup patchedUpdateViewFilterGroup }) async
    test('test updateDatabaseTableViewFilterGroup', () async {
      // TODO
    });

  });
}
