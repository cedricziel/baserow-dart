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


/// tests for AuthApi
void main() {
  // final instance = AuthApi();

  group('tests for AuthApi', () {
    // Return the correct redirect_url to initiate the SSO SAML login. It needs an email address if multiple SAML providers are configured otherwise the only configured SAML provider signup URL will be returned.
    //
    //Future<Map<String, String>> authProviderLoginUrl({ String email, String language, String original, String workspaceInvitationToken }) async
    test('test authProviderLoginUrl', () async {
      // TODO
    });

    // Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in Baserow or create a new one otherwise. Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
    //
    //Future authProviderSamlAcsUrl(SAMLResponse sAMLResponse) async
    test('test authProviderSamlAcsUrl', () async {
      // TODO
    });

    // Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in user_source or create a new one otherwise.Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.
    //
    //Future authProviderSamlAcsUrl2(String userSourceUid, CommonSAMLResponse commonSAMLResponse) async
    test('test authProviderSamlAcsUrl2', () async {
      // TODO
    });

    // This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.
    //
    //Future authProviderSamlSpLogin({ String email, String language, String original, String workspaceInvitationToken }) async
    test('test authProviderSamlSpLogin', () async {
      // TODO
    });

    // Creates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
    //
    //Future<AuthenticationProviderAuthProvider> createAuthProvider() async
    test('test createAuthProvider', () async {
      // TODO
    });

    // Delete an authentication provider.
    //
    //Future deleteAuthProvider(int authProviderId) async
    test('test deleteAuthProvider', () async {
      // TODO
    });

    // Get an authentication provider.
    //
    //Future<AuthenticationProviderAuthProvider> getAuthProvider(int authProviderId) async
    test('test getAuthProvider', () async {
      // TODO
    });

    // List all the available authentication providers.
    //
    //Future<List<AuthenticationProviderAuthProvider>> listAuthProviders() async
    test('test listAuthProviders', () async {
      // TODO
    });

    // Lists the available login options for the configured authentication providers.
    //
    //Future<Map<String, Object>> listAuthProvidersLoginOptions() async
    test('test listAuthProvidersLoginOptions', () async {
      // TODO
    });

    // Processes callback from OAuth2 provider and logs the user in if successful.
    //
    //Future oauthProviderLoginCallback(int providerId, { int code }) async
    test('test oauthProviderLoginCallback', () async {
      // TODO
    });

    // Redirects to the OAuth2 provider's authentication URL based on the provided auth provider's id.
    //
    //Future oauthProviderLoginRedirect(int providerId, { int original, String workspaceInvitationToken }) async
    test('test oauthProviderLoginRedirect', () async {
      // TODO
    });

    // Updates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.
    //
    //Future<AuthenticationProviderAuthProvider> updateAuthProvider(int authProviderId) async
    test('test updateAuthProvider', () async {
      // TODO
    });

  });
}
