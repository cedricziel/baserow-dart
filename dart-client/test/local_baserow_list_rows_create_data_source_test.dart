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

// tests for LocalBaserowListRowsCreateDataSource
void main() {
  // final instance = LocalBaserowListRowsCreateDataSource();

  group('test LocalBaserowListRowsCreateDataSource', () {
    // The type of the service.  * `local_baserow_get_row` - local_baserow_get_row * `local_baserow_list_rows` - local_baserow_list_rows * `local_baserow_aggregate_rows` - local_baserow_aggregate_rows * `local_baserow_upsert_row` - local_baserow_upsert_row * `local_baserow_delete_row` - local_baserow_delete_row
    // Type40dEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // Human name for this data source.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Page this data source is linked to.
    // int pageId
    test('to test the property `pageId`', () async {
      // TODO
    });

    // If provided, creates the data_source before the data_source with the given id.
    // int beforeId
    test('to test the property `beforeId`', () async {
      // TODO
    });

    // The id of the Baserow table we want the data for.
    // int tableId
    test('to test the property `tableId`', () async {
      // TODO
    });

    // The id of the Baserow integration we want the data for.
    // int integrationId
    test('to test the property `integrationId`', () async {
      // TODO
    });

    // The id of the Baserow view we want the data for.
    // int viewId
    test('to test the property `viewId`', () async {
      // TODO
    });

    // List<LocalBaserowTableServiceSort> sortings (default value: const [])
    test('to test the property `sortings`', () async {
      // TODO
    });

    // List<LocalBaserowTableServiceFilter> filters (default value: const [])
    test('to test the property `filters`', () async {
      // TODO
    });

    // Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
    // ConditionTypeEnum filterType
    test('to test the property `filterType`', () async {
      // TODO
    });

    // Any search queries to apply to the service when it is dispatched.
    // String searchQuery
    test('to test the property `searchQuery`', () async {
      // TODO
    });


  });

}
