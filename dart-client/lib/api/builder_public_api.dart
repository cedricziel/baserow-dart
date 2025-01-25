//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderPublicApi {
  BuilderPublicApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns the public serialized version of the builder for the given domain name and its pages .
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domainName (required):
  ///   Returns the builder published for the given domain name.
  Future<Response> getPublicBuilderByDomainNameWithHttpInfo(String domainName,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/by_name/{domain_name}/'
      .replaceAll('{domain_name}', domainName);

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

  /// Returns the public serialized version of the builder for the given domain name and its pages .
  ///
  /// Parameters:
  ///
  /// * [String] domainName (required):
  ///   Returns the builder published for the given domain name.
  Future<PublicBuilder?> getPublicBuilderByDomainName(String domainName,) async {
    final response = await getPublicBuilderByDomainNameWithHttpInfo(domainName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicBuilder',) as PublicBuilder;
    
    }
    return null;
  }

  /// Returns the public serialized version of the builder and its pages for the given builder id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Returns the builder related to the provided Id and its pages.
  Future<Response> getPublicBuilderByIdWithHttpInfo(int builderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/published/by_id/{builder_id}/'
      .replaceAll('{builder_id}', builderId.toString());

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

  /// Returns the public serialized version of the builder and its pages for the given builder id.
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Returns the builder related to the provided Id and its pages.
  Future<PublicBuilder?> getPublicBuilderById(int builderId,) async {
    final response = await getPublicBuilderByIdWithHttpInfo(builderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicBuilder',) as PublicBuilder;
    
    }
    return null;
  }
}
