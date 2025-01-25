//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class ApplicationsApi {
  ApplicationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes an application if the authorized user is in the application's workspace. All the related children are also going to be deleted. For example in case of a database application all the underlying tables, fields, views and rows are going to be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Deletes the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteApplicationWithHttpInfo(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/{application_id}/'
      .replaceAll('{application_id}', applicationId.toString());

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

  /// Deletes an application if the authorized user is in the application's workspace. All the related children are also going to be deleted. For example in case of a database application all the underlying tables, fields, views and rows are going to be deleted.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Deletes the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteApplication(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteApplicationWithHttpInfo(applicationId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Duplicate an application if the authorized user is in the application's workspace. All the related children are also going to be duplicated. For example in case of a database application all the underlying tables, fields, views and rows are going to be duplicated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   The id of the application to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> duplicateApplicationAsyncWithHttpInfo(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/{application_id}/duplicate/async/'
      .replaceAll('{application_id}', applicationId.toString());

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

  /// Duplicate an application if the authorized user is in the application's workspace. All the related children are also going to be duplicated. For example in case of a database application all the underlying tables, fields, views and rows are going to be duplicated.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   The id of the application to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<DuplicateApplicationJobTypeResponse?> duplicateApplicationAsync(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await duplicateApplicationAsyncWithHttpInfo(applicationId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DuplicateApplicationJobTypeResponse',) as DuplicateApplicationJobTypeResponse;
    
    }
    return null;
  }

  /// Lists all the applications that the authorized user has access to. The properties that belong to the application can differ per type. An application always belongs to a single workspace. All the applications of the workspaces that the user has access to are going to be listed here.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAllApplicationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/';

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

  /// Lists all the applications that the authorized user has access to. The properties that belong to the application can differ per type. An application always belongs to a single workspace. All the applications of the workspaces that the user has access to are going to be listed here.
  Future<List<ApplicationApplication>?> listAllApplications() async {
    final response = await listAllApplicationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationApplication>') as List)
        .cast<ApplicationApplication>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing application related to the provided `application_id` param if the authorized user is in the application's workspace. It is not possible to change the type, but properties like the name can be changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Updates the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedApplicationBaseApplicationUpdatePolymorphic] patchedApplicationBaseApplicationUpdatePolymorphic:
  Future<Response> updateApplicationWithHttpInfo(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedApplicationBaseApplicationUpdatePolymorphic? patchedApplicationBaseApplicationUpdatePolymorphic, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/{application_id}/'
      .replaceAll('{application_id}', applicationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedApplicationBaseApplicationUpdatePolymorphic;

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

  /// Updates the existing application related to the provided `application_id` param if the authorized user is in the application's workspace. It is not possible to change the type, but properties like the name can be changed.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Updates the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedApplicationBaseApplicationUpdatePolymorphic] patchedApplicationBaseApplicationUpdatePolymorphic:
  Future<ApplicationApplication?> updateApplication(int applicationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedApplicationBaseApplicationUpdatePolymorphic? patchedApplicationBaseApplicationUpdatePolymorphic, }) async {
    final response = await updateApplicationWithHttpInfo(applicationId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedApplicationBaseApplicationUpdatePolymorphic: patchedApplicationBaseApplicationUpdatePolymorphic, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationApplication',) as ApplicationApplication;
    
    }
    return null;
  }

  /// Creates a new application based on the provided type. The newly created application is going to be added to the workspace related to the provided `workspace_id` parameter. If the authorized user does not belong to the workspace an error will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Creates an application for the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [ApplicationBaseApplicationCreatePolymorphic] applicationBaseApplicationCreatePolymorphic:
  Future<Response> workspaceCreateApplicationWithHttpInfo(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, ApplicationBaseApplicationCreatePolymorphic? applicationBaseApplicationCreatePolymorphic, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = applicationBaseApplicationCreatePolymorphic;

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

  /// Creates a new application based on the provided type. The newly created application is going to be added to the workspace related to the provided `workspace_id` parameter. If the authorized user does not belong to the workspace an error will be returned.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Creates an application for the workspace related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [ApplicationBaseApplicationCreatePolymorphic] applicationBaseApplicationCreatePolymorphic:
  Future<ApplicationApplication?> workspaceCreateApplication(int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, ApplicationBaseApplicationCreatePolymorphic? applicationBaseApplicationCreatePolymorphic, }) async {
    final response = await workspaceCreateApplicationWithHttpInfo(workspaceId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, applicationBaseApplicationCreatePolymorphic: applicationBaseApplicationCreatePolymorphic, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationApplication',) as ApplicationApplication;
    
    }
    return null;
  }

  /// Returns the requested application if the authorized user is in the application's workspace. The properties that belong to the application can differ per type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns the application related to the provided value.
  Future<Response> workspaceGetApplicationWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/{application_id}/'
      .replaceAll('{application_id}', applicationId.toString());

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

  /// Returns the requested application if the authorized user is in the application's workspace. The properties that belong to the application can differ per type.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns the application related to the provided value.
  Future<ApplicationApplication?> workspaceGetApplication(int applicationId,) async {
    final response = await workspaceGetApplicationWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ApplicationApplication',) as ApplicationApplication;
    
    }
    return null;
  }

  /// Lists all the applications of the workspace related to the provided `workspace_id` parameter if the authorized user is in that workspace. If theworkspace is related to a template, then this endpoint will be publicly accessible. The properties that belong to the application can differ per type. An application always belongs to a single workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns only applications that are in the workspace related to the provided value.
  Future<Response> workspaceListApplicationsWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/workspace/{workspace_id}/'
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

  /// Lists all the applications of the workspace related to the provided `workspace_id` parameter if the authorized user is in that workspace. If theworkspace is related to a template, then this endpoint will be publicly accessible. The properties that belong to the application can differ per type. An application always belongs to a single workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns only applications that are in the workspace related to the provided value.
  Future<List<ApplicationApplication>?> workspaceListApplications(int workspaceId,) async {
    final response = await workspaceListApplicationsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ApplicationApplication>') as List)
        .cast<ApplicationApplication>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes the order of the provided application ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the order of the applications in the workspace related to the provided value.
  ///
  /// * [OrderApplications] orderApplications (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> workspaceOrderApplicationsWithHttpInfo(int workspaceId, OrderApplications orderApplications, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/applications/workspace/{workspace_id}/order/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderApplications;

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

  /// Changes the order of the provided application ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Updates the order of the applications in the workspace related to the provided value.
  ///
  /// * [OrderApplications] orderApplications (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> workspaceOrderApplications(int workspaceId, OrderApplications orderApplications, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await workspaceOrderApplicationsWithHttpInfo(workspaceId, orderApplications,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
