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


/// tests for DatabaseTableRowsApi
void main() {
  // final instance = DatabaseTableRowsApi();

  group('tests for DatabaseTableRowsApi', () {
    // Creates new rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row created webhooks.
    //
    //Future<ExampleBatchRowsResponse> batchCreateDatabaseTableRows(int tableId, ExampleBatchRowsRequest exampleBatchRowsRequest, { String clientSessionId, String clientUndoRedoActionGroupId, int before, bool sendWebhookEvents, bool userFieldNames }) async
    test('test batchCreateDatabaseTableRows', () async {
      // TODO
    });

    // Deletes existing rows in the table if the user has access to the table's workspace.   **WARNING:**  This endpoint doesn't yet work with row deleted webhooks.
    //
    //Future batchDeleteDatabaseTableRows(int tableId, BatchDeleteRows batchDeleteRows, { String clientSessionId, String clientUndoRedoActionGroupId, bool sendWebhookEvents }) async
    test('test batchDeleteDatabaseTableRows', () async {
      // TODO
    });

    // Updates existing rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided for each row. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row updated webhooks.
    //
    //Future<ExampleBatchRowsResponse> batchUpdateDatabaseTableRows(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, bool sendWebhookEvents, bool userFieldNames, PatchedExampleBatchUpdateRowsRequest patchedExampleBatchUpdateRowsRequest }) async
    test('test batchUpdateDatabaseTableRows', () async {
      // TODO
    });

    // Creates a new row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
    //
    //Future<ExampleRowResponseSerializerWithUserFieldNames> createDatabaseTableRow(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, int before, bool sendWebhookEvents, bool userFieldNames, ExampleRowRequestSerializerWithUserFieldNames exampleRowRequestSerializerWithUserFieldNames }) async
    test('test createDatabaseTableRow', () async {
      // TODO
    });

    // Creates a comment on the specified row.  This is a **premium** feature.
    //
    //Future<RowComment> createRowComment(int rowId, int tableId, RowCommentCreate rowCommentCreate) async
    test('test createRowComment', () async {
      // TODO
    });

    // Deletes an existing row in the table if the user has access to the table's workspace.
    //
    //Future deleteDatabaseTableRow(int rowId, int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, bool sendWebhookEvents }) async
    test('test deleteDatabaseTableRow', () async {
      // TODO
    });

    // Delete a row comment.  This is a **premium** feature.
    //
    //Future<RowComment> deleteRowComment(int commentId, int tableId) async
    test('test deleteRowComment', () async {
      // TODO
    });

    // Fetches the adjacent row to a given row_id in the table with the given table_id. If the previous flag is set it will return the previous row, otherwise it will return the next row. You can specifya view_id and it will apply the filters and sorts of the provided view.
    //
    //Future<ExampleRowResponseSerializerWithUserFieldNames> getAdjacentDatabaseTableRow(int rowId, int tableId, { bool previous, String search, String searchMode, bool userFieldNames, int viewId }) async
    test('test getAdjacentDatabaseTableRow', () async {
      // TODO
    });

    // Fetches an existing row from the table if the user has access to the related table's workspace. The properties of the returned row depend on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
    //
    //Future<ExampleRowResponseSerializerWithUserFieldNames> getDatabaseTableRow(int rowId, int tableId, { bool userFieldNames }) async
    test('test getDatabaseTableRow', () async {
      // TODO
    });

    // Fetches the row change history of a given row_id in the table with the given table_id. The row change history is paginated and can be limited with the limit and offset query parameters.
    //
    //Future<PaginationSerializerRowHistory> getDatabaseTableRowHistory(int rowId, int tableId, { int limit, int offset }) async
    test('test getDatabaseTableRowHistory', () async {
      // TODO
    });

    // Returns all row comments for the specified table and row.  This is a **premium** feature.
    //
    //Future<PaginationSerializerRowComment> getRowComments(int rowId, int tableId, { int limit, int offset, int page, int size }) async
    test('test getRowComments', () async {
      // TODO
    });

    // Returns the names of the given row of the given tables. The nameof a row is the primary field value for this row. The result can be usedfor example, when you want to display the name of a linked row from another table.
    //
    //Future<ListDatabaseTableRowNames200Response> listDatabaseTableRowNames({ String tableLeftCurlyBracketIdRightCurlyBracket }) async
    test('test listDatabaseTableRowNames', () async {
      // TODO
    });

    // Lists all the rows of the table related to the provided parameter if the user has access to the related database's workspace. The response is paginated by a page/size style. It is also possible to provide an optional search query, only rows where the data matches the search query are going to be returned then. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
    //
    //Future<PaginationSerializerExampleRowResponseSerializerWithUserFieldNames> listDatabaseTableRows(int tableId, { String exclude, String filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String filterType, String filters, String include, String orderBy, int page, String search, String searchMode, int size, bool userFieldNames, int viewId, String leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket }) async
    test('test listDatabaseTableRows', () async {
      // TODO
    });

    // Moves the row related to given `row_id` parameter to another position. It is only possible to move the row before another existing row or to the end. If the `before_id` is provided then the row related to the `row_id` parameter is moved before that row. If the `before_id` parameter is not provided, then the row will be moved to the end.
    //
    //Future<ExampleRowResponseSerializerWithUserFieldNames> moveDatabaseTableRow(int rowId, int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, int beforeId, bool sendWebhookEvents, bool userFieldNames }) async
    test('test moveDatabaseTableRow', () async {
      // TODO
    });

    // Updates an existing row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
    //
    //Future<ExampleRowResponseSerializerWithUserFieldNames> updateDatabaseTableRow(int rowId, int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, bool sendWebhookEvents, bool userFieldNames, PatchedExampleUpdateRowRequestSerializerWithUserFieldNames patchedExampleUpdateRowRequestSerializerWithUserFieldNames }) async
    test('test updateDatabaseTableRow', () async {
      // TODO
    });

    // Update a row comment.  This is a **premium** feature.
    //
    //Future<RowComment> updateRowComment(int commentId, int tableId) async
    test('test updateRowComment', () async {
      // TODO
    });

    // Updates the user's notification preferences for comments made on a specified table row.  This is a **premium** feature.
    //
    //Future updateRowCommentNotificationMode(int rowId, int tableId, RowCommentsNotificationMode rowCommentsNotificationMode) async
    test('test updateRowCommentNotificationMode', () async {
      // TODO
    });

  });
}
