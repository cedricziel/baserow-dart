# openapi.api.UserSourcesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appAuthProviderSamlSpLogin**](UserSourcesApi.md#appauthprovidersamlsplogin) | **GET** /api/user-source/{user_source_uid}/sso/saml/login/ | 
[**createApplicationUserSource**](UserSourcesApi.md#createapplicationusersource) | **POST** /api/application/{application_id}/user-sources/ | 
[**deleteApplicationUserSource**](UserSourcesApi.md#deleteapplicationusersource) | **DELETE** /api/user-source/{user_source_id}/ | 
[**listApplicationUserSourceUsers**](UserSourcesApi.md#listapplicationusersourceusers) | **GET** /api/application/{application_id}/list-user-source-users/ | 
[**listApplicationUserSources**](UserSourcesApi.md#listapplicationusersources) | **GET** /api/application/{application_id}/user-sources/ | 
[**moveApplicationUserSource**](UserSourcesApi.md#moveapplicationusersource) | **PATCH** /api/user-source/{user_source_id}/move/ | 
[**updateApplicationUserSource**](UserSourcesApi.md#updateapplicationusersource) | **PATCH** /api/user-source/{user_source_id}/ | 
[**userSourceForceTokenAuth**](UserSourcesApi.md#usersourceforcetokenauth) | **POST** /api/user-source/{user_source_id}/force-token-auth | 
[**userSourceTokenAuth**](UserSourcesApi.md#usersourcetokenauth) | **POST** /api/user-source/{user_source_id}/token-auth | 
[**userSourceTokenBlacklist**](UserSourcesApi.md#usersourcetokenblacklist) | **POST** /api/user-source-token-blacklist/ | 
[**userSourceTokenRefresh**](UserSourcesApi.md#usersourcetokenrefresh) | **POST** /api/user-source-auth-refresh/ | 


# **appAuthProviderSamlSpLogin**
> appAuthProviderSamlSpLogin(userSourceUid, email, original)



This is the endpoint that is called when the user wants to initiate a SSO SAML login from Baserow (the service provider). The user will be redirected to the SAML identity provider (IdP) where the user can authenticate. Once logged in in the IdP, the user will be redirected back to the assertion consumer service endpoint (ACS) where the SAML response will be validated and a new JWT session token will be provided to work with Baserow APIs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSourcesApi();
final userSourceUid = userSourceUid_example; // String | 
final email = email_example; // String | The email address of the user that want to sign in using SAML.
final original = original_example; // String | The url to which the user should be redirected after a successful login or sign up.

try {
    api_instance.appAuthProviderSamlSpLogin(userSourceUid, email, original);
} catch (e) {
    print('Exception when calling UserSourcesApi->appAuthProviderSamlSpLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceUid** | **String**|  | 
 **email** | **String**| The email address of the user that want to sign in using SAML. | [optional] 
 **original** | **String**| The url to which the user should be redirected after a successful login or sign up. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createApplicationUserSource**
> UserSourceUserSource createApplicationUserSource(applicationId, clientSessionId, userSourceCreateUserSource)



Creates a new user_source

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

final api_instance = UserSourcesApi();
final applicationId = 56; // int | Creates an user_source for the application related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final userSourceCreateUserSource = UserSourceCreateUserSource(); // UserSourceCreateUserSource | 

try {
    final result = api_instance.createApplicationUserSource(applicationId, clientSessionId, userSourceCreateUserSource);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->createApplicationUserSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| Creates an user_source for the application related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **userSourceCreateUserSource** | [**UserSourceCreateUserSource**](UserSourceCreateUserSource.md)|  | [optional] 

### Return type

[**UserSourceUserSource**](UserSourceUserSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApplicationUserSource**
> deleteApplicationUserSource(userSourceId, clientSessionId)



Deletes the user_source related by the given id.

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

final api_instance = UserSourcesApi();
final userSourceId = 56; // int | The id of the user_source
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.deleteApplicationUserSource(userSourceId, clientSessionId);
} catch (e) {
    print('Exception when calling UserSourcesApi->deleteApplicationUserSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceId** | **int**| The id of the user_source | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApplicationUserSourceUsers**
> UsersPerUserSource listApplicationUserSourceUsers(applicationId)



List per user sources the first 5 users available.

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

final api_instance = UserSourcesApi();
final applicationId = 56; // int | The application we want the users for.

try {
    final result = api_instance.listApplicationUserSourceUsers(applicationId);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->listApplicationUserSourceUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| The application we want the users for. | 

### Return type

[**UsersPerUserSource**](UsersPerUserSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApplicationUserSources**
> List<UserSourceUserSource> listApplicationUserSources(applicationId)



Lists all the user_sources of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.

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

final api_instance = UserSourcesApi();
final applicationId = 56; // int | Returns only the user_sources of the application related to the provided Id.

try {
    final result = api_instance.listApplicationUserSources(applicationId);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->listApplicationUserSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| Returns only the user_sources of the application related to the provided Id. | 

### Return type

[**List<UserSourceUserSource>**](UserSourceUserSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveApplicationUserSource**
> UserSourceUserSource moveApplicationUserSource(userSourceId, clientSessionId, patchedMoveUserSource)



Moves the user_source in the application before another user_source or at the end of the application if no before user_source is given. The user_sources must belong to the same application.

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

final api_instance = UserSourcesApi();
final userSourceId = 56; // int | The id of the user_source to move
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedMoveUserSource = PatchedMoveUserSource(); // PatchedMoveUserSource | 

try {
    final result = api_instance.moveApplicationUserSource(userSourceId, clientSessionId, patchedMoveUserSource);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->moveApplicationUserSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceId** | **int**| The id of the user_source to move | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedMoveUserSource** | [**PatchedMoveUserSource**](PatchedMoveUserSource.md)|  | [optional] 

### Return type

[**UserSourceUserSource**](UserSourceUserSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApplicationUserSource**
> UserSourceUserSource updateApplicationUserSource(userSourceId, clientSessionId, body)



Updates an existing user_source.

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

final api_instance = UserSourcesApi();
final userSourceId = 56; // int | The id of the user_source
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final body = LocalBaserowUserSourceUpdateUserSource(); // LocalBaserowUserSourceUpdateUserSource | 

try {
    final result = api_instance.updateApplicationUserSource(userSourceId, clientSessionId, body);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->updateApplicationUserSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceId** | **int**| The id of the user_source | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **body** | **LocalBaserowUserSourceUpdateUserSource**|  | [optional] 

### Return type

[**UserSourceUserSource**](UserSourceUserSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSourceForceTokenAuth**
> UserSourceForceTokenAuth200Response userSourceForceTokenAuth(userSourceId)



Force authenticates an existing user based on their ID. If successful, an access token and a refresh token will be returned.

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

final api_instance = UserSourcesApi();
final userSourceId = 56; // int | The user source to use to authenticate the user.

try {
    final result = api_instance.userSourceForceTokenAuth(userSourceId);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->userSourceForceTokenAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceId** | **int**| The user source to use to authenticate the user. | 

### Return type

[**UserSourceForceTokenAuth200Response**](UserSourceForceTokenAuth200Response.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSourceTokenAuth**
> UserSourceForceTokenAuth200Response userSourceTokenAuth(userSourceId, tokenObtainPair)



Authenticates an existing user against a user source based on their credentials. If successful, an access token and a refresh token will be returned.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserSourcesApi();
final userSourceId = 56; // int | The id of the user_source to move
final tokenObtainPair = TokenObtainPair(); // TokenObtainPair | 

try {
    final result = api_instance.userSourceTokenAuth(userSourceId, tokenObtainPair);
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->userSourceTokenAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSourceId** | **int**| The id of the user_source to move | 
 **tokenObtainPair** | [**TokenObtainPair**](TokenObtainPair.md)|  | 

### Return type

[**UserSourceForceTokenAuth200Response**](UserSourceForceTokenAuth200Response.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSourceTokenBlacklist**
> userSourceTokenBlacklist(tokenBlacklist)



Blacklists the provided user source token. This can be used the sign the user off.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserSourcesApi();
final tokenBlacklist = TokenBlacklist(); // TokenBlacklist | 

try {
    api_instance.userSourceTokenBlacklist(tokenBlacklist);
} catch (e) {
    print('Exception when calling UserSourcesApi->userSourceTokenBlacklist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenBlacklist** | [**TokenBlacklist**](TokenBlacklist.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSourceTokenRefresh**
> UserSourceTokenRefresh200Response userSourceTokenRefresh()



Generate a new access_token that can be used to continue operating on Baserow with a user source user starting from a valid refresh token.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserSourcesApi();

try {
    final result = api_instance.userSourceTokenRefresh();
    print(result);
} catch (e) {
    print('Exception when calling UserSourcesApi->userSourceTokenRefresh: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSourceTokenRefresh200Response**](UserSourceTokenRefresh200Response.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

