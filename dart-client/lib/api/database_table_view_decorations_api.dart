//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableViewDecorationsApi {
  DatabaseTableViewDecorationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new decoration for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a decoration for the view related to the given value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [DecoratorValueProviderTypeCreateViewDecoration] decoratorValueProviderTypeCreateViewDecoration:
  Future<Response> createDatabaseTableViewDecorationWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, DecoratorValueProviderTypeCreateViewDecoration? decoratorValueProviderTypeCreateViewDecoration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/decorations/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = decoratorValueProviderTypeCreateViewDecoration;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
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

  /// Creates a new decoration for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Creates a decoration for the view related to the given value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [DecoratorValueProviderTypeCreateViewDecoration] decoratorValueProviderTypeCreateViewDecoration:
  Future<DecoratorValueProviderTypeViewDecoration?> createDatabaseTableViewDecoration(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, DecoratorValueProviderTypeCreateViewDecoration? decoratorValueProviderTypeCreateViewDecoration, }) async {
    final response = await createDatabaseTableViewDecorationWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, decoratorValueProviderTypeCreateViewDecoration: decoratorValueProviderTypeCreateViewDecoration, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecoratorValueProviderTypeViewDecoration',) as DecoratorValueProviderTypeViewDecoration;
    
    }
    return null;
  }

  /// Deletes the existing decoration if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Deletes the decoration related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewDecorationWithHttpInfo(int viewDecorationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/decoration/{view_decoration_id}/'
      .replaceAll('{view_decoration_id}', viewDecorationId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes the existing decoration if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Deletes the decoration related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableViewDecoration(int viewDecorationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewDecorationWithHttpInfo(viewDecorationId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the existing view decoration if the current user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Returns the view decoration related to the provided id.
  Future<Response> getDatabaseTableViewDecorationWithHttpInfo(int viewDecorationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/decoration/{view_decoration_id}/'
      .replaceAll('{view_decoration_id}', viewDecorationId.toString());

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

  /// Returns the existing view decoration if the current user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Returns the view decoration related to the provided id.
  Future<DecoratorValueProviderTypeViewDecoration?> getDatabaseTableViewDecoration(int viewDecorationId,) async {
    final response = await getDatabaseTableViewDecorationWithHttpInfo(viewDecorationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecoratorValueProviderTypeViewDecoration',) as DecoratorValueProviderTypeViewDecoration;
    
    }
    return null;
  }

  /// Lists all decorations of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple decorations. View decorators can be used to decorate rows. This can, for example, be used to change the border or background color of a row if it matches certain conditions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only decoration of the view given to the provided value.
  Future<Response> listDatabaseTableViewDecorationsWithHttpInfo(int viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/decorations/'
      .replaceAll('{view_id}', viewId.toString());

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

  /// Lists all decorations of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple decorations. View decorators can be used to decorate rows. This can, for example, be used to change the border or background color of a row if it matches certain conditions.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only decoration of the view given to the provided value.
  Future<List<DecoratorValueProviderTypeViewDecoration>?> listDatabaseTableViewDecorations(int viewId,) async {
    final response = await listDatabaseTableViewDecorationsWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DecoratorValueProviderTypeViewDecoration>') as List)
        .cast<DecoratorValueProviderTypeViewDecoration>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing decoration if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Updates the view decoration related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedDecoratorValueProviderTypeUpdateViewDecoration] patchedDecoratorValueProviderTypeUpdateViewDecoration:
  Future<Response> updateDatabaseTableViewDecorationWithHttpInfo(int viewDecorationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedDecoratorValueProviderTypeUpdateViewDecoration? patchedDecoratorValueProviderTypeUpdateViewDecoration, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/decoration/{view_decoration_id}/'
      .replaceAll('{view_decoration_id}', viewDecorationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedDecoratorValueProviderTypeUpdateViewDecoration;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
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

  /// Updates the existing decoration if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewDecorationId (required):
  ///   Updates the view decoration related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedDecoratorValueProviderTypeUpdateViewDecoration] patchedDecoratorValueProviderTypeUpdateViewDecoration:
  Future<DecoratorValueProviderTypeViewDecoration?> updateDatabaseTableViewDecoration(int viewDecorationId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedDecoratorValueProviderTypeUpdateViewDecoration? patchedDecoratorValueProviderTypeUpdateViewDecoration, }) async {
    final response = await updateDatabaseTableViewDecorationWithHttpInfo(viewDecorationId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedDecoratorValueProviderTypeUpdateViewDecoration: patchedDecoratorValueProviderTypeUpdateViewDecoration, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecoratorValueProviderTypeViewDecoration',) as DecoratorValueProviderTypeViewDecoration;
    
    }
    return null;
  }
}
