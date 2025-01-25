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


/// tests for UserSourcesApi
void main() {
  // final instance = UserSourcesApi();

  group('tests for UserSourcesApi', () {
    // This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.
    //
    //Future appAuthProviderSamlSpLogin(String userSourceUid, { String email, String original }) async
    test('test appAuthProviderSamlSpLogin', () async {
      // TODO
    });

    // Creates a new user_source
    //
    //Future<UserSourceUserSource> createApplicationUserSource(int applicationId, { String clientSessionId, UserSourceCreateUserSource userSourceCreateUserSource }) async
    test('test createApplicationUserSource', () async {
      // TODO
    });

    // Deletes the user_source related by the given id.
    //
    //Future deleteApplicationUserSource(int userSourceId, { String clientSessionId }) async
    test('test deleteApplicationUserSource', () async {
      // TODO
    });

    // List per user sources the first 5 users available.
    //
    //Future<UsersPerUserSource> listApplicationUserSourceUsers(int applicationId) async
    test('test listApplicationUserSourceUsers', () async {
      // TODO
    });

    // Lists all the user_sources of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
    //
    //Future<List<UserSourceUserSource>> listApplicationUserSources(int applicationId) async
    test('test listApplicationUserSources', () async {
      // TODO
    });

    // Moves the user_source in the application before another user_source or at the end of the application if no before user_source is given. The user_sources must belong to the same application.
    //
    //Future<UserSourceUserSource> moveApplicationUserSource(int userSourceId, { String clientSessionId, PatchedMoveUserSource patchedMoveUserSource }) async
    test('test moveApplicationUserSource', () async {
      // TODO
    });

    // Updates an existing user_source.
    //
    //Future<UserSourceUserSource> updateApplicationUserSource(int userSourceId, { String clientSessionId, LocalBaserowUserSourceUpdateUserSource body }) async
    test('test updateApplicationUserSource', () async {
      // TODO
    });

    // Force authenticates an existing user based on their ID. If successful, an access token and a refresh token will be returned.
    //
    //Future<UserSourceForceTokenAuth200Response> userSourceForceTokenAuth(int userSourceId) async
    test('test userSourceForceTokenAuth', () async {
      // TODO
    });

    // Authenticates an existing user against a user source based on their credentials. If successful, an access token and a refresh token will be returned.
    //
    //Future<UserSourceForceTokenAuth200Response> userSourceTokenAuth(int userSourceId, TokenObtainPair tokenObtainPair) async
    test('test userSourceTokenAuth', () async {
      // TODO
    });

    // Blacklists the provided user source token. This can be used the sign the user off.
    //
    //Future userSourceTokenBlacklist(TokenBlacklist tokenBlacklist) async
    test('test userSourceTokenBlacklist', () async {
      // TODO
    });

    // Generate a new access_token that can be used to continue operating on Baserow with a user source user starting from a valid refresh token.
    //
    //Future<UserSourceTokenRefresh200Response> userSourceTokenRefresh() async
    test('test userSourceTokenRefresh', () async {
      // TODO
    });

  });
}
