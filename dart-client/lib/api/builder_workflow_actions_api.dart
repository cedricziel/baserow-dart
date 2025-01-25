//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderWorkflowActionsApi {
  BuilderWorkflowActionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new builder workflow action
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates a workflow action for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [BuilderWorkflowActionTypeCreateBuilderWorkflowAction] builderWorkflowActionTypeCreateBuilderWorkflowAction:
  Future<Response> createBuilderPageWorkflowActionWithHttpInfo(int pageId, { String? clientSessionId, BuilderWorkflowActionTypeCreateBuilderWorkflowAction? builderWorkflowActionTypeCreateBuilderWorkflowAction, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/workflow_actions/'
      .replaceAll('{page_id}', pageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = builderWorkflowActionTypeCreateBuilderWorkflowAction;

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

  /// Creates a new builder workflow action
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates a workflow action for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [BuilderWorkflowActionTypeCreateBuilderWorkflowAction] builderWorkflowActionTypeCreateBuilderWorkflowAction:
  Future<BuilderWorkflowActionTypeBuilderWorkflowAction?> createBuilderPageWorkflowAction(int pageId, { String? clientSessionId, BuilderWorkflowActionTypeCreateBuilderWorkflowAction? builderWorkflowActionTypeCreateBuilderWorkflowAction, }) async {
    final response = await createBuilderPageWorkflowActionWithHttpInfo(pageId,  clientSessionId: clientSessionId, builderWorkflowActionTypeCreateBuilderWorkflowAction: builderWorkflowActionTypeCreateBuilderWorkflowAction, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuilderWorkflowActionTypeBuilderWorkflowAction',) as BuilderWorkflowActionTypeBuilderWorkflowAction;
    
    }
    return null;
  }

  /// Deletes the workflow action related by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow action
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteBuilderPageWorkflowActionWithHttpInfo(int workflowActionId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/workflow_action/{workflow_action_id}/'
      .replaceAll('{workflow_action_id}', workflowActionId.toString());

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

  /// Deletes the workflow action related by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow action
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteBuilderPageWorkflowAction(int workflowActionId, { String? clientSessionId, }) async {
    final response = await deleteBuilderPageWorkflowActionWithHttpInfo(workflowActionId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dispatches the service of the related workflow_action and returns the result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow_action you want to call the dispatch for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> dispatchBuilderPageWorkflowActionWithHttpInfo(int workflowActionId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/workflow_action/{workflow_action_id}/dispatch/'
      .replaceAll('{workflow_action_id}', workflowActionId.toString());

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

  /// Dispatches the service of the related workflow_action and returns the result.
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow_action you want to call the dispatch for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> dispatchBuilderPageWorkflowAction(int workflowActionId, { String? clientSessionId, }) async {
    final response = await dispatchBuilderPageWorkflowActionWithHttpInfo(workflowActionId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists all the workflow actions of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the workflow actions of the page related to the provided Id.
  Future<Response> listBuilderPageWorkflowActionsWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/workflow_actions/'
      .replaceAll('{page_id}', pageId.toString());

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

  /// Lists all the workflow actions of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the workflow actions of the page related to the provided Id.
  Future<List<BuilderWorkflowActionTypeBuilderWorkflowAction>?> listBuilderPageWorkflowActions(int pageId,) async {
    final response = await listBuilderPageWorkflowActionsWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BuilderWorkflowActionTypeBuilderWorkflowAction>') as List)
        .cast<BuilderWorkflowActionTypeBuilderWorkflowAction>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all the workflow actions with their public accessible data. Some configuration might be omitted for security reasons such as passwords or PII.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the public workflow actions of the page related to the provided Id.
  Future<Response> listPublicBuilderPageWorkflowActionsWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/page/{page_id}/workflow_actions/'
      .replaceAll('{page_id}', pageId.toString());

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

  /// Lists all the workflow actions with their public accessible data. Some configuration might be omitted for security reasons such as passwords or PII.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the public workflow actions of the page related to the provided Id.
  Future<List<PublicBuilderWorkflowActionTypeBuilderWorkflowAction>?> listPublicBuilderPageWorkflowActions(int pageId,) async {
    final response = await listPublicBuilderPageWorkflowActionsWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PublicBuilderWorkflowActionTypeBuilderWorkflowAction>') as List)
        .cast<PublicBuilderWorkflowActionTypeBuilderWorkflowAction>()
        .toList(growable: false);

    }
    return null;
  }

  /// Apply a new order to the workflow actions of a page
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page the workflow actions belong to
  ///
  /// * [OrderWorkflowActions] orderWorkflowActions (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> orderBuilderWorkflowActionsWithHttpInfo(int pageId, OrderWorkflowActions orderWorkflowActions, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/workflow_actions/order/'
      .replaceAll('{page_id}', pageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderWorkflowActions;

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

  /// Apply a new order to the workflow actions of a page
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page the workflow actions belong to
  ///
  /// * [OrderWorkflowActions] orderWorkflowActions (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> orderBuilderWorkflowActions(int pageId, OrderWorkflowActions orderWorkflowActions, { String? clientSessionId, }) async {
    final response = await orderBuilderWorkflowActionsWithHttpInfo(pageId, orderWorkflowActions,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates an existing builder workflow action.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow action
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions] patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions:
  Future<Response> updateBuilderPageWorkflowActionWithHttpInfo(int workflowActionId, { String? clientSessionId, PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions? patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/workflow_action/{workflow_action_id}/'
      .replaceAll('{workflow_action_id}', workflowActionId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions;

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

  /// Updates an existing builder workflow action.
  ///
  /// Parameters:
  ///
  /// * [int] workflowActionId (required):
  ///   The id of the workflow action
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions] patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions:
  Future<BuilderWorkflowActionTypeBuilderWorkflowAction?> updateBuilderPageWorkflowAction(int workflowActionId, { String? clientSessionId, PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions? patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions, }) async {
    final response = await updateBuilderPageWorkflowActionWithHttpInfo(workflowActionId,  clientSessionId: clientSessionId, patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions: patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BuilderWorkflowActionTypeBuilderWorkflowAction',) as BuilderWorkflowActionTypeBuilderWorkflowAction;
    
    }
    return null;
  }
}
