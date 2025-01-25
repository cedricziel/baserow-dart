//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class WorkspacesApi {
  WorkspacesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates an initial workspace. This is typically called after the user signs up and skips the onboarding in the frontend. It contains some example data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createInitialWorkspaceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/create-initial-workspace/';

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

  /// Creates an initial workspace. This is typically called after the user signs up and skips the onboarding in the frontend. It contains some example data.
  Future<WorkspaceUserWorkspace?> createInitialWorkspace() async {
    final response = await createInitialWorkspaceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceUserWorkspace',) as WorkspaceUserWorkspace;
    
    }
    return null;
  }

  /// Creates a new workspace where only the authorized user has access to. No initial data like database applications are added, they have to be created via other endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Workspace] workspace (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> createWorkspaceWithHttpInfo(Workspace workspace, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/';

    // ignore: prefer_final_locals
    Object? postBody = workspace;

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

  /// Creates a new workspace where only the authorized user has access to. No initial data like database applications are added, they have to be created via other endpoints.
  ///
  /// Parameters:
  ///
  /// * [Workspace] workspace (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<WorkspaceUserWorkspace?> createWorkspace(Workspace workspace, { String? clientSessionId, }) async {
    final response = await createWorkspaceWithHttpInfo(workspace,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceUserWorkspace',) as WorkspaceUserWorkspace;
    
    }
    return null;
  }

  /// Deletes an existing workspace if the authorized user belongs to the workspace. All the applications, databases, tables etc that were in the workspace are going to be deleted also.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Deletes the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteWorkspaceWithHttpInfo(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Deletes an existing workspace if the authorized user belongs to the workspace. All the applications, databases, tables etc that were in the workspace are going to be deleted also.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Deletes the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteWorkspace(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteWorkspaceWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a workspace user if the authorized user has admin rights to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceUserId (required):
  ///   Deletes the workspace user related to the provided value.
  Future<Response> deleteWorkspaceUserWithHttpInfo(int workspaceUserId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/users/{workspace_user_id}/'
      .replaceAll('{workspace_user_id}', workspaceUserId.toString());

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

  /// Deletes a workspace user if the authorized user has admin rights to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceUserId (required):
  ///   Deletes the workspace user related to the provided value.
  Future<void> deleteWorkspaceUser(int workspaceUserId,) async {
    final response = await deleteWorkspaceUserWithHttpInfo(workspaceUserId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Export workspace or set of applications application if the authorized user is in the application's workspace. All the related children are also going to be exported. For example in case of a database application all the underlying tables, fields, views and rows are going to be exported.Roles are not part of the export.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace that must be exported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> exportWorkspaceApplicationsAsyncWithHttpInfo(int workspaceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/export/async/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Export workspace or set of applications application if the authorized user is in the application's workspace. All the related children are also going to be exported. For example in case of a database application all the underlying tables, fields, views and rows are going to be exported.Roles are not part of the export.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace that must be exported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<ExportApplicationsJobTypeResponse?> exportWorkspaceApplicationsAsync(int workspaceId, { String? clientSessionId, }) async {
    final response = await exportWorkspaceApplicationsAsyncWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportApplicationsJobTypeResponse',) as ExportApplicationsJobTypeResponse;
    
    }
    return null;
  }

  /// Returns the generative AI models settings for the given workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<Response> getWorkspaceGenerativeAiModelsSettingsWithHttpInfo(String workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/settings/generative-ai/'
      .replaceAll('{workspace_id}', workspaceId);

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

  /// Returns the generative AI models settings for the given workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<GenerativeAISettings?> getWorkspaceGenerativeAiModelsSettings(String workspaceId,) async {
    final response = await getWorkspaceGenerativeAiModelsSettingsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GenerativeAISettings',) as GenerativeAISettings;
    
    }
    return null;
  }

  /// Delete a resource. This endpoint mark as ready for deletion the specified resource. This operation is not undoable. The user must be the owner of the resource to perform this action.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] resourceId (required):
  ///
  /// * [String] workspaceId (required):
  Future<Response> importExportResourceWithHttpInfo(String resourceId, String workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/import/{resource_id}/'
      .replaceAll('{resource_id}', resourceId)
      .replaceAll('{workspace_id}', workspaceId);

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

  /// Delete a resource. This endpoint mark as ready for deletion the specified resource. This operation is not undoable. The user must be the owner of the resource to perform this action.
  ///
  /// Parameters:
  ///
  /// * [String] resourceId (required):
  ///
  /// * [String] workspaceId (required):
  Future<void> importExportResource(String resourceId, String workspaceId,) async {
    final response = await importExportResourceWithHttpInfo(resourceId, workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Uploads an exported workspace or a set of applications if the authorized user is in the workspace. The uploaded file must be a valid ZIP file containing the applications' data for future import.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace for which file is uploaded.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> importResourceUploadFileWithHttpInfo(int workspaceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/import/upload-file/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Uploads an exported workspace or a set of applications if the authorized user is in the workspace. The uploaded file must be a valid ZIP file containing the applications' data for future import.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace for which file is uploaded.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<ImportResource?> importResourceUploadFile(int workspaceId, { String? clientSessionId, }) async {
    final response = await importResourceUploadFileWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportResource',) as ImportResource;
    
    }
    return null;
  }

  /// Import a set of applications included in a given resource if the authorized user is in the specified workspace. This endpoint requires a valid resource_id of the uploaded file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace where the application will be imported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> importWorkspaceApplicationsAsyncWithHttpInfo(int workspaceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/import/async/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Import a set of applications included in a given resource if the authorized user is in the specified workspace. This endpoint requires a valid resource_id of the uploaded file.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace where the application will be imported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<ImportApplicationsJobTypeResponse?> importWorkspaceApplicationsAsync(int workspaceId, { String? clientSessionId, }) async {
    final response = await importWorkspaceApplicationsAsyncWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImportApplicationsJobTypeResponse',) as ImportApplicationsJobTypeResponse;
    
    }
    return null;
  }

  /// Makes the authenticated user leave the workspace related to the provided `workspace_id` if the user is in that workspace. If the user is the last admin in the workspace, they will not be able to leave it. There must always be one admin in the workspace, otherwise it will be left without control. If that is the case, they must either delete the workspace or give another member admin permissions first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Leaves the workspace related to the value.
  Future<Response> leaveWorkspaceWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/leave/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Makes the authenticated user leave the workspace related to the provided `workspace_id` if the user is in that workspace. If the user is the last admin in the workspace, they will not be able to leave it. There must always be one admin in the workspace, otherwise it will be left without control. If that is the case, they must either delete the workspace or give another member admin permissions first.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Leaves the workspace related to the value.
  Future<void> leaveWorkspace(int workspaceId,) async {
    final response = await leaveWorkspaceWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists exports that were created for given workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace that is being exported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> listWorkspaceExportsWithHttpInfo(int workspaceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/export/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Lists exports that were created for given workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace that is being exported.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<ListExportWorkspaceApplications?> listWorkspaceExports(int workspaceId, { String? clientSessionId, }) async {
    final response = await listWorkspaceExportsWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListExportWorkspaceApplications',) as ListExportWorkspaceApplications;
    
    }
    return null;
  }

  /// Lists all the users that are in a workspace if the authorized user has admin permissions to the related workspace. To add a user to a workspace an invitation must be sent first.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Lists workspace users related to the provided workspace value.
  ///
  /// * [String] search:
  ///   Search for workspace users by username, or email.
  ///
  /// * [String] sorts:
  ///   Sort workspace users by name, email or role.
  Future<Response> listWorkspaceUsersWithHttpInfo(int workspaceId, { String? search, String? sorts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/users/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (sorts != null) {
      queryParams.addAll(_queryParams('', 'sorts', sorts));
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

  /// Lists all the users that are in a workspace if the authorized user has admin permissions to the related workspace. To add a user to a workspace an invitation must be sent first.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Lists workspace users related to the provided workspace value.
  ///
  /// * [String] search:
  ///   Search for workspace users by username, or email.
  ///
  /// * [String] sorts:
  ///   Sort workspace users by name, email or role.
  Future<List<ListWorkspaceUsersWithMemberData>?> listWorkspaceUsers(int workspaceId, { String? search, String? sorts, }) async {
    final response = await listWorkspaceUsersWithHttpInfo(workspaceId,  search: search, sorts: sorts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListWorkspaceUsersWithMemberData>') as List)
        .cast<ListWorkspaceUsersWithMemberData>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all the workspaces of the authorized user. A workspace can contain multiple applications like a database. Multiple users can have access to a workspace. For example each company could have their own workspace containing databases related to that company. The order of the workspaces are custom for each user. The order is configurable via the **order_workspaces** endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listWorkspacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/';

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

  /// Lists all the workspaces of the authorized user. A workspace can contain multiple applications like a database. Multiple users can have access to a workspace. For example each company could have their own workspace containing databases related to that company. The order of the workspaces are custom for each user. The order is configurable via the **order_workspaces** endpoint.
  Future<List<WorkspaceUserWorkspace>?> listWorkspaces() async {
    final response = await listWorkspacesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WorkspaceUserWorkspace>') as List)
        .cast<WorkspaceUserWorkspace>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes the order of the provided workspace ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order will be custom for each user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OrderWorkspaces] orderWorkspaces (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> orderWorkspacesWithHttpInfo(OrderWorkspaces orderWorkspaces, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/order/';

    // ignore: prefer_final_locals
    Object? postBody = orderWorkspaces;

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

  /// Changes the order of the provided workspace ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order will be custom for each user.
  ///
  /// Parameters:
  ///
  /// * [OrderWorkspaces] orderWorkspaces (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> orderWorkspaces(OrderWorkspaces orderWorkspaces, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await orderWorkspacesWithHttpInfo(orderWorkspaces,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates the existing workspace related to the provided `workspace_id` parameter if the authorized user belongs to the workspace. It is not yet possible to add additional users to a workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedWorkspace] patchedWorkspace:
  Future<Response> updateWorkspaceWithHttpInfo(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedWorkspace? patchedWorkspace, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedWorkspace;

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

  /// Updates the existing workspace related to the provided `workspace_id` parameter if the authorized user belongs to the workspace. It is not yet possible to add additional users to a workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedWorkspace] patchedWorkspace:
  Future<Workspace?> updateWorkspace(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedWorkspace? patchedWorkspace, }) async {
    final response = await updateWorkspaceWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedWorkspace: patchedWorkspace, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Workspace',) as Workspace;
    
    }
    return null;
  }

  /// Updates the generative AI models settings for the given workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the workspace settings for the generative AI models available.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedGenerativeAISettings] patchedGenerativeAISettings:
  Future<Response> updateWorkspaceGenerativeAiModelsSettingsWithHttpInfo(int workspaceId, { String? clientSessionId, PatchedGenerativeAISettings? patchedGenerativeAISettings, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/settings/generative-ai/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedGenerativeAISettings;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
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

  /// Updates the generative AI models settings for the given workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the workspace settings for the generative AI models available.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedGenerativeAISettings] patchedGenerativeAISettings:
  Future<Workspace?> updateWorkspaceGenerativeAiModelsSettings(int workspaceId, { String? clientSessionId, PatchedGenerativeAISettings? patchedGenerativeAISettings, }) async {
    final response = await updateWorkspaceGenerativeAiModelsSettingsWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, patchedGenerativeAISettings: patchedGenerativeAISettings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Workspace',) as Workspace;
    
    }
    return null;
  }

  /// Updates the existing workspace user related to the provided `workspace_user_id` param if the authorized user has admin rights to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceUserId (required):
  ///   Updates the workspace user related to the provided value.
  ///
  /// * [PatchedUpdateWorkspaceUser] patchedUpdateWorkspaceUser:
  Future<Response> updateWorkspaceUserWithHttpInfo(int workspaceUserId, { PatchedUpdateWorkspaceUser? patchedUpdateWorkspaceUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/users/{workspace_user_id}/'
      .replaceAll('{workspace_user_id}', workspaceUserId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateWorkspaceUser;

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

  /// Updates the existing workspace user related to the provided `workspace_user_id` param if the authorized user has admin rights to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceUserId (required):
  ///   Updates the workspace user related to the provided value.
  ///
  /// * [PatchedUpdateWorkspaceUser] patchedUpdateWorkspaceUser:
  Future<WorkspaceUser?> updateWorkspaceUser(int workspaceUserId, { PatchedUpdateWorkspaceUser? patchedUpdateWorkspaceUser, }) async {
    final response = await updateWorkspaceUserWithHttpInfo(workspaceUserId,  patchedUpdateWorkspaceUser: patchedUpdateWorkspaceUser, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceUser',) as WorkspaceUser;
    
    }
    return null;
  }

  /// Returns a the permission data necessary to determine the permissions of a specific user over a specific workspace.  See `core.handler.CoreHandler.get_permissions()` for more details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace id we want the permission object for.
  Future<Response> workspacePermissionsWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/{workspace_id}/permissions/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Returns a the permission data necessary to determine the permissions of a specific user over a specific workspace.  See `core.handler.CoreHandler.get_permissions()` for more details.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace id we want the permission object for.
  Future<List<PermissionObject>?> workspacePermissions(int workspaceId,) async {
    final response = await workspacePermissionsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PermissionObject>') as List)
        .cast<PermissionObject>()
        .toList(growable: false);

    }
    return null;
  }
}
