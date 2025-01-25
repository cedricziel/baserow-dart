//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class UserSourceRolesApi {
  UserSourceRolesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists all the roles of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the roles of the application related to the provided Id.
  Future<Response> listApplicationUserSourceRolesWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/user-sources/roles/'
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

  /// Lists all the roles of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the roles of the application related to the provided Id.
  Future<UserSourceUserSourceRoles?> listApplicationUserSourceRoles(int applicationId,) async {
    final response = await listApplicationUserSourceRolesWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceUserSourceRoles',) as UserSourceUserSourceRoles;
    
    }
    return null;
  }
}
