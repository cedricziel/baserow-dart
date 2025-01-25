//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderThemeApi {
  BuilderThemeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Updates the theme properties for the provided id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Updates the theme for the application builder related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedCombinedThemeConfigBlocks] patchedCombinedThemeConfigBlocks:
  Future<Response> updateBuilderThemeWithHttpInfo(int builderId, { String? clientSessionId, PatchedCombinedThemeConfigBlocks? patchedCombinedThemeConfigBlocks, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/theme/'
      .replaceAll('{builder_id}', builderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedCombinedThemeConfigBlocks;

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

  /// Updates the theme properties for the provided id.
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Updates the theme for the application builder related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedCombinedThemeConfigBlocks] patchedCombinedThemeConfigBlocks:
  Future<CombinedThemeConfigBlocks?> updateBuilderTheme(int builderId, { String? clientSessionId, PatchedCombinedThemeConfigBlocks? patchedCombinedThemeConfigBlocks, }) async {
    final response = await updateBuilderThemeWithHttpInfo(builderId,  clientSessionId: clientSessionId, patchedCombinedThemeConfigBlocks: patchedCombinedThemeConfigBlocks, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CombinedThemeConfigBlocks',) as CombinedThemeConfigBlocks;
    
    }
    return null;
  }
}
