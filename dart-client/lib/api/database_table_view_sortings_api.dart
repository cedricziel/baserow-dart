//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableViewSortingsApi {
  DatabaseTableViewSortingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new sort for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, they will be returned in the respected order defined by all the sortings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a sort for the view related to the provided value.
  ///
  /// * [CreateViewSort] createViewSort (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> createDatabaseTableViewSortWithHttpInfo(int viewId, CreateViewSort createViewSort, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/sortings/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createViewSort;

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

  /// Creates a new sort for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, they will be returned in the respected order defined by all the sortings.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a sort for the view related to the provided value.
  ///
  /// * [CreateViewSort] createViewSort (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewSort?> createDatabaseTableViewSort(int viewId, CreateViewSort createViewSort, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await createDatabaseTableViewSortWithHttpInfo(viewId, createViewSort,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewSort',) as ViewSort;
    
    }
    return null;
  }

  /// Deletes the existing sort if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Deletes the sort related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewSortWithHttpInfo(int viewSortId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/sort/{view_sort_id}/'
      .replaceAll('{view_sort_id}', viewSortId.toString());

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

  /// Deletes the existing sort if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Deletes the sort related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableViewSort(int viewSortId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewSortWithHttpInfo(viewSortId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the existing view sort if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Returns the view sort related to the provided value.
  Future<Response> getDatabaseTableViewSortWithHttpInfo(int viewSortId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/sort/{view_sort_id}/'
      .replaceAll('{view_sort_id}', viewSortId.toString());

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

  /// Returns the existing view sort if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Returns the view sort related to the provided value.
  Future<ViewSort?> getDatabaseTableViewSort(int viewSortId,) async {
    final response = await getDatabaseTableViewSortWithHttpInfo(viewSortId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewSort',) as ViewSort;
    
    }
    return null;
  }

  /// Lists all sortings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple sortings. When all the rows are requested they will be in the desired order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only sortings of the view related to the provided value.
  Future<Response> listDatabaseTableViewSortingsWithHttpInfo(int viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/sortings/'
      .replaceAll('{view_id}', viewId.toString());

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

  /// Lists all sortings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple sortings. When all the rows are requested they will be in the desired order.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only sortings of the view related to the provided value.
  Future<List<ViewSort>?> listDatabaseTableViewSortings(int viewId,) async {
    final response = await listDatabaseTableViewSortingsWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ViewSort>') as List)
        .cast<ViewSort>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing sort if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Updates the view sort related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewSort] patchedUpdateViewSort:
  Future<Response> updateDatabaseTableViewSortWithHttpInfo(int viewSortId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewSort? patchedUpdateViewSort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/sort/{view_sort_id}/'
      .replaceAll('{view_sort_id}', viewSortId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateViewSort;

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

  /// Updates the existing sort if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewSortId (required):
  ///   Updates the view sort related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewSort] patchedUpdateViewSort:
  Future<ViewSort?> updateDatabaseTableViewSort(int viewSortId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewSort? patchedUpdateViewSort, }) async {
    final response = await updateDatabaseTableViewSortWithHttpInfo(viewSortId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedUpdateViewSort: patchedUpdateViewSort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewSort',) as ViewSort;
    
    }
    return null;
  }
}
