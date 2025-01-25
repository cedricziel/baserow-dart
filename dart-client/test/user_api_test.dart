//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for UserApi
void main() {
  // final instance = UserApi();

  group('tests for UserApi', () {
    // Changes the password of an authenticated user, but only if the old password matches.
    //
    //Future changePassword(ChangePasswordBodyValidation changePasswordBodyValidation) async
    test('test changePassword', () async {
      // TODO
    });

    // Creates a new user based on the provided values. If desired an authentication JWT can be generated right away. After creating an account the initial workspace containing a database is created.
    //
    //Future<CreateUser200Response> createUser(Register register) async
    test('test createUser', () async {
      // TODO
    });

    // Lists all the relevant user information that for example could be shown on a dashboard. It will contain all the pending workspace invitations for that user.
    //
    //Future<Dashboard> dashboard() async
    test('test dashboard', () async {
      // TODO
    });

    // Redoes the latest redoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be redone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
    //
    //Future<UndoRedoResponse> redo(String clientSessionId, { PatchedUndoRedoRequest patchedUndoRedoRequest }) async
    test('test redo', () async {
      // TODO
    });

    // Changes the password of a user if the reset token is valid. The **send_password_reset_email** endpoint sends an email to the user containing the token. That token can be used to change the password here without providing the old password.
    //
    //Future resetPassword(ResetPasswordBodyValidation resetPasswordBodyValidation) async
    test('test resetPassword', () async {
      // TODO
    });

    // Schedules the account deletion of the authenticated user. The user will be permanently deleted after the grace delay defined by the instance administrator.
    //
    //Future scheduleAccountDeletion() async
    test('test scheduleAccountDeletion', () async {
      // TODO
    });

    // Sends an email containing the password reset link to the email address of the user. This will only be done if a user is found with the given email address. The endpoint will not fail if the email address is not found. The link is going to the valid for 48 hours.
    //
    //Future sendPasswordResetEmail(SendResetPasswordEmailBodyValidation sendResetPasswordEmailBodyValidation) async
    test('test sendPasswordResetEmail', () async {
      // TODO
    });

    // Sends an email to the user with an email verification link if the user's email is not verified yet.
    //
    //Future sendVerifyEmail() async
    test('test sendVerifyEmail', () async {
      // TODO
    });

    // Authenticates an existing user based on their email and their password. If successful, an access token and a refresh token will be returned.
    //
    //Future<CreateUser200Response> tokenAuth(TokenObtainPairWithUser tokenObtainPairWithUser) async
    test('test tokenAuth', () async {
      // TODO
    });

    // Blacklists the provided token. This can be used the sign the user off.
    //
    //Future tokenBlacklist(TokenBlacklist tokenBlacklist) async
    test('test tokenBlacklist', () async {
      // TODO
    });

    // Generate a new access_token that can be used to continue operating on Baserow starting from a valid refresh token.
    //
    //Future<AdminImpersonateUser200Response> tokenRefresh({ TokenRefreshWithUser tokenRefreshWithUser }) async
    test('test tokenRefresh', () async {
      // TODO
    });

    // Verifies if the refresh token is valid and can be used to generate a new access_token.
    //
    //Future<TokenVerify200Response> tokenVerify(TokenVerifyWithUser tokenVerifyWithUser) async
    test('test tokenVerify', () async {
      // TODO
    });

    // undoes the latest undoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be undone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.
    //
    //Future<UndoRedoResponse> undo(String clientSessionId, { PatchedUndoRedoRequest patchedUndoRedoRequest }) async
    test('test undo', () async {
      // TODO
    });

    // Updates the account information of the authenticated user.
    //
    //Future<Account> updateAccount({ PatchedAccount patchedAccount }) async
    test('test updateAccount', () async {
      // TODO
    });

    // Passing the correct verification token will confirm that the user's email address belongs to the user. This endpoint also optionally returns user information, access token and the refresh token for automatically signing user in the system if the request is performed by unauthenticated user.
    //
    //Future<CreateUser200Response> verifyEmail(VerifyEmailAddress verifyEmailAddress) async
    test('test verifyEmail', () async {
      // TODO
    });

  });
}
