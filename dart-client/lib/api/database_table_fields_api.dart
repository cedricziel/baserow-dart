//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableFieldsApi {
  DatabaseTableFieldsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Changes the primary field of a table to the one provided in the body payload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table where to update the primary field in.
  ///
  /// * [ChangePrimaryFieldParams] changePrimaryFieldParams (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> changePrimaryFieldWithHttpInfo(int tableId, ChangePrimaryFieldParams changePrimaryFieldParams, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/table/{table_id}/change-primary-field/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = changePrimaryFieldParams;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Changes the primary field of a table to the one provided in the body payload.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table where to update the primary field in.
  ///
  /// * [ChangePrimaryFieldParams] changePrimaryFieldParams (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<FieldField?> changePrimaryField(int tableId, ChangePrimaryFieldParams changePrimaryFieldParams, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await changePrimaryFieldWithHttpInfo(tableId, changePrimaryFieldParams,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FieldField',) as FieldField;
    
    }
    return null;
  }

  /// Creates a new field for the table related to the provided `table_id` parameter if the authorized user has access to the related database's workspace. Depending on the type, different properties can optionally be set.If creating the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a new field for the provided table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [FieldCreateField] fieldCreateField:
  Future<Response> createDatabaseTableFieldWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, FieldCreateField? fieldCreateField, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = fieldCreateField;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Creates a new field for the table related to the provided `table_id` parameter if the authorized user has access to the related database's workspace. Depending on the type, different properties can optionally be set.If creating the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a new field for the provided table related to the value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [FieldCreateField] fieldCreateField:
  Future<FieldFieldSerializerWithRelatedFields?> createDatabaseTableField(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, FieldCreateField? fieldCreateField, }) async {
    final response = await createDatabaseTableFieldWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, fieldCreateField: fieldCreateField, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FieldFieldSerializerWithRelatedFields',) as FieldFieldSerializerWithRelatedFields;
    
    }
    return null;
  }

  /// Deletes the existing field if the authorized user has access to the related database's workspace. Note that all the related data to that field is also deleted. Primary fields cannot be deleted because their value represents the row. If deleting the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Deletes the field related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableFieldWithHttpInfo(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Deletes the existing field if the authorized user has access to the related database's workspace. Note that all the related data to that field is also deleted. Primary fields cannot be deleted because their value represents the row. If deleting the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Deletes the field related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<RelatedFields?> deleteDatabaseTableField(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableFieldWithHttpInfo(fieldId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RelatedFields',) as RelatedFields;
    
    }
    return null;
  }

  /// Duplicates the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> duplicateTableFieldWithHttpInfo(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/duplicate/async/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


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

  /// Duplicates the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<DuplicateFieldJobTypeResponse?> duplicateTableField(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await duplicateTableFieldWithHttpInfo(fieldId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DuplicateFieldJobTypeResponse',) as DuplicateFieldJobTypeResponse;
    
    }
    return null;
  }

  /// This endpoint generates a Baserow formula for the table related to the provided id, based on the human readable input provided in the request body. This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table to generate the formula for.
  ///
  /// * [GenerateFormulaWithAIRequest] generateFormulaWithAIRequest (required):
  Future<Response> generateFormulaWithAiWithHttpInfo(int tableId, GenerateFormulaWithAIRequest generateFormulaWithAIRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/table/{table_id}/generate-ai-formula/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = generateFormulaWithAIRequest;

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

  /// This endpoint generates a Baserow formula for the table related to the provided id, based on the human readable input provided in the request body. This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table to generate the formula for.
  ///
  /// * [GenerateFormulaWithAIRequest] generateFormulaWithAIRequest (required):
  Future<GenerateFormulaWithAIResponse?> generateFormulaWithAi(int tableId, GenerateFormulaWithAIRequest generateFormulaWithAIRequest,) async {
    final response = await generateFormulaWithAiWithHttpInfo(tableId, generateFormulaWithAIRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerateFormulaWithAIResponse',) as GenerateFormulaWithAIResponse;
    
    }
    return null;
  }

  /// Endpoint that's used by the AI field to start an sync task that will update the cell value of the provided row IDs based on the dynamically constructed prompt configured in the field settings.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field to generate the value for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> generateTableAiFieldValueWithHttpInfo(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/generate-ai-field-values/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


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

  /// Endpoint that's used by the AI field to start an sync task that will update the cell value of the provided row IDs based on the dynamically constructed prompt configured in the field settings.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field to generate the value for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<String?> generateTableAiFieldValue(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await generateTableAiFieldValueWithHttpInfo(fieldId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Returns a list of all the unique row values for an existing field, sorted in order of frequency.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Returns the values related to the provided field.
  ///
  /// * [int] limit:
  ///   Defines how many values should be returned.
  ///
  /// * [bool] splitCommaSeparated:
  ///   Indicates whether the original column values must be splitted by comma.
  Future<Response> getDatabaseFieldUniqueRowValuesWithHttpInfo(int fieldId, { int? limit, bool? splitCommaSeparated, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/unique_row_values/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (splitCommaSeparated != null) {
      queryParams.addAll(_queryParams('', 'split_comma_separated', splitCommaSeparated));
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

  /// Returns a list of all the unique row values for an existing field, sorted in order of frequency.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Returns the values related to the provided field.
  ///
  /// * [int] limit:
  ///   Defines how many values should be returned.
  ///
  /// * [bool] splitCommaSeparated:
  ///   Indicates whether the original column values must be splitted by comma.
  Future<UniqueRowValues?> getDatabaseFieldUniqueRowValues(int fieldId, { int? limit, bool? splitCommaSeparated, }) async {
    final response = await getDatabaseFieldUniqueRowValuesWithHttpInfo(fieldId,  limit: limit, splitCommaSeparated: splitCommaSeparated, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UniqueRowValues',) as UniqueRowValues;
    
    }
    return null;
  }

  /// Returns the existing field if the authorized user has access to the related database's workspace. Depending on the type different properties could be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Returns the field related to the provided value.
  Future<Response> getDatabaseTableFieldWithHttpInfo(int fieldId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Returns the existing field if the authorized user has access to the related database's workspace. Depending on the type different properties could be returned.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Returns the field related to the provided value.
  Future<FieldField?> getDatabaseTableField(int fieldId,) async {
    final response = await getDatabaseTableFieldWithHttpInfo(fieldId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FieldField',) as FieldField;
    
    }
    return null;
  }

  /// Lists all the fields of the table related to the provided parameter if the user has access to the related database's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible. A table consists of fields and each field can have a different type. Each type can have different properties. A field is comparable with a regular table's column.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only the fields of the table related to the provided value.
  Future<Response> listDatabaseTableFieldsWithHttpInfo(int tableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Lists all the fields of the table related to the provided parameter if the user has access to the related database's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible. A table consists of fields and each field can have a different type. Each type can have different properties. A field is comparable with a regular table's column.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only the fields of the table related to the provided value.
  Future<List<FieldField>?> listDatabaseTableFields(int tableId,) async {
    final response = await listDatabaseTableFieldsWithHttpInfo(tableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FieldField>') as List)
        .cast<FieldField>()
        .toList(growable: false);

    }
    return null;
  }

  /// Calculates and returns the type of the specified formula value. Does not change the state of the field in any way.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table id of the formula field to type.
  ///
  /// * [TypeFormulaRequest] typeFormulaRequest (required):
  Future<Response> typeFormulaFieldWithHttpInfo(int tableId, TypeFormulaRequest typeFormulaRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/formula/{table_id}/type/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = typeFormulaRequest;

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

  /// Calculates and returns the type of the specified formula value. Does not change the state of the field in any way.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table id of the formula field to type.
  ///
  /// * [TypeFormulaRequest] typeFormulaRequest (required):
  Future<TypeFormulaResult?> typeFormulaField(int tableId, TypeFormulaRequest typeFormulaRequest,) async {
    final response = await typeFormulaFieldWithHttpInfo(tableId, typeFormulaRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TypeFormulaResult',) as TypeFormulaResult;
    
    }
    return null;
  }

  /// Updates the existing field if the authorized user has access to the related database's workspace. The type can also be changed and depending on that type, different additional properties can optionally be set. If you change the field type it could happen that the data conversion fails, in that case the `ERROR_CANNOT_CHANGE_FIELD_TYPE` is returned, but this rarely happens. If a data value cannot be converted it is set to `null` so data might go lost.If updated the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Updates the field related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedFieldUpdateField] patchedFieldUpdateField:
  Future<Response> updateDatabaseTableFieldWithHttpInfo(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedFieldUpdateField? patchedFieldUpdateField, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/fields/{field_id}/'
      .replaceAll('{field_id}', fieldId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedFieldUpdateField;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Updates the existing field if the authorized user has access to the related database's workspace. The type can also be changed and depending on that type, different additional properties can optionally be set. If you change the field type it could happen that the data conversion fails, in that case the `ERROR_CANNOT_CHANGE_FIELD_TYPE` is returned, but this rarely happens. If a data value cannot be converted it is set to `null` so data might go lost.If updated the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   Updates the field related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedFieldUpdateField] patchedFieldUpdateField:
  Future<FieldFieldSerializerWithRelatedFields?> updateDatabaseTableField(int fieldId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedFieldUpdateField? patchedFieldUpdateField, }) async {
    final response = await updateDatabaseTableFieldWithHttpInfo(fieldId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedFieldUpdateField: patchedFieldUpdateField, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FieldFieldSerializerWithRelatedFields',) as FieldFieldSerializerWithRelatedFields;
    
    }
    return null;
  }
}
