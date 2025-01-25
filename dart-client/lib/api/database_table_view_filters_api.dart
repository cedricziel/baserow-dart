//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableViewFiltersApi {
  DatabaseTableViewFiltersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new filter for the view related to the provided `view_id` parameter. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, then only the rows that apply to all the filters are going to be returned. A filter compares the value of a field to the value of a filter. It depends on the type how values are going to be compared.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a filter for the view related to the provided value.
  ///
  /// * [CreateViewFilter] createViewFilter (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> createDatabaseTableViewFilterWithHttpInfo(int viewId, CreateViewFilter createViewFilter, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/filters/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createViewFilter;

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

  /// Creates a new filter for the view related to the provided `view_id` parameter. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, then only the rows that apply to all the filters are going to be returned. A filter compares the value of a field to the value of a filter. It depends on the type how values are going to be compared.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a filter for the view related to the provided value.
  ///
  /// * [CreateViewFilter] createViewFilter (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewFilter?> createDatabaseTableViewFilter(int viewId, CreateViewFilter createViewFilter, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await createDatabaseTableViewFilterWithHttpInfo(viewId, createViewFilter,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilter',) as ViewFilter;
    
    }
    return null;
  }

  /// Creates a new filter group for the view related to the provided `view_id` parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   The ID of the view where create the new filter group.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [CreateViewFilterGroup] createViewFilterGroup:
  Future<Response> createDatabaseTableViewFilterGroupWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, CreateViewFilterGroup? createViewFilterGroup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/filter-groups/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createViewFilterGroup;

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

  /// Creates a new filter group for the view related to the provided `view_id` parameter.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   The ID of the view where create the new filter group.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [CreateViewFilterGroup] createViewFilterGroup:
  Future<ViewFilterGroup?> createDatabaseTableViewFilterGroup(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, CreateViewFilterGroup? createViewFilterGroup, }) async {
    final response = await createDatabaseTableViewFilterGroupWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, createViewFilterGroup: createViewFilterGroup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilterGroup',) as ViewFilterGroup;
    
    }
    return null;
  }

  /// Deletes the existing filter if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to delete.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewFilterWithHttpInfo(int viewFilterId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter/{view_filter_id}/'
      .replaceAll('{view_filter_id}', viewFilterId.toString());

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

  /// Deletes the existing filter if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to delete.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableViewFilter(int viewFilterId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewFilterWithHttpInfo(viewFilterId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes the existing filter group with the given `view_filter_group_id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   The ID of the view filter group to delete.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewFilterGroupWithHttpInfo(String filterGroupId, int viewFilterGroupId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter-group/{filter_group_id}/'
      .replaceAll('{filter_group_id}', filterGroupId)
      .replaceAll('{view_filter_group_id}', viewFilterGroupId.toString());

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

  /// Deletes the existing filter group with the given `view_filter_group_id`.
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   The ID of the view filter group to delete.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewFilterGroupWithHttpInfo(filterGroupId, viewFilterGroupId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the existing view filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to return.
  Future<Response> getDatabaseTableViewFilterWithHttpInfo(int viewFilterId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter/{view_filter_id}/'
      .replaceAll('{view_filter_id}', viewFilterId.toString());

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

  /// Returns the existing view filter.
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to return.
  Future<ViewFilter?> getDatabaseTableViewFilter(int viewFilterId,) async {
    final response = await getDatabaseTableViewFilterWithHttpInfo(viewFilterId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilter',) as ViewFilter;
    
    }
    return null;
  }

  /// Returns the existing view filter group with the given `view_filter_group_id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   Teh ID of the view filter group to return.
  Future<Response> getDatabaseTableViewFilterGroupWithHttpInfo(String filterGroupId, int viewFilterGroupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter-group/{filter_group_id}/'
      .replaceAll('{filter_group_id}', filterGroupId)
      .replaceAll('{view_filter_group_id}', viewFilterGroupId.toString());

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

  /// Returns the existing view filter group with the given `view_filter_group_id`.
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   Teh ID of the view filter group to return.
  Future<ViewFilterGroup?> getDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId,) async {
    final response = await getDatabaseTableViewFilterGroupWithHttpInfo(filterGroupId, viewFilterGroupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilterGroup',) as ViewFilterGroup;
    
    }
    return null;
  }

  /// Lists all filters of the view related to the provided `view_id`. A view can have multiple filters. When all the rows are requested for the view only those that apply to the filters are returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only filters of the view related to the provided value.
  Future<Response> listDatabaseTableViewFiltersWithHttpInfo(int viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/filters/'
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

  /// Lists all filters of the view related to the provided `view_id`. A view can have multiple filters. When all the rows are requested for the view only those that apply to the filters are returned.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only filters of the view related to the provided value.
  Future<List<ViewFilter>?> listDatabaseTableViewFilters(int viewId,) async {
    final response = await listDatabaseTableViewFiltersWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ViewFilter>') as List)
        .cast<ViewFilter>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to update.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewFilter] patchedUpdateViewFilter:
  Future<Response> updateDatabaseTableViewFilterWithHttpInfo(int viewFilterId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewFilter? patchedUpdateViewFilter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter/{view_filter_id}/'
      .replaceAll('{view_filter_id}', viewFilterId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateViewFilter;

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

  /// Updates the existing filter.
  ///
  /// Parameters:
  ///
  /// * [int] viewFilterId (required):
  ///   The ID of the view filter to update.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewFilter] patchedUpdateViewFilter:
  Future<ViewFilter?> updateDatabaseTableViewFilter(int viewFilterId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewFilter? patchedUpdateViewFilter, }) async {
    final response = await updateDatabaseTableViewFilterWithHttpInfo(viewFilterId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedUpdateViewFilter: patchedUpdateViewFilter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilter',) as ViewFilter;
    
    }
    return null;
  }

  /// Updates the existing filter group with the given `view_filter_group_id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   The ID of the view filter group to update.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewFilterGroup] patchedUpdateViewFilterGroup:
  Future<Response> updateDatabaseTableViewFilterGroupWithHttpInfo(String filterGroupId, int viewFilterGroupId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewFilterGroup? patchedUpdateViewFilterGroup, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/filter-group/{filter_group_id}/'
      .replaceAll('{filter_group_id}', filterGroupId)
      .replaceAll('{view_filter_group_id}', viewFilterGroupId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateViewFilterGroup;

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

  /// Updates the existing filter group with the given `view_filter_group_id`.
  ///
  /// Parameters:
  ///
  /// * [String] filterGroupId (required):
  ///
  /// * [int] viewFilterGroupId (required):
  ///   The ID of the view filter group to update.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewFilterGroup] patchedUpdateViewFilterGroup:
  Future<ViewFilterGroup?> updateDatabaseTableViewFilterGroup(String filterGroupId, int viewFilterGroupId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewFilterGroup? patchedUpdateViewFilterGroup, }) async {
    final response = await updateDatabaseTableViewFilterGroupWithHttpInfo(filterGroupId, viewFilterGroupId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedUpdateViewFilterGroup: patchedUpdateViewFilterGroup, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFilterGroup',) as ViewFilterGroup;
    
    }
    return null;
  }
}
