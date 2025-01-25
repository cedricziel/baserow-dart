//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class TeamsApi {
  TeamsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new team subject.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [TeamSubject] teamSubject (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> createSubjectWithHttpInfo(String teamId, TeamSubject teamSubject, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/subjects/'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = teamSubject;

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

  /// Creates a new team subject.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [TeamSubject] teamSubject (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<TeamSubjectResponse?> createSubject(String teamId, TeamSubject teamSubject, { String? clientSessionId, }) async {
    final response = await createSubjectWithHttpInfo(teamId, teamSubject,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamSubjectResponse',) as TeamSubjectResponse;
    
    }
    return null;
  }

  /// Deletes a subject if the authorized user is in the team's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] subjectId (required):
  ///   The subject id to remove from the team.
  ///
  /// * [int] teamId (required):
  ///   The team id which the subject will be removed from.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteSubjectWithHttpInfo(int subjectId, int teamId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/subjects/{subject_id}/'
      .replaceAll('{subject_id}', subjectId.toString())
      .replaceAll('{team_id}', teamId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a subject if the authorized user is in the team's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] subjectId (required):
  ///   The subject id to remove from the team.
  ///
  /// * [int] teamId (required):
  ///   The team id which the subject will be removed from.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteSubject(int subjectId, int teamId, { String? clientSessionId, }) async {
    final response = await deleteSubjectWithHttpInfo(subjectId, teamId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a team if the authorized user is in the team's workspace. All the related children (e.g. subjects) are also going to be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] teamId (required):
  ///   Deletes the team related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteTeamWithHttpInfo(int teamId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/'
      .replaceAll('{team_id}', teamId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a team if the authorized user is in the team's workspace. All the related children (e.g. subjects) are also going to be deleted.
  ///
  /// Parameters:
  ///
  /// * [int] teamId (required):
  ///   Deletes the team related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteTeam(int teamId, { String? clientSessionId, }) async {
    final response = await deleteTeamWithHttpInfo(teamId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the information related to the provided subject id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] subjectId (required):
  ///   Returns the subject related to the provided value.
  ///
  /// * [String] teamId (required):
  Future<Response> getSubjectWithHttpInfo(int subjectId, String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/subjects/{subject_id}/'
      .replaceAll('{subject_id}', subjectId.toString())
      .replaceAll('{team_id}', teamId);

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

  /// Returns the information related to the provided subject id
  ///
  /// Parameters:
  ///
  /// * [int] subjectId (required):
  ///   Returns the subject related to the provided value.
  ///
  /// * [String] teamId (required):
  Future<TeamSubjectResponse?> getSubject(int subjectId, String teamId,) async {
    final response = await getSubjectWithHttpInfo(subjectId, teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamSubjectResponse',) as TeamSubjectResponse;
    
    }
    return null;
  }

  /// Returns the information related to the provided team id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] teamId (required):
  ///   Returns the team related to the provided value.
  Future<Response> getTeamWithHttpInfo(int teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/'
      .replaceAll('{team_id}', teamId.toString());

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

  /// Returns the information related to the provided team id.
  ///
  /// Parameters:
  ///
  /// * [int] teamId (required):
  ///   Returns the team related to the provided value.
  Future<TeamResponse?> getTeam(int teamId,) async {
    final response = await getTeamWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamResponse',) as TeamResponse;
    
    }
    return null;
  }

  /// Lists all team subjects in a given team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  Future<Response> listTeamSubjectsWithHttpInfo(String teamId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/subjects/'
      .replaceAll('{team_id}', teamId);

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

  /// Lists all team subjects in a given team.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  Future<List<TeamSubjectResponse>?> listTeamSubjects(String teamId,) async {
    final response = await listTeamSubjectsWithHttpInfo(teamId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamSubjectResponse>') as List)
        .cast<TeamSubjectResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates an existing team with a new name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [Team] team (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> updateTeamWithHttpInfo(String teamId, Team team, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/{team_id}/'
      .replaceAll('{team_id}', teamId);

    // ignore: prefer_final_locals
    Object? postBody = team;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }

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

  /// Updates an existing team with a new name.
  ///
  /// Parameters:
  ///
  /// * [String] teamId (required):
  ///
  /// * [Team] team (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<TeamResponse?> updateTeam(String teamId, Team team, { String? clientSessionId, }) async {
    final response = await updateTeamWithHttpInfo(teamId, team,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamResponse',) as TeamResponse;
    
    }
    return null;
  }

  /// Creates a new team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [Team] team (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> workspaceCreateTeamWithHttpInfo(String workspaceId, Team team, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId);

    // ignore: prefer_final_locals
    Object? postBody = team;

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

  /// Creates a new team.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [Team] team (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<TeamResponse?> workspaceCreateTeam(String workspaceId, Team team, { String? clientSessionId, }) async {
    final response = await workspaceCreateTeamWithHttpInfo(workspaceId, team,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TeamResponse',) as TeamResponse;
    
    }
    return null;
  }

  /// Lists all teams in a given workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Lists all teams in a given workspace.
  ///
  /// * [String] search:
  ///   Search for teams by their name.
  ///
  /// * [String] sorts:
  ///   Sort teams by name or subjects.
  Future<Response> workspaceListTeamsWithHttpInfo(int workspaceId, { String? search, String? sorts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/teams/workspace/{workspace_id}/'
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

  /// Lists all teams in a given workspace.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Lists all teams in a given workspace.
  ///
  /// * [String] search:
  ///   Search for teams by their name.
  ///
  /// * [String] sorts:
  ///   Sort teams by name or subjects.
  Future<List<TeamResponse>?> workspaceListTeams(int workspaceId, { String? search, String? sorts, }) async {
    final response = await workspaceListTeamsWithHttpInfo(workspaceId,  search: search, sorts: sorts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TeamResponse>') as List)
        .cast<TeamResponse>()
        .toList(growable: false);

    }
    return null;
  }
}
