//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class IntegrationsApi {
  IntegrationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new integration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Creates an integration for the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [IntegrationCreateIntegration] integrationCreateIntegration:
  Future<Response> createApplicationIntegrationWithHttpInfo(int applicationId, { String? clientSessionId, IntegrationCreateIntegration? integrationCreateIntegration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/integrations/'
      .replaceAll('{application_id}', applicationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = integrationCreateIntegration;

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

  /// Creates a new integration
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Creates an integration for the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [IntegrationCreateIntegration] integrationCreateIntegration:
  Future<IntegrationIntegration?> createApplicationIntegration(int applicationId, { String? clientSessionId, IntegrationCreateIntegration? integrationCreateIntegration, }) async {
    final response = await createApplicationIntegrationWithHttpInfo(applicationId,  clientSessionId: clientSessionId, integrationCreateIntegration: integrationCreateIntegration, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationIntegration',) as IntegrationIntegration;
    
    }
    return null;
  }

  /// Deletes the integration related by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteApplicationIntegrationWithHttpInfo(int integrationId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/integration/{integration_id}/'
      .replaceAll('{integration_id}', integrationId.toString());

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

  /// Deletes the integration related by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteApplicationIntegration(int integrationId, { String? clientSessionId, }) async {
    final response = await deleteApplicationIntegrationWithHttpInfo(integrationId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists all the integrations of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the integrations of the application related to the provided Id.
  Future<Response> listApplicationIntegrationsWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/integrations/'
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

  /// Lists all the integrations of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the integrations of the application related to the provided Id.
  Future<List<IntegrationIntegration>?> listApplicationIntegrations(int applicationId,) async {
    final response = await listApplicationIntegrationsWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IntegrationIntegration>') as List)
        .cast<IntegrationIntegration>()
        .toList(growable: false);

    }
    return null;
  }

  /// Moves the integration in the application before another integration or at the end of the application if no before integration is given. The integrations must belong to the same application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveIntegration] patchedMoveIntegration:
  Future<Response> moveApplicationIntegrationWithHttpInfo(int integrationId, { String? clientSessionId, PatchedMoveIntegration? patchedMoveIntegration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/integration/{integration_id}/move/'
      .replaceAll('{integration_id}', integrationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedMoveIntegration;

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

  /// Moves the integration in the application before another integration or at the end of the application if no before integration is given. The integrations must belong to the same application.
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveIntegration] patchedMoveIntegration:
  Future<IntegrationIntegration?> moveApplicationIntegration(int integrationId, { String? clientSessionId, PatchedMoveIntegration? patchedMoveIntegration, }) async {
    final response = await moveApplicationIntegrationWithHttpInfo(integrationId,  clientSessionId: clientSessionId, patchedMoveIntegration: patchedMoveIntegration, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationIntegration',) as IntegrationIntegration;
    
    }
    return null;
  }

  /// Updates an existing integration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [LocalBaserowIntegrationUpdateIntegration] body:
  Future<Response> updateApplicationIntegrationWithHttpInfo(int integrationId, { String? clientSessionId, LocalBaserowIntegrationUpdateIntegration? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/integration/{integration_id}/'
      .replaceAll('{integration_id}', integrationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Updates an existing integration.
  ///
  /// Parameters:
  ///
  /// * [int] integrationId (required):
  ///   The id of the integration
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [LocalBaserowIntegrationUpdateIntegration] body:
  Future<IntegrationIntegration?> updateApplicationIntegration(int integrationId, { String? clientSessionId, LocalBaserowIntegrationUpdateIntegration? body, }) async {
    final response = await updateApplicationIntegrationWithHttpInfo(integrationId,  clientSessionId: clientSessionId, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationIntegration',) as IntegrationIntegration;
    
    }
    return null;
  }
}
