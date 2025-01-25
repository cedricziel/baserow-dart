//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderElementsApi {
  BuilderElementsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new builder element
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates an element for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [ElementTypeCreateElement] elementTypeCreateElement:
  Future<Response> createBuilderPageElementWithHttpInfo(int pageId, { String? clientSessionId, ElementTypeCreateElement? elementTypeCreateElement, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/elements/'
      .replaceAll('{page_id}', pageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = elementTypeCreateElement;

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

  /// Creates a new builder element
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Creates an element for the builder page related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [ElementTypeCreateElement] elementTypeCreateElement:
  Future<ElementTypeElement?> createBuilderPageElement(int pageId, { String? clientSessionId, ElementTypeCreateElement? elementTypeCreateElement, }) async {
    final response = await createBuilderPageElementWithHttpInfo(pageId,  clientSessionId: clientSessionId, elementTypeCreateElement: elementTypeCreateElement, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ElementTypeElement',) as ElementTypeElement;
    
    }
    return null;
  }

  /// Deletes the element related by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteBuilderPageElementWithHttpInfo(int elementId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/element/{element_id}/'
      .replaceAll('{element_id}', elementId.toString());

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

  /// Deletes the element related by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteBuilderPageElement(int elementId, { String? clientSessionId, }) async {
    final response = await deleteBuilderPageElementWithHttpInfo(elementId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Duplicates an element and all of the elements children and the associated workflow actions as well.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element to duplicate
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> duplicateBuilderPageElementWithHttpInfo(int elementId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/element/{element_id}/duplicate/'
      .replaceAll('{element_id}', elementId.toString());

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

  /// Duplicates an element and all of the elements children and the associated workflow actions as well.
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element to duplicate
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<DuplicateElement?> duplicateBuilderPageElement(int elementId, { String? clientSessionId, }) async {
    final response = await duplicateBuilderPageElementWithHttpInfo(elementId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DuplicateElement',) as DuplicateElement;
    
    }
    return null;
  }

  /// Lists all the elements of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the elements of the page related to the provided Id.
  Future<Response> listBuilderPageElementsWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/page/{page_id}/elements/'
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

  /// Lists all the elements of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns only the elements of the page related to the provided Id.
  Future<List<ElementTypeElement>?> listBuilderPageElements(int pageId,) async {
    final response = await listBuilderPageElementsWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ElementTypeElement>') as List)
        .cast<ElementTypeElement>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all the elements of the page related to the provided parameter. If the user is Anonymous, the page must belong to a published builder instance to being accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns the elements of the page related to the provided Id.
  Future<Response> listPublicBuilderPageElementsWithHttpInfo(int pageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/page/{page_id}/elements/'
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

  /// Lists all the elements of the page related to the provided parameter. If the user is Anonymous, the page must belong to a published builder instance to being accessible.
  ///
  /// Parameters:
  ///
  /// * [int] pageId (required):
  ///   Returns the elements of the page related to the provided Id.
  Future<List<ElementTypePublicElement>?> listPublicBuilderPageElements(int pageId,) async {
    final response = await listPublicBuilderPageElementsWithHttpInfo(pageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ElementTypePublicElement>') as List)
        .cast<ElementTypePublicElement>()
        .toList(growable: false);

    }
    return null;
  }

  /// Moves the element in the page before another element or at the end of the page if no before element is given. The elements must belong to the same page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveElement] patchedMoveElement:
  Future<Response> moveBuilderPageElementWithHttpInfo(int elementId, { String? clientSessionId, PatchedMoveElement? patchedMoveElement, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/element/{element_id}/move/'
      .replaceAll('{element_id}', elementId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedMoveElement;

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

  /// Moves the element in the page before another element or at the end of the page if no before element is given. The elements must belong to the same page.
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveElement] patchedMoveElement:
  Future<ElementTypeElement?> moveBuilderPageElement(int elementId, { String? clientSessionId, PatchedMoveElement? patchedMoveElement, }) async {
    final response = await moveBuilderPageElementWithHttpInfo(elementId,  clientSessionId: clientSessionId, patchedMoveElement: patchedMoveElement, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ElementTypeElement',) as ElementTypeElement;
    
    }
    return null;
  }

  /// Updates an existing builder element.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedElementTypeUpdateElement] patchedElementTypeUpdateElement:
  Future<Response> updateBuilderPageElementWithHttpInfo(int elementId, { String? clientSessionId, PatchedElementTypeUpdateElement? patchedElementTypeUpdateElement, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/element/{element_id}/'
      .replaceAll('{element_id}', elementId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedElementTypeUpdateElement;

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

  /// Updates an existing builder element.
  ///
  /// Parameters:
  ///
  /// * [int] elementId (required):
  ///   The id of the element
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedElementTypeUpdateElement] patchedElementTypeUpdateElement:
  Future<ElementTypeElement?> updateBuilderPageElement(int elementId, { String? clientSessionId, PatchedElementTypeUpdateElement? patchedElementTypeUpdateElement, }) async {
    final response = await updateBuilderPageElementWithHttpInfo(elementId,  clientSessionId: clientSessionId, patchedElementTypeUpdateElement: patchedElementTypeUpdateElement, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ElementTypeElement',) as ElementTypeElement;
    
    }
    return null;
  }
}
