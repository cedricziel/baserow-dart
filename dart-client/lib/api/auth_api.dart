//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Return the correct redirect_url to initiate the SSO SAML login. It needs an email address if multiple SAML providers are configured otherwise the only configured SAML provider signup URL will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] language:
  ///   An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login.
  ///
  /// * [String] workspaceInvitationToken:
  ///   If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.
  Future<Response> authProviderLoginUrlWithHttpInfo({ String? email, String? language, String? original, String? workspaceInvitationToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/sso/saml/login-url/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (original != null) {
      queryParams.addAll(_queryParams('', 'original', original));
    }
    if (workspaceInvitationToken != null) {
      queryParams.addAll(_queryParams('', 'workspace_invitation_token', workspaceInvitationToken));
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

  /// Return the correct redirect_url to initiate the SSO SAML login. It needs an email address if multiple SAML providers are configured otherwise the only configured SAML provider signup URL will be returned.
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] language:
  ///   An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login.
  ///
  /// * [String] workspaceInvitationToken:
  ///   If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.
  Future<Map<String, String>?> authProviderLoginUrl({ String? email, String? language, String? original, String? workspaceInvitationToken, }) async {
    final response = await authProviderLoginUrlWithHttpInfo( email: email, language: language, original: original, workspaceInvitationToken: workspaceInvitationToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, String>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, String>'),);

    }
    return null;
  }

  /// Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in Baserow or create a new one otherwise. Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SAMLResponse] sAMLResponse (required):
  Future<Response> authProviderSamlAcsUrlWithHttpInfo(SAMLResponse sAMLResponse,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/sso/saml/acs/';

    // ignore: prefer_final_locals
    Object? postBody = sAMLResponse;

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

  /// Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in Baserow or create a new one otherwise. Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
  ///
  /// Parameters:
  ///
  /// * [SAMLResponse] sAMLResponse (required):
  Future<void> authProviderSamlAcsUrl(SAMLResponse sAMLResponse,) async {
    final response = await authProviderSamlAcsUrlWithHttpInfo(sAMLResponse,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in user_source or create a new one otherwise.Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userSourceUid (required):
  ///
  /// * [CommonSAMLResponse] commonSAMLResponse (required):
  Future<Response> authProviderSamlAcsUrl2WithHttpInfo(String userSourceUid, CommonSAMLResponse commonSAMLResponse,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_uid}/sso/saml/acs/'
      .replaceAll('{user_source_uid}', userSourceUid);

    // ignore: prefer_final_locals
    Object? postBody = commonSAMLResponse;

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

  /// Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in user_source or create a new one otherwise.Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
  ///
  /// Parameters:
  ///
  /// * [String] userSourceUid (required):
  ///
  /// * [CommonSAMLResponse] commonSAMLResponse (required):
  Future<void> authProviderSamlAcsUrl2(String userSourceUid, CommonSAMLResponse commonSAMLResponse,) async {
    final response = await authProviderSamlAcsUrl2WithHttpInfo(userSourceUid, commonSAMLResponse,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] language:
  ///   An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login or sign up.
  ///
  /// * [String] workspaceInvitationToken:
  ///   If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.
  Future<Response> authProviderSamlSpLoginWithHttpInfo({ String? email, String? language, String? original, String? workspaceInvitationToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/sso/saml/login/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (language != null) {
      queryParams.addAll(_queryParams('', 'language', language));
    }
    if (original != null) {
      queryParams.addAll(_queryParams('', 'original', original));
    }
    if (workspaceInvitationToken != null) {
      queryParams.addAll(_queryParams('', 'workspace_invitation_token', workspaceInvitationToken));
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

  /// This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.
  ///
  /// Parameters:
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] language:
  ///   An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login or sign up.
  ///
  /// * [String] workspaceInvitationToken:
  ///   If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.
  Future<void> authProviderSamlSpLogin({ String? email, String? language, String? original, String? workspaceInvitationToken, }) async {
    final response = await authProviderSamlSpLoginWithHttpInfo( email: email, language: language, original: original, workspaceInvitationToken: workspaceInvitationToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createAuthProviderWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/auth-provider/';

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

  /// Creates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
  Future<AuthenticationProviderAuthProvider?> createAuthProvider() async {
    final response = await createAuthProviderWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationProviderAuthProvider',) as AuthenticationProviderAuthProvider;
    
    }
    return null;
  }

  /// Delete an authentication provider.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to delete.
  Future<Response> deleteAuthProviderWithHttpInfo(int authProviderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/auth-provider/{auth_provider_id}/'
      .replaceAll('{auth_provider_id}', authProviderId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Delete an authentication provider.
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to delete.
  Future<void> deleteAuthProvider(int authProviderId,) async {
    final response = await deleteAuthProviderWithHttpInfo(authProviderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an authentication provider.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to fetch.
  Future<Response> getAuthProviderWithHttpInfo(int authProviderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/auth-provider/{auth_provider_id}/'
      .replaceAll('{auth_provider_id}', authProviderId.toString());

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

  /// Get an authentication provider.
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to fetch.
  Future<AuthenticationProviderAuthProvider?> getAuthProvider(int authProviderId,) async {
    final response = await getAuthProviderWithHttpInfo(authProviderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationProviderAuthProvider',) as AuthenticationProviderAuthProvider;
    
    }
    return null;
  }

  /// List all the available authentication providers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAuthProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/auth-provider/';

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

  /// List all the available authentication providers.
  Future<List<AuthenticationProviderAuthProvider>?> listAuthProviders() async {
    final response = await listAuthProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AuthenticationProviderAuthProvider>') as List)
        .cast<AuthenticationProviderAuthProvider>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists the available login options for the configured authentication providers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAuthProvidersLoginOptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth-provider/login-options/';

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

  /// Lists the available login options for the configured authentication providers.
  Future<Map<String, Object>?> listAuthProvidersLoginOptions() async {
    final response = await listAuthProvidersLoginOptionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Processes callback from OAuth2 provider and logs the user in if successful.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] providerId (required):
  ///   The id of the provider for which to process the callback.
  ///
  /// * [int] code:
  ///   The id of the provider for which to process the callback.
  Future<Response> oauthProviderLoginCallbackWithHttpInfo(int providerId, { int? code, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/sso/oauth2/callback/{provider_id}/'
      .replaceAll('{provider_id}', providerId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (code != null) {
      queryParams.addAll(_queryParams('', 'code', code));
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

  /// Processes callback from OAuth2 provider and logs the user in if successful.
  ///
  /// Parameters:
  ///
  /// * [int] providerId (required):
  ///   The id of the provider for which to process the callback.
  ///
  /// * [int] code:
  ///   The id of the provider for which to process the callback.
  Future<void> oauthProviderLoginCallback(int providerId, { int? code, }) async {
    final response = await oauthProviderLoginCallbackWithHttpInfo(providerId,  code: code, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Redirects to the OAuth2 provider's authentication URL based on the provided auth provider's id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] providerId (required):
  ///   The id of the provider for redirect.
  ///
  /// * [int] original:
  ///   The relative part of URL that the user wanted to access.
  ///
  /// * [String] workspaceInvitationToken:
  ///   The invitation token sent to the user to join a specific workspace.
  Future<Response> oauthProviderLoginRedirectWithHttpInfo(int providerId, { int? original, String? workspaceInvitationToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/sso/oauth2/login/{provider_id}/'
      .replaceAll('{provider_id}', providerId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (original != null) {
      queryParams.addAll(_queryParams('', 'original', original));
    }
    if (workspaceInvitationToken != null) {
      queryParams.addAll(_queryParams('', 'workspace_invitation_token', workspaceInvitationToken));
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

  /// Redirects to the OAuth2 provider's authentication URL based on the provided auth provider's id.
  ///
  /// Parameters:
  ///
  /// * [int] providerId (required):
  ///   The id of the provider for redirect.
  ///
  /// * [int] original:
  ///   The relative part of URL that the user wanted to access.
  ///
  /// * [String] workspaceInvitationToken:
  ///   The invitation token sent to the user to join a specific workspace.
  Future<void> oauthProviderLoginRedirect(int providerId, { int? original, String? workspaceInvitationToken, }) async {
    final response = await oauthProviderLoginRedirectWithHttpInfo(providerId,  original: original, workspaceInvitationToken: workspaceInvitationToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to update.
  Future<Response> updateAuthProviderWithHttpInfo(int authProviderId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/auth-provider/{auth_provider_id}/'
      .replaceAll('{auth_provider_id}', authProviderId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Updates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
  ///
  /// Parameters:
  ///
  /// * [int] authProviderId (required):
  ///   The authentication provider id to update.
  Future<AuthenticationProviderAuthProvider?> updateAuthProvider(int authProviderId,) async {
    final response = await updateAuthProviderWithHttpInfo(authProviderId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationProviderAuthProvider',) as AuthenticationProviderAuthProvider;
    
    }
    return null;
  }
}
