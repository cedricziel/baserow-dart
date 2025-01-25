//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class UserFilesApi {
  UserFilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Uploads a file to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> uploadFileWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-files/upload-file/';

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

  /// Uploads a file to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.
  Future<UserFile?> uploadFile() async {
    final response = await uploadFileWithHttpInfo();
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

  /// Uploads a file to Baserow by downloading it from the provided URL.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserFileUploadViaURLRequest] userFileUploadViaURLRequest (required):
  Future<Response> uploadViaUrlWithHttpInfo(UserFileUploadViaURLRequest userFileUploadViaURLRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-files/upload-via-url/';

    // ignore: prefer_final_locals
    Object? postBody = userFileUploadViaURLRequest;

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

  /// Uploads a file to Baserow by downloading it from the provided URL.
  ///
  /// Parameters:
  ///
  /// * [UserFileUploadViaURLRequest] userFileUploadViaURLRequest (required):
  Future<UserFile?> uploadViaUrl(UserFileUploadViaURLRequest userFileUploadViaURLRequest,) async {
    final response = await uploadViaUrlWithHttpInfo(userFileUploadViaURLRequest,);
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
