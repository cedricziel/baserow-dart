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


/// tests for DatabaseTableGridViewApi
void main() {
  // final instance = DatabaseTableGridViewApi();

  group('tests for DatabaseTableGridViewApi', () {
    // Lists only the rows and fields that match the request. Only the rows with the ids that are in the `row_ids` list are going to be returned. Same goes for the fields, only the fields with the ids in the `field_ids` are going to be returned. This endpoint could be used to refresh data after changes something. For example in the web frontend after changing a field type, the data of the related cells will be refreshed using this endpoint. In the example all field types are listed, but normally  the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.
    //
    //Future<List<ExampleRowResponse>> filterDatabaseTableGridViewRows(int viewId, GridViewFilter gridViewFilter) async
    test('test filterDatabaseTableGridViewRows', () async {
      // TODO
    });

    // Computes the aggregation of all the values for a specified field from the selected grid view. You must select the aggregation type by setting the `type` GET parameter. If filters are configured for the selected view, the aggregation is calculated only on filtered rows. You need to have read permissions on the view to request an aggregation.
    //
    //Future<GetDatabaseTableGridViewFieldAggregation200Response> getDatabaseTableGridViewFieldAggregation(int fieldId, int viewId, { String include, String type }) async
    test('test getDatabaseTableGridViewFieldAggregation', () async {
      // TODO
    });

    // Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.You need to have read permissions on the view to request aggregations.
    //
    //Future<GetDatabaseTablePublicGridViewFieldAggregations200Response> getDatabaseTableGridViewFieldAggregations(int viewId, { String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String search, String searchMode }) async
    test('test getDatabaseTableGridViewFieldAggregations', () async {
      // TODO
    });

    // Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.
    //
    //Future<GetDatabaseTablePublicGridViewFieldAggregations200Response> getDatabaseTablePublicGridViewFieldAggregations(String slug, { String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String search, String searchMode }) async
    test('test getDatabaseTablePublicGridViewFieldAggregations', () async {
      // TODO
    });

    // Lists the requested rows of the view's table related to the provided `view_id` if the authorized user has access to the database's workspace. The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  The filters and sortings are automatically applied. To get a full overview of the applied filters and sortings you can use the `list_database_table_view_filters` and `list_database_table_view_sortings` endpoints.
    //
    //Future<PaginationSerializerWithGridViewFieldOptionsExampleRowResponse> listDatabaseTableGridViewRows(int viewId, { bool count, String excludeFields, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String includeFields, int limit, int offset, String orderBy, int page, String search, String searchMode, int size }) async
    test('test listDatabaseTableGridViewRows', () async {
      // TODO
    });

    // Lists the requested rows of the view's table related to the provided `slug` if the grid view is public.The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  
    //
    //Future<PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse> publicListDatabaseTableGridViewRows(String slug, { bool count, String excludeFields, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String groupBy, String include, String includeFields, int limit, int offset, String orderBy, int page, String search, String searchMode, int size }) async
    test('test publicListDatabaseTableGridViewRows', () async {
      // TODO
    });

  });
}
