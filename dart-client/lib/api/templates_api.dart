//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class TemplatesApi {
  TemplatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// (Deprecated) Installs the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] templateId (required):
  ///   The id related to the template that must be installed.
  ///
  /// * [int] workspaceId (required):
  ///   The id related to the workspace where the template applications must be installed into.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> installTemplateWithHttpInfo(int templateId, int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/templates/install/{workspace_id}/{template_id}/'
      .replaceAll('{template_id}', templateId.toString())
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// (Deprecated) Installs the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.
  ///
  /// Parameters:
  ///
  /// * [int] templateId (required):
  ///   The id related to the template that must be installed.
  ///
  /// * [int] workspaceId (required):
  ///   The id related to the workspace where the template applications must be installed into.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<List<ApplicationApplication>?> installTemplate(int templateId, int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await installTemplateWithHttpInfo(templateId, workspaceId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
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

  /// Start an async job to install the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] templateId (required):
  ///   The id related to the template that must be installed.
  ///
  /// * [int] workspaceId (required):
  ///   The id related to the workspace where the template applications must be installed into.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> installTemplateAsyncWithHttpInfo(int templateId, int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/templates/install/{workspace_id}/{template_id}/async/'
      .replaceAll('{template_id}', templateId.toString())
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Start an async job to install the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.
  ///
  /// Parameters:
  ///
  /// * [int] templateId (required):
  ///   The id related to the template that must be installed.
  ///
  /// * [int] workspaceId (required):
  ///   The id related to the workspace where the template applications must be installed into.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<InstallTemplateJobTypeResponse?> installTemplateAsync(int templateId, int workspaceId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await installTemplateAsyncWithHttpInfo(templateId, workspaceId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InstallTemplateJobTypeResponse',) as InstallTemplateJobTypeResponse;
    
    }
    return null;
  }

  /// Lists all the template categories and the related templates that are in that category. The template's `workspace_id` can be used for previewing purposes because that workspace contains the applications that are in the template. All the `get` and `list` endpoints related to that workspace are publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/templates/';

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

  /// Lists all the template categories and the related templates that are in that category. The template's `workspace_id` can be used for previewing purposes because that workspace contains the applications that are in the template. All the `get` and `list` endpoints related to that workspace are publicly accessible.
  Future<List<TemplateCategories>?> listTemplates() async {
    final response = await listTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TemplateCategories>') as List)
        .cast<TemplateCategories>()
        .toList(growable: false);

    }
    return null;
  }
}
