//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderDataSourcesApi {
  BuilderDataSourcesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new builder data_source
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates a data_source for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [IntegrationServiceCreateDataSource] integrationServiceCreateDataSource:
  Future<Response> createBuilderPageDataSourceWithHttpInfo(int pageId, { String? clientSessionId, IntegrationServiceCreateDataSource? integrationServiceCreateDataSource, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/data-sources/'
      .replaceAll('{page_id}', pageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = integrationServiceCreateDataSource;

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

  /// Creates a new builder data_source
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates a data_source for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [IntegrationServiceCreateDataSource] integrationServiceCreateDataSource:
  Future<IntegrationServiceDataSource?> createBuilderPageDataSource(int pageId, { String? clientSessionId, IntegrationServiceCreateDataSource? integrationServiceCreateDataSource, }) async {
    final response = await createBuilderPageDataSourceWithHttpInfo(pageId,  clientSessionId: clientSessionId, integrationServiceCreateDataSource: integrationServiceCreateDataSource, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationServiceDataSource',) as IntegrationServiceDataSource;
    
    }
    return null;
  }

  /// Deletes the data_source related by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/data-source/{data_source_id}/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

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

  /// Deletes the data_source related by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteBuilderPageDataSource(int dataSourceId, { String? clientSessionId, }) async {
    final response = await deleteBuilderPageDataSourceWithHttpInfo(dataSourceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dispatches the service of the related data_source and returns the result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source you want to call the dispatch for
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DispatchDataSourceRequest] dispatchDataSourceRequest:
  Future<Response> dispatchBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? clientSessionId, DispatchDataSourceRequest? dispatchDataSourceRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/data-source/{data_source_id}/dispatch/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = dispatchDataSourceRequest;

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

  /// Dispatches the service of the related data_source and returns the result.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source you want to call the dispatch for
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DispatchDataSourceRequest] dispatchDataSourceRequest:
  Future<void> dispatchBuilderPageDataSource(int dataSourceId, { String? clientSessionId, DispatchDataSourceRequest? dispatchDataSourceRequest, }) async {
    final response = await dispatchBuilderPageDataSourceWithHttpInfo(dataSourceId,  clientSessionId: clientSessionId, dispatchDataSourceRequest: dispatchDataSourceRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dispatches the service of the related page data_sources
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page we want to dispatch the data source for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> dispatchBuilderPageDataSourcesWithHttpInfo(int pageId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/dispatch-data-sources/'
      .replaceAll('{page_id}', pageId.toString());

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

  /// Dispatches the service of the related page data_sources
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page we want to dispatch the data source for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> dispatchBuilderPageDataSources(int pageId, { String? clientSessionId, }) async {
    final response = await dispatchBuilderPageDataSourcesWithHttpInfo(pageId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dispatches the service of the related data_source and returns the result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source you want to call the dispatch for
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DispatchDataSourceRequest] dispatchDataSourceRequest:
  Future<Response> dispatchPublicBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? clientSessionId, DispatchDataSourceRequest? dispatchDataSourceRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/data-source/{data_source_id}/dispatch/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = dispatchDataSourceRequest;

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

  /// Dispatches the service of the related data_source and returns the result.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source you want to call the dispatch for
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DispatchDataSourceRequest] dispatchDataSourceRequest:
  Future<void> dispatchPublicBuilderPageDataSource(int dataSourceId, { String? clientSessionId, DispatchDataSourceRequest? dispatchDataSourceRequest, }) async {
    final response = await dispatchPublicBuilderPageDataSourceWithHttpInfo(dataSourceId,  clientSessionId: clientSessionId, dispatchDataSourceRequest: dispatchDataSourceRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Dispatches the service of the related page data_sources
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page we want to dispatch the data source for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> dispatchPublicBuilderPageDataSourcesWithHttpInfo(int pageId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/page/{page_id}/dispatch-data-sources/'
      .replaceAll('{page_id}', pageId.toString());

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

  /// Dispatches the service of the related page data_sources
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page we want to dispatch the data source for.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> dispatchPublicBuilderPageDataSources(int pageId, { String? clientSessionId, }) async {
    final response = await dispatchPublicBuilderPageDataSourcesWithHttpInfo(pageId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Find the record names associated with a given list of record ids.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source to find the record names.
  ///
  /// * [String] recordIds:
  ///   A comma separated list of the record ids to search for.
  Future<Response> getRecordNamesBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? recordIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/data-source/{data_source_id}/record-names/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (recordIds != null) {
      queryParams.addAll(_queryParams('', 'record_ids', recordIds));
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

  /// Find the record names associated with a given list of record ids.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source to find the record names.
  ///
  /// * [String] recordIds:
  ///   A comma separated list of the record ids to search for.
  Future<Map<String, String>?> getRecordNamesBuilderPageDataSource(int dataSourceId, { String? recordIds, }) async {
    final response = await getRecordNamesBuilderPageDataSourceWithHttpInfo(dataSourceId,  recordIds: recordIds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, String>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, String>'),);

    }
    return null;
  }

  /// Lists all the data_sources of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the data_sources of the page related to the provided Id.
  Future<Response> listBuilderPageDataSourcesWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/data-sources/'
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

  /// Lists all the data_sources of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the data_sources of the page related to the provided Id.
  Future<List<IntegrationServiceDataSource>?> listBuilderPageDataSources(int pageId,) async {
    final response = await listBuilderPageDataSourcesWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IntegrationServiceDataSource>') as List)
        .cast<IntegrationServiceDataSource>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all the data_sources of the page related to the provided parameter if the builder is public.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the data_sources of the page related to the provided Id if the related builder is public.
  Future<Response> listPublicBuilderPageDataSourcesWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/page/{page_id}/data_sources/'
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

  /// Lists all the data_sources of the page related to the provided parameter if the builder is public.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the data_sources of the page related to the provided Id if the related builder is public.
  Future<List<IntegrationServicePublicDataSource>?> listPublicBuilderPageDataSources(int pageId,) async {
    final response = await listPublicBuilderPageDataSourcesWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IntegrationServicePublicDataSource>') as List)
        .cast<IntegrationServicePublicDataSource>()
        .toList(growable: false);

    }
    return null;
  }

  /// Moves the data_source in the page before another data_source or at the end of the page if no before data_source is given. The data_sources must belong to the same page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveDataSource] patchedMoveDataSource:
  Future<Response> moveBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? clientSessionId, PatchedMoveDataSource? patchedMoveDataSource, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/data_source/{data_source_id}/move/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedMoveDataSource;

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

  /// Moves the data_source in the page before another data_source or at the end of the page if no before data_source is given. The data_sources must belong to the same page.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveDataSource] patchedMoveDataSource:
  Future<IntegrationServiceDataSource?> moveBuilderPageDataSource(int dataSourceId, { String? clientSessionId, PatchedMoveDataSource? patchedMoveDataSource, }) async {
    final response = await moveBuilderPageDataSourceWithHttpInfo(dataSourceId,  clientSessionId: clientSessionId, patchedMoveDataSource: patchedMoveDataSource, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationServiceDataSource',) as IntegrationServiceDataSource;
    
    }
    return null;
  }

  /// Updates an existing builder data_source.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedIntegrationServiceUpdateDataSource] patchedIntegrationServiceUpdateDataSource:
  Future<Response> updateBuilderPageDataSourceWithHttpInfo(int dataSourceId, { String? clientSessionId, PatchedIntegrationServiceUpdateDataSource? patchedIntegrationServiceUpdateDataSource, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/data-source/{data_source_id}/'
      .replaceAll('{data_source_id}', dataSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedIntegrationServiceUpdateDataSource;

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

  /// Updates an existing builder data_source.
  ///
  /// Parameters:
  ///
  /// * [int] dataSourceId (required):
  ///   The id of the data_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedIntegrationServiceUpdateDataSource] patchedIntegrationServiceUpdateDataSource:
  Future<IntegrationServiceDataSource?> updateBuilderPageDataSource(int dataSourceId, { String? clientSessionId, PatchedIntegrationServiceUpdateDataSource? patchedIntegrationServiceUpdateDataSource, }) async {
    final response = await updateBuilderPageDataSourceWithHttpInfo(dataSourceId,  clientSessionId: clientSessionId, patchedIntegrationServiceUpdateDataSource: patchedIntegrationServiceUpdateDataSource, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntegrationServiceDataSource',) as IntegrationServiceDataSource;
    
    }
    return null;
  }
}
