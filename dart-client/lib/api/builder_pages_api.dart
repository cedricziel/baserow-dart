//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderPagesApi {
  BuilderPagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new page for an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Creates a page for the application builder related to the provided value.
  ///
  /// * [CreatePage] createPage (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> createBuilderPageWithHttpInfo(int builderId, CreatePage createPage, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/pages/'
      .replaceAll('{builder_id}', builderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = createPage;

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

  /// Creates a new page for an application builder
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Creates a page for the application builder related to the provided value.
  ///
  /// * [CreatePage] createPage (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Page?> createBuilderPage(int builderId, CreatePage createPage, { String? clientSessionId, }) async {
    final response = await createBuilderPageWithHttpInfo(builderId, createPage,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Page',) as Page;
    
    }
    return null;
  }

  /// Deletes an existing page of an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The id of the page
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteBuilderPageWithHttpInfo(int pageId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/pages/{page_id}/'
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes an existing page of an application builder
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The id of the page
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteBuilderPage(int pageId, { String? clientSessionId, }) async {
    final response = await deleteBuilderPageWithHttpInfo(pageId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a job to duplicate the page with the provided `page_id` parameter if the authorized user has access to the builder's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> duplicateBuilderPageAsyncWithHttpInfo(int pageId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/pages/{page_id}/duplicate/async/'
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

  /// Start a job to duplicate the page with the provided `page_id` parameter if the authorized user has access to the builder's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The page to duplicate.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<DuplicatePageJobTypeResponse?> duplicateBuilderPageAsync(int pageId, { String? clientSessionId, }) async {
    final response = await duplicateBuilderPageAsyncWithHttpInfo(pageId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DuplicatePageJobTypeResponse',) as DuplicatePageJobTypeResponse;
    
    }
    return null;
  }

  /// Apply a new order to the pages of a builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   The builder the page belongs to
  ///
  /// * [OrderPages] orderPages (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> orderBuilderPagesWithHttpInfo(int builderId, OrderPages orderPages, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/pages/order/'
      .replaceAll('{builder_id}', builderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderPages;

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

  /// Apply a new order to the pages of a builder
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   The builder the page belongs to
  ///
  /// * [OrderPages] orderPages (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> orderBuilderPages(int builderId, OrderPages orderPages, { String? clientSessionId, }) async {
    final response = await orderBuilderPagesWithHttpInfo(builderId, orderPages,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates an existing page of an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The id of the page
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedUpdatePage] patchedUpdatePage:
  Future<Response> updateBuilderPageWithHttpInfo(int pageId, { String? clientSessionId, PatchedUpdatePage? patchedUpdatePage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/pages/{page_id}/'
      .replaceAll('{page_id}', pageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdatePage;

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

  /// Updates an existing page of an application builder
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   The id of the page
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedUpdatePage] patchedUpdatePage:
  Future<Page?> updateBuilderPage(int pageId, { String? clientSessionId, PatchedUpdatePage? patchedUpdatePage, }) async {
    final response = await updateBuilderPageWithHttpInfo(pageId,  clientSessionId: clientSessionId, patchedUpdatePage: patchedUpdatePage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Page',) as Page;
    
    }
    return null;
  }
}
