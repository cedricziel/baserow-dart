//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableRowsApi {
  DatabaseTableRowsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates new rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row created webhooks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates the rows in the table.
  ///
  /// * [ExampleBatchRowsRequest] exampleBatchRowsRequest (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] before:
  ///   If provided then the newly created rows will be positioned before the row with the provided id.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<Response> batchCreateDatabaseTableRowsWithHttpInfo(int tableId, ExampleBatchRowsRequest exampleBatchRowsRequest, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? before, bool? sendWebhookEvents, bool? userFieldNames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/batch/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = exampleBatchRowsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates new rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row created webhooks.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates the rows in the table.
  ///
  /// * [ExampleBatchRowsRequest] exampleBatchRowsRequest (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] before:
  ///   If provided then the newly created rows will be positioned before the row with the provided id.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<ExampleBatchRowsResponse?> batchCreateDatabaseTableRows(int tableId, ExampleBatchRowsRequest exampleBatchRowsRequest, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? before, bool? sendWebhookEvents, bool? userFieldNames, }) async {
    final response = await batchCreateDatabaseTableRowsWithHttpInfo(tableId, exampleBatchRowsRequest,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, before: before, sendWebhookEvents: sendWebhookEvents, userFieldNames: userFieldNames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleBatchRowsResponse',) as ExampleBatchRowsResponse;
    
    }
    return null;
  }

  /// Deletes existing rows in the table if the user has access to the table's workspace.   **WARNING:**  This endpoint doesn't yet work with row deleted webhooks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Deletes the rows in the table related to the value.
  ///
  /// * [BatchDeleteRows] batchDeleteRows (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  Future<Response> batchDeleteDatabaseTableRowsWithHttpInfo(int tableId, BatchDeleteRows batchDeleteRows, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/batch-delete/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = batchDeleteRows;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes existing rows in the table if the user has access to the table's workspace.   **WARNING:**  This endpoint doesn't yet work with row deleted webhooks.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Deletes the rows in the table related to the value.
  ///
  /// * [BatchDeleteRows] batchDeleteRows (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  Future<void> batchDeleteDatabaseTableRows(int tableId, BatchDeleteRows batchDeleteRows, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, }) async {
    final response = await batchDeleteDatabaseTableRowsWithHttpInfo(tableId, batchDeleteRows,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, sendWebhookEvents: sendWebhookEvents, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates existing rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided for each row. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row updated webhooks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the rows in the table.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [PatchedExampleBatchUpdateRowsRequest] patchedExampleBatchUpdateRowsRequest:
  Future<Response> batchUpdateDatabaseTableRowsWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, bool? userFieldNames, PatchedExampleBatchUpdateRowsRequest? patchedExampleBatchUpdateRowsRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/batch/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedExampleBatchUpdateRowsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates existing rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided for each row. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row updated webhooks.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the rows in the table.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [PatchedExampleBatchUpdateRowsRequest] patchedExampleBatchUpdateRowsRequest:
  Future<ExampleBatchRowsResponse?> batchUpdateDatabaseTableRows(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, bool? userFieldNames, PatchedExampleBatchUpdateRowsRequest? patchedExampleBatchUpdateRowsRequest, }) async {
    final response = await batchUpdateDatabaseTableRowsWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, sendWebhookEvents: sendWebhookEvents, userFieldNames: userFieldNames, patchedExampleBatchUpdateRowsRequest: patchedExampleBatchUpdateRowsRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleBatchRowsResponse',) as ExampleBatchRowsResponse;
    
    }
    return null;
  }

  /// Creates a new row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a row in the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] before:
  ///   If provided then the newly created row will be positioned before the row with the provided id.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [ExampleRowRequestSerializerWithUserFieldNames] exampleRowRequestSerializerWithUserFieldNames:
  Future<Response> createDatabaseTableRowWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? before, bool? sendWebhookEvents, bool? userFieldNames, ExampleRowRequestSerializerWithUserFieldNames? exampleRowRequestSerializerWithUserFieldNames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = exampleRowRequestSerializerWithUserFieldNames;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a row in the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] before:
  ///   If provided then the newly created row will be positioned before the row with the provided id.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [ExampleRowRequestSerializerWithUserFieldNames] exampleRowRequestSerializerWithUserFieldNames:
  Future<ExampleRowResponseSerializerWithUserFieldNames?> createDatabaseTableRow(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? before, bool? sendWebhookEvents, bool? userFieldNames, ExampleRowRequestSerializerWithUserFieldNames? exampleRowRequestSerializerWithUserFieldNames, }) async {
    final response = await createDatabaseTableRowWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, before: before, sendWebhookEvents: sendWebhookEvents, userFieldNames: userFieldNames, exampleRowRequestSerializerWithUserFieldNames: exampleRowRequestSerializerWithUserFieldNames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleRowResponseSerializerWithUserFieldNames',) as ExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Creates a comment on the specified row.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row to create a comment for.
  ///
  /// * [int] tableId (required):
  ///   The table to find the row to comment on in.
  ///
  /// * [RowCommentCreate] rowCommentCreate (required):
  Future<Response> createRowCommentWithHttpInfo(int rowId, int tableId, RowCommentCreate rowCommentCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/row_comments/{table_id}/{row_id}/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = rowCommentCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a comment on the specified row.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row to create a comment for.
  ///
  /// * [int] tableId (required):
  ///   The table to find the row to comment on in.
  ///
  /// * [RowCommentCreate] rowCommentCreate (required):
  Future<RowComment?> createRowComment(int rowId, int tableId, RowCommentCreate rowCommentCreate,) async {
    final response = await createRowCommentWithHttpInfo(rowId, tableId, rowCommentCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RowComment',) as RowComment;
    
    }
    return null;
  }

  /// Deletes an existing row in the table if the user has access to the table's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Deletes the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Deletes the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  Future<Response> deleteDatabaseTableRowWithHttpInfo(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes an existing row in the table if the user has access to the table's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Deletes the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Deletes the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  Future<void> deleteDatabaseTableRow(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, }) async {
    final response = await deleteDatabaseTableRowWithHttpInfo(rowId, tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, sendWebhookEvents: sendWebhookEvents, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a row comment.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] commentId (required):
  ///   The row comment to delete.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  Future<Response> deleteRowCommentWithHttpInfo(int commentId, int tableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/row_comments/{table_id}/comment/{comment_id}/'
      .replaceAll('{comment_id}', commentId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a row comment.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] commentId (required):
  ///   The row comment to delete.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  Future<RowComment?> deleteRowComment(int commentId, int tableId,) async {
    final response = await deleteRowCommentWithHttpInfo(commentId, tableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RowComment',) as RowComment;
    
    }
    return null;
  }

  /// Fetches the adjacent row to a given row_id in the table with the given table_id. If the previous flag is set it will return the previous row, otherwise it will return the next row. You can specifya view_id and it will apply the filters and sorts of the provided view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Returns the row adjacent the provided value.
  ///
  /// * [int] tableId (required):
  ///   Returns the row of the table related to the provided value.
  ///
  /// * [bool] previous:
  ///   A flag query parameter which if provided returns theprevious row to the specified row_id. If it's not setit will return the next row.
  ///
  /// * [String] search:
  ///   If provided, the adjacent row will be one that matchesthe search query.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [int] viewId:
  ///   Applies the filters and sorts of the provided view.
  Future<Response> getAdjacentDatabaseTableRowWithHttpInfo(int rowId, int tableId, { bool? previous, String? search, String? searchMode, bool? userFieldNames, int? viewId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/adjacent/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (previous != null) {
      queryParams.addAll(_queryParams('', 'previous', previous));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'search_mode', searchMode));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }
    if (viewId != null) {
      queryParams.addAll(_queryParams('', 'view_id', viewId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches the adjacent row to a given row_id in the table with the given table_id. If the previous flag is set it will return the previous row, otherwise it will return the next row. You can specifya view_id and it will apply the filters and sorts of the provided view.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Returns the row adjacent the provided value.
  ///
  /// * [int] tableId (required):
  ///   Returns the row of the table related to the provided value.
  ///
  /// * [bool] previous:
  ///   A flag query parameter which if provided returns theprevious row to the specified row_id. If it's not setit will return the next row.
  ///
  /// * [String] search:
  ///   If provided, the adjacent row will be one that matchesthe search query.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [int] viewId:
  ///   Applies the filters and sorts of the provided view.
  Future<ExampleRowResponseSerializerWithUserFieldNames?> getAdjacentDatabaseTableRow(int rowId, int tableId, { bool? previous, String? search, String? searchMode, bool? userFieldNames, int? viewId, }) async {
    final response = await getAdjacentDatabaseTableRowWithHttpInfo(rowId, tableId,  previous: previous, search: search, searchMode: searchMode, userFieldNames: userFieldNames, viewId: viewId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleRowResponseSerializerWithUserFieldNames',) as ExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Fetches an existing row from the table if the user has access to the related table's workspace. The properties of the returned row depend on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Returns the row related the provided value.
  ///
  /// * [int] tableId (required):
  ///   Returns the row of the table related to the provided value.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<Response> getDatabaseTableRowWithHttpInfo(int rowId, int tableId, { bool? userFieldNames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches an existing row from the table if the user has access to the related table's workspace. The properties of the returned row depend on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Returns the row related the provided value.
  ///
  /// * [int] tableId (required):
  ///   Returns the row of the table related to the provided value.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<ExampleRowResponseSerializerWithUserFieldNames?> getDatabaseTableRow(int rowId, int tableId, { bool? userFieldNames, }) async {
    final response = await getDatabaseTableRowWithHttpInfo(rowId, tableId,  userFieldNames: userFieldNames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleRowResponseSerializerWithUserFieldNames',) as ExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Fetches the row change history of a given row_id in the table with the given table_id. The row change history is paginated and can be limited with the limit and offset query parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The id of the row to fetch the change history from.
  ///
  /// * [int] tableId (required):
  ///   The id of the table to fetch the row change history from.
  ///
  /// * [int] limit:
  ///   The maximum number of row change history entries to return.
  ///
  /// * [int] offset:
  ///   The offset of the row change history entries to return.
  Future<Response> getDatabaseTableRowHistoryWithHttpInfo(int rowId, int tableId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/history/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetches the row change history of a given row_id in the table with the given table_id. The row change history is paginated and can be limited with the limit and offset query parameters.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The id of the row to fetch the change history from.
  ///
  /// * [int] tableId (required):
  ///   The id of the table to fetch the row change history from.
  ///
  /// * [int] limit:
  ///   The maximum number of row change history entries to return.
  ///
  /// * [int] offset:
  ///   The offset of the row change history entries to return.
  Future<PaginationSerializerRowHistory?> getDatabaseTableRowHistory(int rowId, int tableId, { int? limit, int? offset, }) async {
    final response = await getDatabaseTableRowHistoryWithHttpInfo(rowId, tableId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerRowHistory',) as PaginationSerializerRowHistory;
    
    }
    return null;
  }

  /// Returns all row comments for the specified table and row.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row to get row comments for.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<Response> getRowCommentsWithHttpInfo(int rowId, int tableId, { int? limit, int? offset, int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/row_comments/{table_id}/{row_id}/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns all row comments for the specified table and row.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row to get row comments for.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<PaginationSerializerRowComment?> getRowComments(int rowId, int tableId, { int? limit, int? offset, int? page, int? size, }) async {
    final response = await getRowCommentsWithHttpInfo(rowId, tableId,  limit: limit, offset: offset, page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerRowComment',) as PaginationSerializerRowComment;
    
    }
    return null;
  }

  /// Returns the names of the given row of the given tables. The nameof a row is the primary field value for this row. The result can be usedfor example, when you want to display the name of a linked row from another table.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tableLeftCurlyBracketIdRightCurlyBracket:
  ///   A list of comma separated row ids to query from the table with id {id}. For example, if you want the name of row `42` and `43` from table `28` this parameter will be `table__28=42,43`. You can specify multiple rows for different tables but every tables must be in the same database. You need at least read permission on all specified tables.
  Future<Response> listDatabaseTableRowNamesWithHttpInfo({ String? tableLeftCurlyBracketIdRightCurlyBracket, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/names/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tableLeftCurlyBracketIdRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'table__{id}', tableLeftCurlyBracketIdRightCurlyBracket));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the names of the given row of the given tables. The nameof a row is the primary field value for this row. The result can be usedfor example, when you want to display the name of a linked row from another table.
  ///
  /// Parameters:
  ///
  /// * [String] tableLeftCurlyBracketIdRightCurlyBracket:
  ///   A list of comma separated row ids to query from the table with id {id}. For example, if you want the name of row `42` and `43` from table `28` this parameter will be `table__28=42,43`. You can specify multiple rows for different tables but every tables must be in the same database. You need at least read permission on all specified tables.
  Future<ListDatabaseTableRowNames200Response?> listDatabaseTableRowNames({ String? tableLeftCurlyBracketIdRightCurlyBracket, }) async {
    final response = await listDatabaseTableRowNamesWithHttpInfo( tableLeftCurlyBracketIdRightCurlyBracket: tableLeftCurlyBracketIdRightCurlyBracket, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListDatabaseTableRowNames200Response',) as ListDatabaseTableRowNames200Response;
    
    }
    return null;
  }

  /// Lists all the rows of the table related to the provided parameter if the user has access to the related database's workspace. The response is paginated by a page/size style. It is also possible to provide an optional search query, only rows where the data matches the search query are going to be returned then. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns the rows of the table related to the provided value.
  ///
  /// * [String] exclude:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude query parameter. If you for example provide the following GET parameter `exclude=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. If the `user_field_names` parameter is provided then instead exclude should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `exclude=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `exclude=My Field,Field with \\\"`.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] include:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the include query parameter. If you for example provide the following GET parameter `include=field_1,field_2` then only the fields withid `1` and id `2` are going to be selected and included in the response. If the `user_field_names` parameter is provided then instead include should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `include=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `include=My Field,Field with \\\"`.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A). If the `user_field_names` parameter is provided then instead order_by should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `order_by=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `order_by=My Field,Field with \\\"`.
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Defines how many rows should be returned per page.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [int] viewId:
  ///   Includes all the filters and sorts of the provided view.
  ///
  /// * [String] leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket:
  ///   This parameter allows you to request a lookup of field values from a target table through existing link row fields. The parameter name has to be the name of an existing link row field, followed by `__join`. The value should be a list of field names for which we want to lookup additional values. You can provide one or multiple target fields. It is not possible to lookup a value of a link row field in the target table. If `user_field_names` parameter is set, the names of the fields should be user field names. In this case the resulting field names in the output will also be user field names. The used link row field has to be among the requested fields if using the `include` or `exclude` parameters.
  Future<Response> listDatabaseTableRowsWithHttpInfo(int tableId, { String? exclude, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? orderBy, int? page, String? search, String? searchMode, int? size, bool? userFieldNames, int? viewId, String? leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }
    if (filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'filter__{field}__{filter}', filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket));
    }
    if (filterType != null) {
      queryParams.addAll(_queryParams('', 'filter_type', filterType));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'search_mode', searchMode));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }
    if (viewId != null) {
      queryParams.addAll(_queryParams('', 'view_id', viewId));
    }
    if (leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', '{link_row_field}__join={target_field},{target_field2}', leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Lists all the rows of the table related to the provided parameter if the user has access to the related database's workspace. The response is paginated by a page/size style. It is also possible to provide an optional search query, only rows where the data matches the search query are going to be returned then. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns the rows of the table related to the provided value.
  ///
  /// * [String] exclude:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude query parameter. If you for example provide the following GET parameter `exclude=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. If the `user_field_names` parameter is provided then instead exclude should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `exclude=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `exclude=My Field,Field with \\\"`.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] include:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the include query parameter. If you for example provide the following GET parameter `include=field_1,field_2` then only the fields withid `1` and id `2` are going to be selected and included in the response. If the `user_field_names` parameter is provided then instead include should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `include=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `include=My Field,Field with \\\"`.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A). If the `user_field_names` parameter is provided then instead order_by should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `order_by=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `order_by=My Field,Field with \\\"`.
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Defines how many rows should be returned per page.
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [int] viewId:
  ///   Includes all the filters and sorts of the provided view.
  ///
  /// * [String] leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket:
  ///   This parameter allows you to request a lookup of field values from a target table through existing link row fields. The parameter name has to be the name of an existing link row field, followed by `__join`. The value should be a list of field names for which we want to lookup additional values. You can provide one or multiple target fields. It is not possible to lookup a value of a link row field in the target table. If `user_field_names` parameter is set, the names of the fields should be user field names. In this case the resulting field names in the output will also be user field names. The used link row field has to be among the requested fields if using the `include` or `exclude` parameters.
  Future<PaginationSerializerExampleRowResponseSerializerWithUserFieldNames?> listDatabaseTableRows(int tableId, { String? exclude, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? orderBy, int? page, String? search, String? searchMode, int? size, bool? userFieldNames, int? viewId, String? leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket, }) async {
    final response = await listDatabaseTableRowsWithHttpInfo(tableId,  exclude: exclude, filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, include: include, orderBy: orderBy, page: page, search: search, searchMode: searchMode, size: size, userFieldNames: userFieldNames, viewId: viewId, leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket: leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerExampleRowResponseSerializerWithUserFieldNames',) as PaginationSerializerExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Moves the row related to given `row_id` parameter to another position. It is only possible to move the row before another existing row or to the end. If the `before_id` is provided then the row related to the `row_id` parameter is moved before that row. If the `before_id` parameter is not provided, then the row will be moved to the end.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Moves the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Moves the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] beforeId:
  ///   Moves the row related to the given `row_id` before the row related to the provided value. If not provided, then the row will be moved to the end.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<Response> moveDatabaseTableRowWithHttpInfo(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? beforeId, bool? sendWebhookEvents, bool? userFieldNames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/move/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (beforeId != null) {
      queryParams.addAll(_queryParams('', 'before_id', beforeId));
    }
    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Moves the row related to given `row_id` parameter to another position. It is only possible to move the row before another existing row or to the end. If the `before_id` is provided then the row related to the `row_id` parameter is moved before that row. If the `before_id` parameter is not provided, then the row will be moved to the end.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Moves the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Moves the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [int] beforeId:
  ///   Moves the row related to the given `row_id` before the row related to the provided value. If not provided, then the row will be moved to the end.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  Future<ExampleRowResponseSerializerWithUserFieldNames?> moveDatabaseTableRow(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, int? beforeId, bool? sendWebhookEvents, bool? userFieldNames, }) async {
    final response = await moveDatabaseTableRowWithHttpInfo(rowId, tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, beforeId: beforeId, sendWebhookEvents: sendWebhookEvents, userFieldNames: userFieldNames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleRowResponseSerializerWithUserFieldNames',) as ExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Updates an existing row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Updates the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Updates the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [PatchedExampleUpdateRowRequestSerializerWithUserFieldNames] patchedExampleUpdateRowRequestSerializerWithUserFieldNames:
  Future<Response> updateDatabaseTableRowWithHttpInfo(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, bool? userFieldNames, PatchedExampleUpdateRowRequestSerializerWithUserFieldNames? patchedExampleUpdateRowRequestSerializerWithUserFieldNames, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/rows/table/{table_id}/{row_id}/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedExampleUpdateRowRequestSerializerWithUserFieldNames;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendWebhookEvents != null) {
      queryParams.addAll(_queryParams('', 'send_webhook_events', sendWebhookEvents));
    }
    if (userFieldNames != null) {
      queryParams.addAll(_queryParams('', 'user_field_names', userFieldNames));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates an existing row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   Updates the row related to the value.
  ///
  /// * [int] tableId (required):
  ///   Updates the row in the table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [bool] sendWebhookEvents:
  ///   A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
  ///
  /// * [bool] userFieldNames:
  ///   A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
  ///
  /// * [PatchedExampleUpdateRowRequestSerializerWithUserFieldNames] patchedExampleUpdateRowRequestSerializerWithUserFieldNames:
  Future<ExampleRowResponseSerializerWithUserFieldNames?> updateDatabaseTableRow(int rowId, int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, bool? sendWebhookEvents, bool? userFieldNames, PatchedExampleUpdateRowRequestSerializerWithUserFieldNames? patchedExampleUpdateRowRequestSerializerWithUserFieldNames, }) async {
    final response = await updateDatabaseTableRowWithHttpInfo(rowId, tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, sendWebhookEvents: sendWebhookEvents, userFieldNames: userFieldNames, patchedExampleUpdateRowRequestSerializerWithUserFieldNames: patchedExampleUpdateRowRequestSerializerWithUserFieldNames, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExampleRowResponseSerializerWithUserFieldNames',) as ExampleRowResponseSerializerWithUserFieldNames;
    
    }
    return null;
  }

  /// Update a row comment.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] commentId (required):
  ///   The row comment to update.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  Future<Response> updateRowCommentWithHttpInfo(int commentId, int tableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/row_comments/{table_id}/comment/{comment_id}/'
      .replaceAll('{comment_id}', commentId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a row comment.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] commentId (required):
  ///   The row comment to update.
  ///
  /// * [int] tableId (required):
  ///   The table the row is in.
  Future<RowComment?> updateRowComment(int commentId, int tableId,) async {
    final response = await updateRowCommentWithHttpInfo(commentId, tableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RowComment',) as RowComment;
    
    }
    return null;
  }

  /// Updates the user's notification preferences for comments made on a specified table row.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row on which to manage the comment subscription.
  ///
  /// * [int] tableId (required):
  ///   The table id where the row is in.
  ///
  /// * [RowCommentsNotificationMode] rowCommentsNotificationMode (required):
  Future<Response> updateRowCommentNotificationModeWithHttpInfo(int rowId, int tableId, RowCommentsNotificationMode rowCommentsNotificationMode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/row_comments/{table_id}/{row_id}/notification-mode/'
      .replaceAll('{row_id}', rowId.toString())
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = rowCommentsNotificationMode;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates the user's notification preferences for comments made on a specified table row.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] rowId (required):
  ///   The row on which to manage the comment subscription.
  ///
  /// * [int] tableId (required):
  ///   The table id where the row is in.
  ///
  /// * [RowCommentsNotificationMode] rowCommentsNotificationMode (required):
  Future<void> updateRowCommentNotificationMode(int rowId, int tableId, RowCommentsNotificationMode rowCommentsNotificationMode,) async {
    final response = await updateRowCommentNotificationModeWithHttpInfo(rowId, tableId, rowCommentsNotificationMode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
