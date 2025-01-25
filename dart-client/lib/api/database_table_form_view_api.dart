//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableFormViewApi {
  DatabaseTableFormViewApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the metadata related to the form view if the form is publicly shared or if the user has access to the related workspace. This data can be used to construct a form with the right fields.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug related to the form form.
  Future<Response> getMetaDatabaseTableFormViewWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/form/{slug}/submit/'
      .replaceAll('{slug}', slug);

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

  /// Returns the metadata related to the form view if the form is publicly shared or if the user has access to the related workspace. This data can be used to construct a form with the right fields.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug related to the form form.
  Future<PublicFormView?> getMetaDatabaseTableFormView(String slug,) async {
    final response = await getMetaDatabaseTableFormViewWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicFormView',) as PublicFormView;
    
    }
    return null;
  }

  /// Submits the form if the form is publicly shared or if the user has access to the related workspace. The provided data will be validated based on the fields that are in the form and the rules per field. If valid, a new row will be created in the table.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug related to the form.
  ///
  /// * [ExampleRowRequest] exampleRowRequest:
  Future<Response> submitDatabaseTableFormViewWithHttpInfo(String slug, { ExampleRowRequest? exampleRowRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/form/{slug}/submit/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = exampleRowRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Submits the form if the form is publicly shared or if the user has access to the related workspace. The provided data will be validated based on the fields that are in the form and the rules per field. If valid, a new row will be created in the table.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug related to the form.
  ///
  /// * [ExampleRowRequest] exampleRowRequest:
  Future<FormViewSubmitted?> submitDatabaseTableFormView(String slug, { ExampleRowRequest? exampleRowRequest, }) async {
    final response = await submitDatabaseTableFormViewWithHttpInfo(slug,  exampleRowRequest: exampleRowRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormViewSubmitted',) as FormViewSubmitted;
    
    }
    return null;
  }

  /// Uploads a file anonymously to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Submits files only if the view with the provided slughas a public file field.
  Future<Response> uploadFileFormViewWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/form/{slug}/upload-file/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Uploads a file anonymously to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Submits files only if the view with the provided slughas a public file field.
  Future<UserFile?> uploadFileFormView(String slug,) async {
    final response = await uploadFileFormViewWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserFile',) as UserFile;
    
    }
    return null;
  }
}
