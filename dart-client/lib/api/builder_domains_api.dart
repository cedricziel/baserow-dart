//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BuilderDomainsApi {
  BuilderDomainsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// This endpoint can be used to check whether a domain exists for SSL certificate purposes. It's compatible with the Caddy on_demand TLS as described here: https://caddyserver.com/docs/json/apps/tls/automation/on_demand/ask/. It will respond with a 200 status code if it exists or a 404 if it doesn't exist.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] domain:
  ///   The domain name for which
  Future<Response> askPublicBuilderDomainExistsWithHttpInfo({ int? domain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/ask-public-domain-exists/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (domain != null) {
      queryParams.addAll(_queryParams('', 'domain', domain));
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

  /// This endpoint can be used to check whether a domain exists for SSL certificate purposes. It's compatible with the Caddy on_demand TLS as described here: https://caddyserver.com/docs/json/apps/tls/automation/on_demand/ask/. It will respond with a 200 status code if it exists or a 404 if it doesn't exist.
  ///
  /// Parameters:
  ///
  /// * [int] domain:
  ///   The domain name for which
  Future<void> askPublicBuilderDomainExists({ int? domain, }) async {
    final response = await askPublicBuilderDomainExistsWithHttpInfo( domain: domain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a new domain for an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Creates a domain for the application builder related tothe provided value
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DomainTypeCreateDomain] domainTypeCreateDomain:
  Future<Response> createBuilderDomainWithHttpInfo(int builderId, { String? clientSessionId, DomainTypeCreateDomain? domainTypeCreateDomain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/domains/'
      .replaceAll('{builder_id}', builderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = domainTypeCreateDomain;

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

  /// Creates a new domain for an application builder
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Creates a domain for the application builder related tothe provided value
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [DomainTypeCreateDomain] domainTypeCreateDomain:
  Future<DomainTypeDomain?> createBuilderDomain(int builderId, { String? clientSessionId, DomainTypeCreateDomain? domainTypeCreateDomain, }) async {
    final response = await createBuilderDomainWithHttpInfo(builderId,  clientSessionId: clientSessionId, domainTypeCreateDomain: domainTypeCreateDomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainTypeDomain',) as DomainTypeDomain;
    
    }
    return null;
  }

  /// Deletes an existing domain of an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The id of the domain
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteBuilderDomainWithHttpInfo(int domainId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/{domain_id}/'
      .replaceAll('{domain_id}', domainId.toString());

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

  /// Deletes an existing domain of an application builder
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The id of the domain
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteBuilderDomain(int domainId, { String? clientSessionId, }) async {
    final response = await deleteBuilderDomainWithHttpInfo(domainId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets all the domains of a builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Gets all the domains for the specified builder
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> getBuilderDomainsWithHttpInfo(int builderId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/domains/'
      .replaceAll('{builder_id}', builderId.toString());

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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Gets all the domains of a builder
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   Gets all the domains for the specified builder
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<List<DomainTypeDomain>?> getBuilderDomains(int builderId, { String? clientSessionId, }) async {
    final response = await getBuilderDomainsWithHttpInfo(builderId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainTypeDomain>') as List)
        .cast<DomainTypeDomain>()
        .toList(growable: false);

    }
    return null;
  }

  /// Apply a new order to the domains of a builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   The builder the domain belongs to
  ///
  /// * [OrderDomains] orderDomains (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> orderBuilderDomainsWithHttpInfo(int builderId, OrderDomains orderDomains, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/{builder_id}/domains/order/'
      .replaceAll('{builder_id}', builderId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderDomains;

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

  /// Apply a new order to the domains of a builder
  ///
  /// Parameters:
  ///
  /// * [int] builderId (required):
  ///   The builder the domain belongs to
  ///
  /// * [OrderDomains] orderDomains (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> orderBuilderDomains(int builderId, OrderDomains orderDomains, { String? clientSessionId, }) async {
    final response = await orderBuilderDomainsWithHttpInfo(builderId, orderDomains,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// This endpoint starts an asynchronous job to publish the builder. The job clones the current version of the given builder and publish it for the given domain.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The builder application id the user wants to publish.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> publishBuilderDomainWithHttpInfo(int domainId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/{domain_id}/publish/async/'
      .replaceAll('{domain_id}', domainId.toString());

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

  /// This endpoint starts an asynchronous job to publish the builder. The job clones the current version of the given builder and publish it for the given domain.
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The builder application id the user wants to publish.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> publishBuilderDomain(int domainId, { String? clientSessionId, }) async {
    final response = await publishBuilderDomainWithHttpInfo(domainId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates an existing domain of an application builder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The id of the domain
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedUpdateDomain] patchedUpdateDomain:
  Future<Response> updateBuilderDomainWithHttpInfo(int domainId, { String? clientSessionId, PatchedUpdateDomain? patchedUpdateDomain, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/builder/domains/{domain_id}/'
      .replaceAll('{domain_id}', domainId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdateDomain;

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

  /// Updates an existing domain of an application builder
  ///
  /// Parameters:
  ///
  /// * [int] domainId (required):
  ///   The id of the domain
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedUpdateDomain] patchedUpdateDomain:
  Future<DomainTypeDomain?> updateBuilderDomain(int domainId, { String? clientSessionId, PatchedUpdateDomain? patchedUpdateDomain, }) async {
    final response = await updateBuilderDomainWithHttpInfo(domainId,  clientSessionId: clientSessionId, patchedUpdateDomain: patchedUpdateDomain, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainTypeDomain',) as DomainTypeDomain;
    
    }
    return null;
  }
}
