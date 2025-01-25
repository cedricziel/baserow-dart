//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class UserSourcesApi {
  UserSourcesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userSourceUid (required):
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login or sign up.
  Future<Response> appAuthProviderSamlSpLoginWithHttpInfo(String userSourceUid, { String? email, String? original, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_uid}/sso/saml/login/'
      .replaceAll('{user_source_uid}', userSourceUid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (original != null) {
      queryParams.addAll(_queryParams('', 'original', original));
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
  /// * [String] userSourceUid (required):
  ///
  /// * [String] email:
  ///   The email address of the user that want to sign in using SAML.
  ///
  /// * [String] original:
  ///   The url to which the user should be redirected after a successful login or sign up.
  Future<void> appAuthProviderSamlSpLogin(String userSourceUid, { String? email, String? original, }) async {
    final response = await appAuthProviderSamlSpLoginWithHttpInfo(userSourceUid,  email: email, original: original, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a new user_source
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Creates an user_source for the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [UserSourceCreateUserSource] userSourceCreateUserSource:
  Future<Response> createApplicationUserSourceWithHttpInfo(int applicationId, { String? clientSessionId, UserSourceCreateUserSource? userSourceCreateUserSource, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/user-sources/'
      .replaceAll('{application_id}', applicationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = userSourceCreateUserSource;

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

  /// Creates a new user_source
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Creates an user_source for the application related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [UserSourceCreateUserSource] userSourceCreateUserSource:
  Future<UserSourceUserSource?> createApplicationUserSource(int applicationId, { String? clientSessionId, UserSourceCreateUserSource? userSourceCreateUserSource, }) async {
    final response = await createApplicationUserSourceWithHttpInfo(applicationId,  clientSessionId: clientSessionId, userSourceCreateUserSource: userSourceCreateUserSource, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceUserSource',) as UserSourceUserSource;
    
    }
    return null;
  }

  /// Deletes the user_source related by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> deleteApplicationUserSourceWithHttpInfo(int userSourceId, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_id}/'
      .replaceAll('{user_source_id}', userSourceId.toString());

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

  /// Deletes the user_source related by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<void> deleteApplicationUserSource(int userSourceId, { String? clientSessionId, }) async {
    final response = await deleteApplicationUserSourceWithHttpInfo(userSourceId,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List per user sources the first 5 users available.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   The application we want the users for.
  Future<Response> listApplicationUserSourceUsersWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/list-user-source-users/'
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

  /// List per user sources the first 5 users available.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   The application we want the users for.
  Future<UsersPerUserSource?> listApplicationUserSourceUsers(int applicationId,) async {
    final response = await listApplicationUserSourceUsersWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UsersPerUserSource',) as UsersPerUserSource;
    
    }
    return null;
  }

  /// Lists all the user_sources of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the user_sources of the application related to the provided Id.
  Future<Response> listApplicationUserSourcesWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/application/{application_id}/user-sources/'
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

  /// Lists all the user_sources of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Returns only the user_sources of the application related to the provided Id.
  Future<List<UserSourceUserSource>?> listApplicationUserSources(int applicationId,) async {
    final response = await listApplicationUserSourcesWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserSourceUserSource>') as List)
        .cast<UserSourceUserSource>()
        .toList(growable: false);

    }
    return null;
  }

  /// Moves the user_source in the application before another user_source or at the end of the application if no before user_source is given. The user_sources must belong to the same application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveUserSource] patchedMoveUserSource:
  Future<Response> moveApplicationUserSourceWithHttpInfo(int userSourceId, { String? clientSessionId, PatchedMoveUserSource? patchedMoveUserSource, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_id}/move/'
      .replaceAll('{user_source_id}', userSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedMoveUserSource;

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

  /// Moves the user_source in the application before another user_source or at the end of the application if no before user_source is given. The user_sources must belong to the same application.
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source to move
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [PatchedMoveUserSource] patchedMoveUserSource:
  Future<UserSourceUserSource?> moveApplicationUserSource(int userSourceId, { String? clientSessionId, PatchedMoveUserSource? patchedMoveUserSource, }) async {
    final response = await moveApplicationUserSourceWithHttpInfo(userSourceId,  clientSessionId: clientSessionId, patchedMoveUserSource: patchedMoveUserSource, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceUserSource',) as UserSourceUserSource;
    
    }
    return null;
  }

  /// Updates an existing user_source.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [LocalBaserowUserSourceUpdateUserSource] body:
  Future<Response> updateApplicationUserSourceWithHttpInfo(int userSourceId, { String? clientSessionId, LocalBaserowUserSourceUpdateUserSource? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_id}/'
      .replaceAll('{user_source_id}', userSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Updates an existing user_source.
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [LocalBaserowUserSourceUpdateUserSource] body:
  Future<UserSourceUserSource?> updateApplicationUserSource(int userSourceId, { String? clientSessionId, LocalBaserowUserSourceUpdateUserSource? body, }) async {
    final response = await updateApplicationUserSourceWithHttpInfo(userSourceId,  clientSessionId: clientSessionId, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceUserSource',) as UserSourceUserSource;
    
    }
    return null;
  }

  /// Force authenticates an existing user based on their ID. If successful, an access token and a refresh token will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The user source to use to authenticate the user.
  Future<Response> userSourceForceTokenAuthWithHttpInfo(int userSourceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_id}/force-token-auth'
      .replaceAll('{user_source_id}', userSourceId.toString());

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

  /// Force authenticates an existing user based on their ID. If successful, an access token and a refresh token will be returned.
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The user source to use to authenticate the user.
  Future<UserSourceForceTokenAuth200Response?> userSourceForceTokenAuth(int userSourceId,) async {
    final response = await userSourceForceTokenAuthWithHttpInfo(userSourceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceForceTokenAuth200Response',) as UserSourceForceTokenAuth200Response;
    
    }
    return null;
  }

  /// Authenticates an existing user against a user source based on their credentials. If successful, an access token and a refresh token will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source to move
  ///
  /// * [TokenObtainPair] tokenObtainPair (required):
  Future<Response> userSourceTokenAuthWithHttpInfo(int userSourceId, TokenObtainPair tokenObtainPair,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source/{user_source_id}/token-auth'
      .replaceAll('{user_source_id}', userSourceId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tokenObtainPair;

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

  /// Authenticates an existing user against a user source based on their credentials. If successful, an access token and a refresh token will be returned.
  ///
  /// Parameters:
  ///
  /// * [int] userSourceId (required):
  ///   The id of the user_source to move
  ///
  /// * [TokenObtainPair] tokenObtainPair (required):
  Future<UserSourceForceTokenAuth200Response?> userSourceTokenAuth(int userSourceId, TokenObtainPair tokenObtainPair,) async {
    final response = await userSourceTokenAuthWithHttpInfo(userSourceId, tokenObtainPair,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceForceTokenAuth200Response',) as UserSourceForceTokenAuth200Response;
    
    }
    return null;
  }

  /// Blacklists the provided user source token. This can be used the sign the user off.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenBlacklist] tokenBlacklist (required):
  Future<Response> userSourceTokenBlacklistWithHttpInfo(TokenBlacklist tokenBlacklist,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source-token-blacklist/';

    // ignore: prefer_final_locals
    Object? postBody = tokenBlacklist;

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

  /// Blacklists the provided user source token. This can be used the sign the user off.
  ///
  /// Parameters:
  ///
  /// * [TokenBlacklist] tokenBlacklist (required):
  Future<void> userSourceTokenBlacklist(TokenBlacklist tokenBlacklist,) async {
    final response = await userSourceTokenBlacklistWithHttpInfo(tokenBlacklist,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Generate a new access_token that can be used to continue operating on Baserow with a user source user starting from a valid refresh token.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSourceTokenRefreshWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user-source-auth-refresh/';

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

  /// Generate a new access_token that can be used to continue operating on Baserow with a user source user starting from a valid refresh token.
  Future<UserSourceTokenRefresh200Response?> userSourceTokenRefresh() async {
    final response = await userSourceTokenRefreshWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserSourceTokenRefresh200Response',) as UserSourceTokenRefresh200Response;
    
    }
    return null;
  }
}
