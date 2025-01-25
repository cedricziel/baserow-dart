//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class RoleAssignmentsApi {
  RoleAssignmentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// You can assign a role to a subject into the given workspace for the given scope with this endpoint. If you want to remove the role you can omit the role property.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignment takes place.
  ///
  /// * [CreateRoleAssignment] createRoleAssignment (required):
  Future<Response> assignRoleWithHttpInfo(int workspaceId, CreateRoleAssignment createRoleAssignment,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/role/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createRoleAssignment;

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

  /// You can assign a role to a subject into the given workspace for the given scope with this endpoint. If you want to remove the role you can omit the role property.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignment takes place.
  ///
  /// * [CreateRoleAssignment] createRoleAssignment (required):
  Future<OpenApiRoleAssignment?> assignRole(int workspaceId, CreateRoleAssignment createRoleAssignment,) async {
    final response = await assignRoleWithHttpInfo(workspaceId, createRoleAssignment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OpenApiRoleAssignment',) as OpenApiRoleAssignment;
    
    }
    return null;
  }

  /// You can assign a role to a multiple subjects into the given workspace for the given scopes with this endpoint. If you want to remove the role you can omit the role property.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignment takes place.
  ///
  /// * [BatchCreateRoleAssignment] batchCreateRoleAssignment (required):
  Future<Response> batchAssignRoleWithHttpInfo(int workspaceId, BatchCreateRoleAssignment batchCreateRoleAssignment,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/role/{workspace_id}/batch/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = batchCreateRoleAssignment;

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

  /// You can assign a role to a multiple subjects into the given workspace for the given scopes with this endpoint. If you want to remove the role you can omit the role property.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignment takes place.
  ///
  /// * [BatchCreateRoleAssignment] batchCreateRoleAssignment (required):
  Future<List<OpenApiRoleAssignment>?> batchAssignRole(int workspaceId, BatchCreateRoleAssignment batchCreateRoleAssignment,) async {
    final response = await batchAssignRoleWithHttpInfo(workspaceId, batchCreateRoleAssignment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OpenApiRoleAssignment>') as List)
        .cast<OpenApiRoleAssignment>()
        .toList(growable: false);

    }
    return null;
  }

  /// You can list the role assignments within a workspace, optionally filtered downto a specific scope inside of that workspace. If the scope isn't specified,the workspace will be considered the scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignments are related to.
  ///
  /// * [int] scopeId:
  ///   The id of the scope you are trying to get all roleassignments for.
  ///
  /// * [String] scopeType:
  ///   The type of scope you are trying to get all roleassignments for.
  Future<Response> listRoleAssignmentsWithHttpInfo(int workspaceId, { int? scopeId, String? scopeType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/role/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (scopeId != null) {
      queryParams.addAll(_queryParams('', 'scope_id', scopeId));
    }
    if (scopeType != null) {
      queryParams.addAll(_queryParams('', 'scope_type', scopeType));
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

  /// You can list the role assignments within a workspace, optionally filtered downto a specific scope inside of that workspace. If the scope isn't specified,the workspace will be considered the scope.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace in which the role assignments are related to.
  ///
  /// * [int] scopeId:
  ///   The id of the scope you are trying to get all roleassignments for.
  ///
  /// * [String] scopeType:
  ///   The type of scope you are trying to get all roleassignments for.
  Future<List<OpenApiRoleAssignment>?> listRoleAssignments(int workspaceId, { int? scopeId, String? scopeType, }) async {
    final response = await listRoleAssignmentsWithHttpInfo(workspaceId,  scopeId: scopeId, scopeType: scopeType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<OpenApiRoleAssignment>') as List)
        .cast<OpenApiRoleAssignment>()
        .toList(growable: false);

    }
    return null;
  }
}
