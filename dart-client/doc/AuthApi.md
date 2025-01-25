# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authProviderLoginUrl**](AuthApi.md#authproviderloginurl) | **GET** /api/sso/saml/login-url/ | 
[**authProviderSamlAcsUrl**](AuthApi.md#authprovidersamlacsurl) | **POST** /api/sso/saml/acs/ | 
[**authProviderSamlAcsUrl2**](AuthApi.md#authprovidersamlacsurl2) | **POST** /api/user-source/{user_source_uid}/sso/saml/acs/ | 
[**authProviderSamlSpLogin**](AuthApi.md#authprovidersamlsplogin) | **GET** /api/sso/saml/login/ | 
[**createAuthProvider**](AuthApi.md#createauthprovider) | **POST** /api/admin/auth-provider/ | 
[**deleteAuthProvider**](AuthApi.md#deleteauthprovider) | **DELETE** /api/admin/auth-provider/{auth_provider_id}/ | 
[**getAuthProvider**](AuthApi.md#getauthprovider) | **GET** /api/admin/auth-provider/{auth_provider_id}/ | 
[**listAuthProviders**](AuthApi.md#listauthproviders) | **GET** /api/admin/auth-provider/ | 
[**listAuthProvidersLoginOptions**](AuthApi.md#listauthprovidersloginoptions) | **GET** /api/auth-provider/login-options/ | 
[**oauthProviderLoginCallback**](AuthApi.md#oauthproviderlogincallback) | **GET** /api/sso/oauth2/callback/{provider_id}/ | 
[**oauthProviderLoginRedirect**](AuthApi.md#oauthproviderloginredirect) | **GET** /api/sso/oauth2/login/{provider_id}/ | 
[**updateAuthProvider**](AuthApi.md#updateauthprovider) | **PATCH** /api/admin/auth-provider/{auth_provider_id}/ | 


# **authProviderLoginUrl**
> Map<String, String> authProviderLoginUrl(email, language, original, workspaceInvitationToken)



Return the correct redirect_url to initiate the SSO SAML login. It needs an email address if multiple SAML providers are configured otherwise the only configured SAML provider signup URL will be returned.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final email = email_example; // String | The email address of the user that want to sign in using SAML.
final language = language_example; // String | An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
final original = original_example; // String | The url to which the user should be redirected after a successful login.
final workspaceInvitationToken = workspaceInvitationToken_example; // String | If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.

try {
    final result = api_instance.authProviderLoginUrl(email, language, original, workspaceInvitationToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authProviderLoginUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The email address of the user that want to sign in using SAML. | [optional] 
 **language** | **String**| An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB. | [optional] 
 **original** | **String**| The url to which the user should be redirected after a successful login. | [optional] 
 **workspaceInvitationToken** | **String**| If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up. | [optional] 

### Return type

**Map<String, String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authProviderSamlAcsUrl**
> authProviderSamlAcsUrl(sAMLResponse)



Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in Baserow or create a new one otherwise. Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final sAMLResponse = SAMLResponse(); // SAMLResponse | 

try {
    api_instance.authProviderSamlAcsUrl(sAMLResponse);
} catch (e) {
    print('Exception when calling AuthApi->authProviderSamlAcsUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sAMLResponse** | [**SAMLResponse**](SAMLResponse.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authProviderSamlAcsUrl2**
> authProviderSamlAcsUrl2(userSourceUid, commonSAMLResponse)



Complete the SAML authentication flow by validating the SAML response. Sign in the user if already exists in user_source or create a new one otherwise.Once authenticated, the user will be redirected to the original URL they were trying to access. If the response is invalid, the user will be redirected to an error page with a specific error message.It accepts the language code and the workspace invitation token as query parameters if provided.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final userSourceUid = userSourceUid_example; // String | 
final commonSAMLResponse = CommonSAMLResponse(); // CommonSAMLResponse | 

try {
    api_instance.authProviderSamlAcsUrl2(userSourceUid, commonSAMLResponse);
} catch (e) {
    print('Exception when calling AuthApi->authProviderSamlAcsUrl2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceUid** | **String**|  | 
 **commonSAMLResponse** | [**CommonSAMLResponse**](CommonSAMLResponse.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authProviderSamlSpLogin**
> authProviderSamlSpLogin(email, language, original, workspaceInvitationToken)



This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final email = email_example; // String | The email address of the user that want to sign in using SAML.
final language = language_example; // String | An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
final original = original_example; // String | The url to which the user should be redirected after a successful login or sign up.
final workspaceInvitationToken = workspaceInvitationToken_example; // String | If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up.

try {
    api_instance.authProviderSamlSpLogin(email, language, original, workspaceInvitationToken);
} catch (e) {
    print('Exception when calling AuthApi->authProviderSamlSpLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| The email address of the user that want to sign in using SAML. | [optional] 
 **language** | **String**| An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB. | [optional] 
 **original** | **String**| The url to which the user should be redirected after a successful login or sign up. | [optional] 
 **workspaceInvitationToken** | **String**| If provided and valid, the user accepts the workspace invitation and will have access to the workspace after login or signing up. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAuthProvider**
> AuthenticationProviderAuthProvider createAuthProvider()



Creates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    final result = api_instance.createAuthProvider();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->createAuthProvider: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthenticationProviderAuthProvider**](AuthenticationProviderAuthProvider.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthProvider**
> deleteAuthProvider(authProviderId)



Delete an authentication provider.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final authProviderId = 56; // int | The authentication provider id to delete.

try {
    api_instance.deleteAuthProvider(authProviderId);
} catch (e) {
    print('Exception when calling AuthApi->deleteAuthProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authProviderId** | **int**| The authentication provider id to delete. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthProvider**
> AuthenticationProviderAuthProvider getAuthProvider(authProviderId)



Get an authentication provider.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final authProviderId = 56; // int | The authentication provider id to fetch.

try {
    final result = api_instance.getAuthProvider(authProviderId);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->getAuthProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authProviderId** | **int**| The authentication provider id to fetch. | 

### Return type

[**AuthenticationProviderAuthProvider**](AuthenticationProviderAuthProvider.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuthProviders**
> List<AuthenticationProviderAuthProvider> listAuthProviders()



List all the available authentication providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    final result = api_instance.listAuthProviders();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->listAuthProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AuthenticationProviderAuthProvider>**](AuthenticationProviderAuthProvider.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAuthProvidersLoginOptions**
> Map<String, Object> listAuthProvidersLoginOptions()



Lists the available login options for the configured authentication providers.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    final result = api_instance.listAuthProvidersLoginOptions();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->listAuthProvidersLoginOptions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Map<String, Object>**](Object.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthProviderLoginCallback**
> oauthProviderLoginCallback(providerId, code)



Processes callback from OAuth2 provider and logs the user in if successful.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final providerId = 56; // int | The id of the provider for which to process the callback.
final code = 56; // int | The id of the provider for which to process the callback.

try {
    api_instance.oauthProviderLoginCallback(providerId, code);
} catch (e) {
    print('Exception when calling AuthApi->oauthProviderLoginCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **int**| The id of the provider for which to process the callback. | 
 **code** | **int**| The id of the provider for which to process the callback. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthProviderLoginRedirect**
> oauthProviderLoginRedirect(providerId, original, workspaceInvitationToken)



Redirects to the OAuth2 provider's authentication URL based on the provided auth provider's id.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final providerId = 56; // int | The id of the provider for redirect.
final original = 56; // int | The relative part of URL that the user wanted to access.
final workspaceInvitationToken = workspaceInvitationToken_example; // String | The invitation token sent to the user to join a specific workspace.

try {
    api_instance.oauthProviderLoginRedirect(providerId, original, workspaceInvitationToken);
} catch (e) {
    print('Exception when calling AuthApi->oauthProviderLoginRedirect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **int**| The id of the provider for redirect. | 
 **original** | **int**| The relative part of URL that the user wanted to access. | [optional] 
 **workspaceInvitationToken** | **String**| The invitation token sent to the user to join a specific workspace. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthProvider**
> AuthenticationProviderAuthProvider updateAuthProvider(authProviderId)



Updates a new authentication provider. This can be used to enable authentication with a third party service like Google or Facebook.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final authProviderId = 56; // int | The authentication provider id to update.

try {
    final result = api_instance.updateAuthProvider(authProviderId);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->updateAuthProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authProviderId** | **int**| The authentication provider id to update. | 

### Return type

[**AuthenticationProviderAuthProvider**](AuthenticationProviderAuthProvider.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

