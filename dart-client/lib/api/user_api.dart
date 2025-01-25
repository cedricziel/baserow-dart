//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Changes the password of an authenticated user, but only if the old password matches.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordBodyValidation] changePasswordBodyValidation (required):
  Future<Response> changePasswordWithHttpInfo(ChangePasswordBodyValidation changePasswordBodyValidation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/change-password/';

    // ignore: prefer_final_locals
    Object? postBody = changePasswordBodyValidation;

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

  /// Changes the password of an authenticated user, but only if the old password matches.
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordBodyValidation] changePasswordBodyValidation (required):
  Future<void> changePassword(ChangePasswordBodyValidation changePasswordBodyValidation,) async {
    final response = await changePasswordWithHttpInfo(changePasswordBodyValidation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a new user based on the provided values. If desired an authentication JWT can be generated right away. After creating an account the initial workspace containing a database is created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Register] register (required):
  Future<Response> createUserWithHttpInfo(Register register,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/';

    // ignore: prefer_final_locals
    Object? postBody = register;

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

  /// Creates a new user based on the provided values. If desired an authentication JWT can be generated right away. After creating an account the initial workspace containing a database is created.
  ///
  /// Parameters:
  ///
  /// * [Register] register (required):
  Future<CreateUser200Response?> createUser(Register register,) async {
    final response = await createUserWithHttpInfo(register,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateUser200Response',) as CreateUser200Response;
    
    }
    return null;
  }

  /// Lists all the relevant user information that for example could be shown on a dashboard. It will contain all the pending workspace invitations for that user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> dashboardWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/dashboard/';

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

  /// Lists all the relevant user information that for example could be shown on a dashboard. It will contain all the pending workspace invitations for that user.
  Future<Dashboard?> dashboard() async {
    final response = await dashboardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Dashboard',) as Dashboard;
    
    }
    return null;
  }

  /// Redoes the latest redoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be redone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId (required):
  ///   The particular client session to redo actions for. The actions must have been performed with this same header set with the same value for them to be redoable by this endpoint.
  ///
  /// * [PatchedUndoRedoRequest] patchedUndoRedoRequest:
  Future<Response> redoWithHttpInfo(String clientSessionId, { PatchedUndoRedoRequest? patchedUndoRedoRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/redo/';

    // ignore: prefer_final_locals
    Object? postBody = patchedUndoRedoRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);

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

  /// Redoes the latest redoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be redone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId (required):
  ///   The particular client session to redo actions for. The actions must have been performed with this same header set with the same value for them to be redoable by this endpoint.
  ///
  /// * [PatchedUndoRedoRequest] patchedUndoRedoRequest:
  Future<UndoRedoResponse?> redo(String clientSessionId, { PatchedUndoRedoRequest? patchedUndoRedoRequest, }) async {
    final response = await redoWithHttpInfo(clientSessionId,  patchedUndoRedoRequest: patchedUndoRedoRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UndoRedoResponse',) as UndoRedoResponse;
    
    }
    return null;
  }

  /// Changes the password of a user if the reset token is valid. The **send_password_reset_email** endpoint sends an email to the user containing the token. That token can be used to change the password here without providing the old password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ResetPasswordBodyValidation] resetPasswordBodyValidation (required):
  Future<Response> resetPasswordWithHttpInfo(ResetPasswordBodyValidation resetPasswordBodyValidation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/reset-password/';

    // ignore: prefer_final_locals
    Object? postBody = resetPasswordBodyValidation;

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

  /// Changes the password of a user if the reset token is valid. The **send_password_reset_email** endpoint sends an email to the user containing the token. That token can be used to change the password here without providing the old password.
  ///
  /// Parameters:
  ///
  /// * [ResetPasswordBodyValidation] resetPasswordBodyValidation (required):
  Future<void> resetPassword(ResetPasswordBodyValidation resetPasswordBodyValidation,) async {
    final response = await resetPasswordWithHttpInfo(resetPasswordBodyValidation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Schedules the account deletion of the authenticated user. The user will be permanently deleted after the grace delay defined by the instance administrator.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> scheduleAccountDeletionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/schedule-account-deletion/';

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

  /// Schedules the account deletion of the authenticated user. The user will be permanently deleted after the grace delay defined by the instance administrator.
  Future<void> scheduleAccountDeletion() async {
    final response = await scheduleAccountDeletionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sends an email containing the password reset link to the email address of the user. This will only be done if a user is found with the given email address. The endpoint will not fail if the email address is not found. The link is going to the valid for 48 hours.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendResetPasswordEmailBodyValidation] sendResetPasswordEmailBodyValidation (required):
  Future<Response> sendPasswordResetEmailWithHttpInfo(SendResetPasswordEmailBodyValidation sendResetPasswordEmailBodyValidation,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/send-reset-password-email/';

    // ignore: prefer_final_locals
    Object? postBody = sendResetPasswordEmailBodyValidation;

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

  /// Sends an email containing the password reset link to the email address of the user. This will only be done if a user is found with the given email address. The endpoint will not fail if the email address is not found. The link is going to the valid for 48 hours.
  ///
  /// Parameters:
  ///
  /// * [SendResetPasswordEmailBodyValidation] sendResetPasswordEmailBodyValidation (required):
  Future<void> sendPasswordResetEmail(SendResetPasswordEmailBodyValidation sendResetPasswordEmailBodyValidation,) async {
    final response = await sendPasswordResetEmailWithHttpInfo(sendResetPasswordEmailBodyValidation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sends an email to the user with an email verification link if the user's email is not verified yet.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> sendVerifyEmailWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/send-verify-email/';

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

  /// Sends an email to the user with an email verification link if the user's email is not verified yet.
  Future<void> sendVerifyEmail() async {
    final response = await sendVerifyEmailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Authenticates an existing user based on their email and their password. If successful, an access token and a refresh token will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenObtainPairWithUser] tokenObtainPairWithUser (required):
  Future<Response> tokenAuthWithHttpInfo(TokenObtainPairWithUser tokenObtainPairWithUser,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/token-auth/';

    // ignore: prefer_final_locals
    Object? postBody = tokenObtainPairWithUser;

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

  /// Authenticates an existing user based on their email and their password. If successful, an access token and a refresh token will be returned.
  ///
  /// Parameters:
  ///
  /// * [TokenObtainPairWithUser] tokenObtainPairWithUser (required):
  Future<CreateUser200Response?> tokenAuth(TokenObtainPairWithUser tokenObtainPairWithUser,) async {
    final response = await tokenAuthWithHttpInfo(tokenObtainPairWithUser,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateUser200Response',) as CreateUser200Response;
    
    }
    return null;
  }

  /// Blacklists the provided token. This can be used the sign the user off.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenBlacklist] tokenBlacklist (required):
  Future<Response> tokenBlacklistWithHttpInfo(TokenBlacklist tokenBlacklist,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/token-blacklist/';

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

  /// Blacklists the provided token. This can be used the sign the user off.
  ///
  /// Parameters:
  ///
  /// * [TokenBlacklist] tokenBlacklist (required):
  Future<void> tokenBlacklist(TokenBlacklist tokenBlacklist,) async {
    final response = await tokenBlacklistWithHttpInfo(tokenBlacklist,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Generate a new access_token that can be used to continue operating on Baserow starting from a valid refresh token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshWithUser] tokenRefreshWithUser:
  Future<Response> tokenRefreshWithHttpInfo({ TokenRefreshWithUser? tokenRefreshWithUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/token-refresh/';

    // ignore: prefer_final_locals
    Object? postBody = tokenRefreshWithUser;

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

  /// Generate a new access_token that can be used to continue operating on Baserow starting from a valid refresh token.
  ///
  /// Parameters:
  ///
  /// * [TokenRefreshWithUser] tokenRefreshWithUser:
  Future<AdminImpersonateUser200Response?> tokenRefresh({ TokenRefreshWithUser? tokenRefreshWithUser, }) async {
    final response = await tokenRefreshWithHttpInfo( tokenRefreshWithUser: tokenRefreshWithUser, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminImpersonateUser200Response',) as AdminImpersonateUser200Response;
    
    }
    return null;
  }

  /// Verifies if the refresh token is valid and can be used to generate a new access_token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenVerifyWithUser] tokenVerifyWithUser (required):
  Future<Response> tokenVerifyWithHttpInfo(TokenVerifyWithUser tokenVerifyWithUser,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/token-verify/';

    // ignore: prefer_final_locals
    Object? postBody = tokenVerifyWithUser;

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

  /// Verifies if the refresh token is valid and can be used to generate a new access_token.
  ///
  /// Parameters:
  ///
  /// * [TokenVerifyWithUser] tokenVerifyWithUser (required):
  Future<TokenVerify200Response?> tokenVerify(TokenVerifyWithUser tokenVerifyWithUser,) async {
    final response = await tokenVerifyWithHttpInfo(tokenVerifyWithUser,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenVerify200Response',) as TokenVerify200Response;
    
    }
    return null;
  }

  /// undoes the latest undoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be undone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId (required):
  ///   The particular client session to undo actions for. The actions must have been performed with this same header set with the same value for them to be undoable by this endpoint.
  ///
  /// * [PatchedUndoRedoRequest] patchedUndoRedoRequest:
  Future<Response> undoWithHttpInfo(String clientSessionId, { PatchedUndoRedoRequest? patchedUndoRedoRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/undo/';

    // ignore: prefer_final_locals
    Object? postBody = patchedUndoRedoRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);

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

  /// undoes the latest undoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be undone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId (required):
  ///   The particular client session to undo actions for. The actions must have been performed with this same header set with the same value for them to be undoable by this endpoint.
  ///
  /// * [PatchedUndoRedoRequest] patchedUndoRedoRequest:
  Future<UndoRedoResponse?> undo(String clientSessionId, { PatchedUndoRedoRequest? patchedUndoRedoRequest, }) async {
    final response = await undoWithHttpInfo(clientSessionId,  patchedUndoRedoRequest: patchedUndoRedoRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UndoRedoResponse',) as UndoRedoResponse;
    
    }
    return null;
  }

  /// Updates the account information of the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatchedAccount] patchedAccount:
  Future<Response> updateAccountWithHttpInfo({ PatchedAccount? patchedAccount, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/account/';

    // ignore: prefer_final_locals
    Object? postBody = patchedAccount;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Updates the account information of the authenticated user.
  ///
  /// Parameters:
  ///
  /// * [PatchedAccount] patchedAccount:
  Future<Account?> updateAccount({ PatchedAccount? patchedAccount, }) async {
    final response = await updateAccountWithHttpInfo( patchedAccount: patchedAccount, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Account',) as Account;
    
    }
    return null;
  }

  /// Passing the correct verification token will confirm that the user's email address belongs to the user. This endpoint also optionally returns user information, access token and the refresh token for automatically signing user in the system if the request is performed by unauthenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddress] verifyEmailAddress (required):
  Future<Response> verifyEmailWithHttpInfo(VerifyEmailAddress verifyEmailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/verify-email/';

    // ignore: prefer_final_locals
    Object? postBody = verifyEmailAddress;

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

  /// Passing the correct verification token will confirm that the user's email address belongs to the user. This endpoint also optionally returns user information, access token and the refresh token for automatically signing user in the system if the request is performed by unauthenticated user.
  ///
  /// Parameters:
  ///
  /// * [VerifyEmailAddress] verifyEmailAddress (required):
  Future<CreateUser200Response?> verifyEmail(VerifyEmailAddress verifyEmailAddress,) async {
    final response = await verifyEmailWithHttpInfo(verifyEmailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateUser200Response',) as CreateUser200Response;
    
    }
    return null;
  }
}
