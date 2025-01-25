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


/// tests for DatabaseTableTimelineViewApi
void main() {
  // final instance = DatabaseTableTimelineViewApi();

  group('tests for DatabaseTableTimelineViewApi', () {
    // Lists the requested rows of the view's table related to the provided `view_id` if the authorized user has access to the database's workspace. The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  The filters and sortings are automatically applied. To get a full overview of the applied filters and sortings you can use the `list_database_table_view_filters` and `list_database_table_view_sortings` endpoints.  This is a **premium** feature.
    //
    //Future<PaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse> listDatabaseTableTimelineViewRows(int viewId, { bool count, String excludeFields, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String includeFields, int limit, int offset, String orderBy, int page, String search, String searchMode, int size }) async
    test('test listDatabaseTableTimelineViewRows', () async {
      // TODO
    });

    // Lists the requested rows of the view's table related to the provided `slug` if the timeline view is public.The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  
    //
    //Future<PublicPaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse> publicListDatabaseTableTimelineViewRows(String slug, { bool count, String excludeFields, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String includeFields, int limit, int offset, String orderBy, int page, String search, String searchMode, int size }) async
    test('test publicListDatabaseTableTimelineViewRows', () async {
      // TODO
    });

  });
}
