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


/// tests for DatabaseTableGalleryViewApi
void main() {
  // final instance = DatabaseTableGalleryViewApi();

  group('tests for DatabaseTableGalleryViewApi', () {
    // Lists the requested rows of the view's table related to the provided `view_id` if the authorized user has access to the database's workspace. The response is paginated by a limit/offset style.
    //
    //Future<PaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse> listDatabaseTableGalleryViewRows(int viewId, { bool count, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, int limit, int offset, String orderBy, String search, String searchMode }) async
    test('test listDatabaseTableGalleryViewRows', () async {
      // TODO
    });

    // Lists the requested rows of the view's table related to the provided `slug` if the gallery view is public.The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  
    //
    //Future<PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse> publicListDatabaseTableGalleryViewRows(String slug, { bool count, String excludeFields, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String includeFields, int limit, int offset, String orderBy, int page, String search, String searchMode, int size }) async
    test('test publicListDatabaseTableGalleryViewRows', () async {
      // TODO
    });

  });
}
