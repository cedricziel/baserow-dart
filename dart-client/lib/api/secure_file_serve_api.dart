//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class SecureFileServeApi {
  SecureFileServeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Downloads a file using the backend and the secure file serve feature. The signed data is extracted from the URL and used to verify if the user has access to the file. If the permissions check passes and the file exists, the file is served to the user.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] signedData (required):
  Future<Response> secureFileServeDownloadWithHttpInfo(String signedData,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/files/{signed_data}'
      .replaceAll('{signed_data}', signedData);

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

  /// Downloads a file using the backend and the secure file serve feature. The signed data is extracted from the URL and used to verify if the user has access to the file. If the permissions check passes and the file exists, the file is served to the user.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] signedData (required):
  Future<Object?> secureFileServeDownload(String signedData,) async {
    final response = await secureFileServeDownloadWithHttpInfo(signedData,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
