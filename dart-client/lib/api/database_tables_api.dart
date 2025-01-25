//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTablesApi {
  DatabaseTablesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new data sync table with the given data sync type. This will technically create a table, but it's synchronized with the provided data sync information. This means that some fields related to it will automatically be created and will be read-only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a data sync table for the database related to theprovided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [DataSyncCreateDataSync] dataSyncCreateDataSync:
  Future<Response> createDatabaseDataSyncTableWithHttpInfo(int databaseId, { String? clientSessionId, String? clientUndoRedoActionGroupId, DataSyncCreateDataSync? dataSyncCreateDataSync, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/database/{database_id}/'
      .replaceAll('{database_id}', databaseId.toString());

    // ignore: prefer_final_locals
    Object? postBody = dataSyncCreateDataSync;

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

  /// Creates a new data sync table with the given data sync type. This will technically create a table, but it's synchronized with the provided data sync information. This means that some fields related to it will automatically be created and will be read-only.
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a data sync table for the database related to theprovided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [DataSyncCreateDataSync] dataSyncCreateDataSync:
  Future<Table?> createDatabaseDataSyncTable(int databaseId, { String? clientSessionId, String? clientUndoRedoActionGroupId, DataSyncCreateDataSync? dataSyncCreateDataSync, }) async {
    final response = await createDatabaseDataSyncTableWithHttpInfo(databaseId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, dataSyncCreateDataSync: dataSyncCreateDataSync, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Table',) as Table;
    
    }
    return null;
  }

  /// Creates synchronously a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace.  As an alternative you can use the `create_async_database_table` for better performances and importing bigger files.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a table for the database related to the provided value.
  ///
  /// * [TableCreate] tableCreate (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> createDatabaseTableWithHttpInfo(int databaseId, TableCreate tableCreate, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/database/{database_id}/'
      .replaceAll('{database_id}', databaseId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tableCreate;

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

  /// Creates synchronously a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace.  As an alternative you can use the `create_async_database_table` for better performances and importing bigger files.
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a table for the database related to the provided value.
  ///
  /// * [TableCreate] tableCreate (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Table?> createDatabaseTable(int databaseId, TableCreate tableCreate, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await createDatabaseTableWithHttpInfo(databaseId, tableCreate,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Table',) as Table;
    
    }
    return null;
  }

  /// Creates a job that creates a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a table for the database related to the provided value.
  ///
  /// * [TableCreate] tableCreate (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> createDatabaseTableAsyncWithHttpInfo(int databaseId, TableCreate tableCreate, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/database/{database_id}/async/'
      .replaceAll('{database_id}', databaseId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tableCreate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
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

  /// Creates a job that creates a new table for the database related to the provided `database_id` parameter if the authorized user has access to the database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Creates a table for the database related to the provided value.
  ///
  /// * [TableCreate] tableCreate (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<FileImportJobTypeResponse?> createDatabaseTableAsync(int databaseId, TableCreate tableCreate, { String? clientSessionId, }) async {
    final response = await createDatabaseTableAsyncWithHttpInfo(databaseId, tableCreate,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileImportJobTypeResponse',) as FileImportJobTypeResponse;
    
    }
    return null;
  }

  /// Deletes the existing table if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Deletes the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

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

  /// Deletes the existing table if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Deletes the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTable(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a job to duplicate the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> duplicateDatabaseTableAsyncWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/{table_id}/duplicate/async/'
      .replaceAll('{table_id}', tableId.toString());

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

  /// Start a job to duplicate the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<DuplicateTableJobTypeResponse?> duplicateDatabaseTableAsync(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await duplicateDatabaseTableAsyncWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DuplicateTableJobTypeResponse',) as DuplicateTableJobTypeResponse;
    
    }
    return null;
  }

  /// Returns the requested table if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns the table related to the provided value.
  Future<Response> getDatabaseTableWithHttpInfo(int tableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/{table_id}/'
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

  /// Returns the requested table if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns the table related to the provided value.
  Future<Table?> getDatabaseTable(int tableId,) async {
    final response = await getDatabaseTableWithHttpInfo(tableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Table',) as Table;
    
    }
    return null;
  }

  /// Responds with the data sync, including the data sync type specific properties, if the user has the right permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   The data sync that must be fetched.
  Future<Response> getTableDataSyncWithHttpInfo(int dataSyncId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/{data_sync_id}/'
      .replaceAll('{data_sync_id}', dataSyncId.toString());

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

  /// Responds with the data sync, including the data sync type specific properties, if the user has the right permissions.
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   The data sync that must be fetched.
  Future<DataSyncDataSync?> getTableDataSync(int dataSyncId,) async {
    final response = await getTableDataSyncWithHttpInfo(dataSyncId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataSyncDataSync',) as DataSyncDataSync;
    
    }
    return null;
  }

  /// Lists all the available properties of the provided data sync.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Lists properties related to the provided ID.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> getTableDataSyncPropertiesWithHttpInfo(int dataSyncId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/{data_sync_id}/properties/'
      .replaceAll('{data_sync_id}', dataSyncId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
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

  /// Lists all the available properties of the provided data sync.
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Lists properties related to the provided ID.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<List<ListDataSyncProperty>?> getTableDataSyncProperties(int dataSyncId, { String? clientSessionId, }) async {
    final response = await getTableDataSyncPropertiesWithHttpInfo(dataSyncId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListDataSyncProperty>') as List)
        .cast<ListDataSyncProperty>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all the properties of the provided data sync type given the request data. This can be used to choose which properties should be included when creating the data sync.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DataSyncListDataSyncPropertiesRequest] dataSyncListDataSyncPropertiesRequest:
  Future<Response> getTableDataSyncTypePropertiesWithHttpInfo({ DataSyncListDataSyncPropertiesRequest? dataSyncListDataSyncPropertiesRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/properties/';

    // ignore: prefer_final_locals
    Object? postBody = dataSyncListDataSyncPropertiesRequest;

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

  /// Lists all the properties of the provided data sync type given the request data. This can be used to choose which properties should be included when creating the data sync.
  ///
  /// Parameters:
  ///
  /// * [DataSyncListDataSyncPropertiesRequest] dataSyncListDataSyncPropertiesRequest:
  Future<List<ListDataSyncProperty>?> getTableDataSyncTypeProperties({ DataSyncListDataSyncPropertiesRequest? dataSyncListDataSyncPropertiesRequest, }) async {
    final response = await getTableDataSyncTypePropertiesWithHttpInfo( dataSyncListDataSyncPropertiesRequest: dataSyncListDataSyncPropertiesRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListDataSyncProperty>') as List)
        .cast<ListDataSyncProperty>()
        .toList(growable: false);

    }
    return null;
  }

  /// Import data in the specified table if the authorized user has access to the related database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Import data into the table related to the provided value.
  ///
  /// * [TableImport] tableImport (required):
  Future<Response> importDataDatabaseTableAsyncWithHttpInfo(int tableId, TableImport tableImport,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/{table_id}/import/async/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tableImport;

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

  /// Import data in the specified table if the authorized user has access to the related database's workspace. This endpoint is asynchronous and return the created job to track the progress of the task.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Import data into the table related to the provided value.
  ///
  /// * [TableImport] tableImport (required):
  Future<FileImportJobTypeResponse?> importDataDatabaseTableAsync(int tableId, TableImport tableImport,) async {
    final response = await importDataDatabaseTableAsyncWithHttpInfo(tableId, tableImport,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileImportJobTypeResponse',) as FileImportJobTypeResponse;
    
    }
    return null;
  }

  /// Lists all the tables that are in the database related to the `database_id` parameter if the user has access to the database's workspace. A table is exactly as the name suggests. It can hold multiple fields, each having their own type and multiple rows. They can be added via the **create_database_table_field** and **create_database_table_row** endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Returns only tables that are related to the provided value.
  Future<Response> listDatabaseTablesWithHttpInfo(int databaseId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/database/{database_id}/'
      .replaceAll('{database_id}', databaseId.toString());

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

  /// Lists all the tables that are in the database related to the `database_id` parameter if the user has access to the database's workspace. A table is exactly as the name suggests. It can hold multiple fields, each having their own type and multiple rows. They can be added via the **create_database_table_field** and **create_database_table_row** endpoints.
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Returns only tables that are related to the provided value.
  Future<List<Table>?> listDatabaseTables(int databaseId,) async {
    final response = await listDatabaseTablesWithHttpInfo(databaseId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Table>') as List)
        .cast<Table>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes the order of the provided table ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Updates the order of the tables in the database related to the provided value.
  ///
  /// * [OrderTables] orderTables (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> orderDatabaseTablesWithHttpInfo(int databaseId, OrderTables orderTables, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/database/{database_id}/order/'
      .replaceAll('{database_id}', databaseId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderTables;

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

  /// Changes the order of the provided table ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
  ///
  /// Parameters:
  ///
  /// * [int] databaseId (required):
  ///   Updates the order of the tables in the database related to the provided value.
  ///
  /// * [OrderTables] orderTables (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> orderDatabaseTables(int databaseId, OrderTables orderTables, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await orderDatabaseTablesWithHttpInfo(databaseId, orderTables,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a job to sync the data sync table with the provided `data_sync_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Starts a job to sync the data sync table related to the provided value.
  Future<Response> syncDataSyncTableAsyncWithHttpInfo(int dataSyncId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/{data_sync_id}/sync/async/'
      .replaceAll('{data_sync_id}', dataSyncId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Start a job to sync the data sync table with the provided `data_sync_id` parameter if the authorized user has access to the database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Starts a job to sync the data sync table related to the provided value.
  Future<SyncDataSyncTableJobTypeResponse?> syncDataSyncTableAsync(int dataSyncId,) async {
    final response = await syncDataSyncTableAsyncWithHttpInfo(dataSyncId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SyncDataSyncTableJobTypeResponse',) as SyncDataSyncTableJobTypeResponse;
    
    }
    return null;
  }

  /// Updates the existing table if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedTableUpdate] patchedTableUpdate:
  Future<Response> updateDatabaseTableWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedTableUpdate? patchedTableUpdate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tables/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedTableUpdate;

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

  /// Updates the existing table if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedTableUpdate] patchedTableUpdate:
  Future<Table?> updateDatabaseTable(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedTableUpdate? patchedTableUpdate, }) async {
    final response = await updateDatabaseTableWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedTableUpdate: patchedTableUpdate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Table',) as Table;
    
    }
    return null;
  }

  /// Updates the properties of the provided data sync, if the user has the right permissions. Note that if the `synced_properties` is not provided, the available properties change, then the unavailable ones will automatically be removed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Updates the data sync related to the provided value.
  ///
  /// * [PatchedDataSyncUpdateDataSync] patchedDataSyncUpdateDataSync:
  Future<Response> updateTableDataSyncWithHttpInfo(int dataSyncId, { PatchedDataSyncUpdateDataSync? patchedDataSyncUpdateDataSync, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/data-sync/{data_sync_id}/'
      .replaceAll('{data_sync_id}', dataSyncId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedDataSyncUpdateDataSync;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Updates the properties of the provided data sync, if the user has the right permissions. Note that if the `synced_properties` is not provided, the available properties change, then the unavailable ones will automatically be removed.
  ///
  /// Parameters:
  ///
  /// * [int] dataSyncId (required):
  ///   Updates the data sync related to the provided value.
  ///
  /// * [PatchedDataSyncUpdateDataSync] patchedDataSyncUpdateDataSync:
  Future<DataSync?> updateTableDataSync(int dataSyncId, { PatchedDataSyncUpdateDataSync? patchedDataSyncUpdateDataSync, }) async {
    final response = await updateTableDataSyncWithHttpInfo(dataSyncId,  patchedDataSyncUpdateDataSync: patchedDataSyncUpdateDataSync, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DataSync',) as DataSync;
    
    }
    return null;
  }
}
