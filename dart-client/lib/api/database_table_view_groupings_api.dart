//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableViewGroupingsApi {
  DatabaseTableViewGroupingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new group by for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a group by for the view related to the provided value.
  ///
  /// * [CreateViewGroupBy] createViewGroupBy (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> createDatabaseTableViewGroupWithHttpInfo(int viewId, CreateViewGroupBy createViewGroupBy, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/group_bys/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createViewGroupBy;

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

  /// Creates a new group by for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a group by for the view related to the provided value.
  ///
  /// * [CreateViewGroupBy] createViewGroupBy (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewGroupBy?> createDatabaseTableViewGroup(int viewId, CreateViewGroupBy createViewGroupBy, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await createDatabaseTableViewGroupWithHttpInfo(viewId, createViewGroupBy,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewGroupBy',) as ViewGroupBy;
    
    }
    return null;
  }

  /// Deletes the existing group by if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Deletes the group by related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewGroupWithHttpInfo(int viewGroupById, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/group_by/{view_group_by_id}/'
      .replaceAll('{view_group_by_id}', viewGroupById.toString());

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

  /// Deletes the existing group by if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Deletes the group by related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableViewGroup(int viewGroupById, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewGroupWithHttpInfo(viewGroupById,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the existing view group by if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Returns the view group by related to the provided value.
  Future<Response> getDatabaseTableViewGroupWithHttpInfo(int viewGroupById,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/group_by/{view_group_by_id}/'
      .replaceAll('{view_group_by_id}', viewGroupById.toString());

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

  /// Returns the existing view group by if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Returns the view group by related to the provided value.
  Future<ViewGroupBy?> getDatabaseTableViewGroup(int viewGroupById,) async {
    final response = await getDatabaseTableViewGroupWithHttpInfo(viewGroupById,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewGroupBy',) as ViewGroupBy;
    
    }
    return null;
  }

  /// Lists all groupings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple groupings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only groupings of the view related to the provided value.
  Future<Response> listDatabaseTableViewGroupingsWithHttpInfo(int viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/group_bys/'
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

  /// Lists all groupings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple groupings.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only groupings of the view related to the provided value.
  Future<List<ViewGroupBy>?> listDatabaseTableViewGroupings(int viewId,) async {
    final response = await listDatabaseTableViewGroupingsWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ViewGroupBy>') as List)
        .cast<ViewGroupBy>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing group by if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Updates the view group by related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewGroupBy] patchedUpdateViewGroupBy:
  Future<Response> updateDatabaseTableViewGroupWithHttpInfo(int viewGroupById, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewGroupBy? patchedUpdateViewGroupBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/group_by/{view_group_by_id}/'
      .replaceAll('{view_group_by_id}', viewGroupById.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateViewGroupBy;

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

  /// Updates the existing group by if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewGroupById (required):
  ///   Updates the view group by related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedUpdateViewGroupBy] patchedUpdateViewGroupBy:
  Future<ViewGroupBy?> updateDatabaseTableViewGroup(int viewGroupById, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedUpdateViewGroupBy? patchedUpdateViewGroupBy, }) async {
    final response = await updateDatabaseTableViewGroupWithHttpInfo(viewGroupById,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedUpdateViewGroupBy: patchedUpdateViewGroupBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewGroupBy',) as ViewGroupBy;
    
    }
    return null;
  }
}
