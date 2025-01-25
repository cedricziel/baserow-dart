//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class WorkspaceInvitationsApi {
  WorkspaceInvitationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accepts a workspace invitation with the given id if the email address of the user matches that of the invitation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Accepts the workspace invitation related to the provided value.
  Future<Response> acceptWorkspaceInvitationWithHttpInfo(int workspaceInvitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/{workspace_invitation_id}/accept/'
      .replaceAll('{workspace_invitation_id}', workspaceInvitationId.toString());

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

  /// Accepts a workspace invitation with the given id if the email address of the user matches that of the invitation.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Accepts the workspace invitation related to the provided value.
  Future<WorkspaceUserWorkspace?> acceptWorkspaceInvitation(int workspaceInvitationId,) async {
    final response = await acceptWorkspaceInvitationWithHttpInfo(workspaceInvitationId,);
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

  /// Creates a new workspace invitations for an email address if the authorized user has admin rights to the related workspace. An email containing a sign up link will be send to the user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Creates a workspace invitation to the workspace related to the provided value.
  ///
  /// * [CreateWorkspaceInvitation] createWorkspaceInvitation (required):
  Future<Response> createWorkspaceInvitationWithHttpInfo(int workspaceId, CreateWorkspaceInvitation createWorkspaceInvitation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createWorkspaceInvitation;

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

  /// Creates a new workspace invitations for an email address if the authorized user has admin rights to the related workspace. An email containing a sign up link will be send to the user.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Creates a workspace invitation to the workspace related to the provided value.
  ///
  /// * [CreateWorkspaceInvitation] createWorkspaceInvitation (required):
  Future<WorkspaceInvitation?> createWorkspaceInvitation(int workspaceId, CreateWorkspaceInvitation createWorkspaceInvitation,) async {
    final response = await createWorkspaceInvitationWithHttpInfo(workspaceId, createWorkspaceInvitation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceInvitation',) as WorkspaceInvitation;
    
    }
    return null;
  }

  /// Deletes a workspace invitation if the authorized user has admin rights to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Deletes the workspace invitation related to the provided value.
  Future<Response> deleteWorkspaceInvitationWithHttpInfo(int workspaceInvitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/{workspace_invitation_id}/'
      .replaceAll('{workspace_invitation_id}', workspaceInvitationId.toString());

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

  /// Deletes a workspace invitation if the authorized user has admin rights to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Deletes the workspace invitation related to the provided value.
  Future<void> deleteWorkspaceInvitation(int workspaceInvitationId,) async {
    final response = await deleteWorkspaceInvitationWithHttpInfo(workspaceInvitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the requested workspace invitation if the authorized user has admin right to the related workspace
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Returns the workspace invitation related to the provided value.
  Future<Response> getWorkspaceInvitationWithHttpInfo(int workspaceInvitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/{workspace_invitation_id}/'
      .replaceAll('{workspace_invitation_id}', workspaceInvitationId.toString());

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

  /// Returns the requested workspace invitation if the authorized user has admin right to the related workspace
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Returns the workspace invitation related to the provided value.
  Future<WorkspaceInvitation?> getWorkspaceInvitation(int workspaceInvitationId,) async {
    final response = await getWorkspaceInvitationWithHttpInfo(workspaceInvitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceInvitation',) as WorkspaceInvitation;
    
    }
    return null;
  }

  /// Responds with the serialized workspace invitation if an invitation with the provided token is found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Returns the workspace invitation related to the provided token.
  Future<Response> getWorkspaceInvitationByTokenWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/token/{token}/'
      .replaceAll('{token}', token);

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

  /// Responds with the serialized workspace invitation if an invitation with the provided token is found.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Returns the workspace invitation related to the provided token.
  Future<UserWorkspaceInvitation?> getWorkspaceInvitationByToken(String token,) async {
    final response = await getWorkspaceInvitationByTokenWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserWorkspaceInvitation',) as UserWorkspaceInvitation;
    
    }
    return null;
  }

  /// Lists all the workspace invitations of the workspace related to the provided `workspace_id` parameter if the authorized user has admin rights to that workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns only invitations that are in the workspace related to the provided value.
  Future<Response> listWorkspaceInvitationsWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/workspace/{workspace_id}/'
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

  /// Lists all the workspace invitations of the workspace related to the provided `workspace_id` parameter if the authorized user has admin rights to that workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns only invitations that are in the workspace related to the provided value.
  Future<List<WorkspaceInvitation>?> listWorkspaceInvitations(int workspaceId,) async {
    final response = await listWorkspaceInvitationsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WorkspaceInvitation>') as List)
        .cast<WorkspaceInvitation>()
        .toList(growable: false);

    }
    return null;
  }

  /// Rejects a workspace invitation with the given id if the email address of the user matches that of the invitation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Rejects the workspace invitation related to the provided value.
  Future<Response> rejectWorkspaceInvitationWithHttpInfo(int workspaceInvitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/{workspace_invitation_id}/reject/'
      .replaceAll('{workspace_invitation_id}', workspaceInvitationId.toString());

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

  /// Rejects a workspace invitation with the given id if the email address of the user matches that of the invitation.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Rejects the workspace invitation related to the provided value.
  Future<void> rejectWorkspaceInvitation(int workspaceInvitationId,) async {
    final response = await rejectWorkspaceInvitationWithHttpInfo(workspaceInvitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates the existing workspace invitation related to the provided `workspace_invitation_id` param if the authorized user has admin rights to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Updates the workspace invitation related to the provided value.
  ///
  /// * [PatchedUpdateWorkspaceInvitation] patchedUpdateWorkspaceInvitation:
  Future<Response> updateWorkspaceInvitationWithHttpInfo(int workspaceInvitationId, { PatchedUpdateWorkspaceInvitation? patchedUpdateWorkspaceInvitation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/workspaces/invitations/{workspace_invitation_id}/'
      .replaceAll('{workspace_invitation_id}', workspaceInvitationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateWorkspaceInvitation;

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

  /// Updates the existing workspace invitation related to the provided `workspace_invitation_id` param if the authorized user has admin rights to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceInvitationId (required):
  ///   Updates the workspace invitation related to the provided value.
  ///
  /// * [PatchedUpdateWorkspaceInvitation] patchedUpdateWorkspaceInvitation:
  Future<WorkspaceInvitation?> updateWorkspaceInvitation(int workspaceInvitationId, { PatchedUpdateWorkspaceInvitation? patchedUpdateWorkspaceInvitation, }) async {
    final response = await updateWorkspaceInvitationWithHttpInfo(workspaceInvitationId,  patchedUpdateWorkspaceInvitation: patchedUpdateWorkspaceInvitation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceInvitation',) as WorkspaceInvitation;
    
    }
    return null;
  }
}
