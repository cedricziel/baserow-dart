//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class TrashApi {
  TrashApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Responds with the workspaces and applications available for the requesting user to inspect the trash contents of.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTrashStructureWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/trash/';

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

  /// Responds with the workspaces and applications available for the requesting user to inspect the trash contents of.
  Future<TrashStructure?> getTrashStructure() async {
    final response = await getTrashStructureWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TrashStructure',) as TrashStructure;
    
    }
    return null;
  }

  /// Restores the specified trashed item back into baserow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatchedTrashEntryRequest] patchedTrashEntryRequest:
  Future<Response> restoreWithHttpInfo({ PatchedTrashEntryRequest? patchedTrashEntryRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/trash/restore/';

    // ignore: prefer_final_locals
    Object? postBody = patchedTrashEntryRequest;

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

  /// Restores the specified trashed item back into baserow.
  ///
  /// Parameters:
  ///
  /// * [PatchedTrashEntryRequest] patchedTrashEntryRequest:
  Future<void> restore({ PatchedTrashEntryRequest? patchedTrashEntryRequest, }) async {
    final response = await restoreWithHttpInfo( patchedTrashEntryRequest: patchedTrashEntryRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Empties the specified workspace and/or application of trash, including the workspace and application themselves if they are trashed also.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace whose trash contents to empty, including the workspace itself if it is also trashed.
  ///
  /// * [int] applicationId:
  ///   Optionally filters down the trash to delete to only items for this application in the workspace.
  Future<Response> workspaceEmptyContentsWithHttpInfo(int workspaceId, { int? applicationId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/trash/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'application_id', applicationId));
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

  /// Empties the specified workspace and/or application of trash, including the workspace and application themselves if they are trashed also.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace whose trash contents to empty, including the workspace itself if it is also trashed.
  ///
  /// * [int] applicationId:
  ///   Optionally filters down the trash to delete to only items for this application in the workspace.
  Future<void> workspaceEmptyContents(int workspaceId, { int? applicationId, }) async {
    final response = await workspaceEmptyContentsWithHttpInfo(workspaceId,  applicationId: applicationId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Responds with trash contents for a workspace optionally filtered to a specific application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns the trash for the workspace with this id.
  ///
  /// * [int] applicationId:
  ///   Optionally filters down the trash to only items for this application in the workspace.
  ///
  /// * [int] page:
  ///   Selects which page of trash contents should be returned.
  Future<Response> workspaceGetContentsWithHttpInfo(int workspaceId, { int? applicationId, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/trash/workspace/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (applicationId != null) {
      queryParams.addAll(_queryParams('', 'application_id', applicationId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// Responds with trash contents for a workspace optionally filtered to a specific application.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   Returns the trash for the workspace with this id.
  ///
  /// * [int] applicationId:
  ///   Optionally filters down the trash to only items for this application in the workspace.
  ///
  /// * [int] page:
  ///   Selects which page of trash contents should be returned.
  Future<PaginationSerializerTrashContents?> workspaceGetContents(int workspaceId, { int? applicationId, int? page, }) async {
    final response = await workspaceGetContentsWithHttpInfo(workspaceId,  applicationId: applicationId, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerTrashContents',) as PaginationSerializerTrashContents;
    
    }
    return null;
  }
}
