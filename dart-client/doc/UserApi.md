# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](UserApi.md#changepassword) | **POST** /api/user/change-password/ | 
[**createUser**](UserApi.md#createuser) | **POST** /api/user/ | 
[**dashboard**](UserApi.md#dashboard) | **GET** /api/user/dashboard/ | 
[**redo**](UserApi.md#redo) | **PATCH** /api/user/redo/ | 
[**resetPassword**](UserApi.md#resetpassword) | **POST** /api/user/reset-password/ | 
[**scheduleAccountDeletion**](UserApi.md#scheduleaccountdeletion) | **POST** /api/user/schedule-account-deletion/ | 
[**sendPasswordResetEmail**](UserApi.md#sendpasswordresetemail) | **POST** /api/user/send-reset-password-email/ | 
[**sendVerifyEmail**](UserApi.md#sendverifyemail) | **POST** /api/user/send-verify-email/ | 
[**tokenAuth**](UserApi.md#tokenauth) | **POST** /api/user/token-auth/ | 
[**tokenBlacklist**](UserApi.md#tokenblacklist) | **POST** /api/user/token-blacklist/ | 
[**tokenRefresh**](UserApi.md#tokenrefresh) | **POST** /api/user/token-refresh/ | 
[**tokenVerify**](UserApi.md#tokenverify) | **POST** /api/user/token-verify/ | 
[**undo**](UserApi.md#undo) | **PATCH** /api/user/undo/ | 
[**updateAccount**](UserApi.md#updateaccount) | **PATCH** /api/user/account/ | 
[**verifyEmail**](UserApi.md#verifyemail) | **POST** /api/user/verify-email/ | 


# **changePassword**
> changePassword(changePasswordBodyValidation)



Changes the password of an authenticated user, but only if the old password matches.

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

final api_instance = UserApi();
final changePasswordBodyValidation = ChangePasswordBodyValidation(); // ChangePasswordBodyValidation | 

try {
    api_instance.changePassword(changePasswordBodyValidation);
} catch (e) {
    print('Exception when calling UserApi->changePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordBodyValidation** | [**ChangePasswordBodyValidation**](ChangePasswordBodyValidation.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> CreateUser200Response createUser(register)



Creates a new user based on the provided values. If desired an authentication JWT can be generated right away. After creating an account the initial workspace containing a database is created.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final register = Register(); // Register | 

try {
    final result = api_instance.createUser(register);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **register** | [**Register**](Register.md)|  | 

### Return type

[**CreateUser200Response**](CreateUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboard**
> Dashboard dashboard()



Lists all the relevant user information that for example could be shown on a dashboard. It will contain all the pending workspace invitations for that user.

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

final api_instance = UserApi();

try {
    final result = api_instance.dashboard();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->dashboard: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redo**
> UndoRedoResponse redo(clientSessionId, patchedUndoRedoRequest)



Redoes the latest redoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be redone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.

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

final api_instance = UserApi();
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The particular client session to redo actions for. The actions must have been performed with this same header set with the same value for them to be redoable by this endpoint.
final patchedUndoRedoRequest = PatchedUndoRedoRequest(); // PatchedUndoRedoRequest | 

try {
    final result = api_instance.redo(clientSessionId, patchedUndoRedoRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->redo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientSessionId** | **String**| The particular client session to redo actions for. The actions must have been performed with this same header set with the same value for them to be redoable by this endpoint. | 
 **patchedUndoRedoRequest** | [**PatchedUndoRedoRequest**](PatchedUndoRedoRequest.md)|  | [optional] 

### Return type

[**UndoRedoResponse**](UndoRedoResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> resetPassword(resetPasswordBodyValidation)



Changes the password of a user if the reset token is valid. The **send_password_reset_email** endpoint sends an email to the user containing the token. That token can be used to change the password here without providing the old password.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final resetPasswordBodyValidation = ResetPasswordBodyValidation(); // ResetPasswordBodyValidation | 

try {
    api_instance.resetPassword(resetPasswordBodyValidation);
} catch (e) {
    print('Exception when calling UserApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordBodyValidation** | [**ResetPasswordBodyValidation**](ResetPasswordBodyValidation.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleAccountDeletion**
> scheduleAccountDeletion()



Schedules the account deletion of the authenticated user. The user will be permanently deleted after the grace delay defined by the instance administrator.

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

final api_instance = UserApi();

try {
    api_instance.scheduleAccountDeletion();
} catch (e) {
    print('Exception when calling UserApi->scheduleAccountDeletion: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPasswordResetEmail**
> sendPasswordResetEmail(sendResetPasswordEmailBodyValidation)



Sends an email containing the password reset link to the email address of the user. This will only be done if a user is found with the given email address. The endpoint will not fail if the email address is not found. The link is going to the valid for 48 hours.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final sendResetPasswordEmailBodyValidation = SendResetPasswordEmailBodyValidation(); // SendResetPasswordEmailBodyValidation | 

try {
    api_instance.sendPasswordResetEmail(sendResetPasswordEmailBodyValidation);
} catch (e) {
    print('Exception when calling UserApi->sendPasswordResetEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendResetPasswordEmailBodyValidation** | [**SendResetPasswordEmailBodyValidation**](SendResetPasswordEmailBodyValidation.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendVerifyEmail**
> sendVerifyEmail()



Sends an email to the user with an email verification link if the user's email is not verified yet.

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

final api_instance = UserApi();

try {
    api_instance.sendVerifyEmail();
} catch (e) {
    print('Exception when calling UserApi->sendVerifyEmail: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenAuth**
> CreateUser200Response tokenAuth(tokenObtainPairWithUser)



Authenticates an existing user based on their email and their password. If successful, an access token and a refresh token will be returned.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final tokenObtainPairWithUser = TokenObtainPairWithUser(); // TokenObtainPairWithUser | 

try {
    final result = api_instance.tokenAuth(tokenObtainPairWithUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->tokenAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenObtainPairWithUser** | [**TokenObtainPairWithUser**](TokenObtainPairWithUser.md)|  | 

### Return type

[**CreateUser200Response**](CreateUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenBlacklist**
> tokenBlacklist(tokenBlacklist)



Blacklists the provided token. This can be used the sign the user off.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final tokenBlacklist = TokenBlacklist(); // TokenBlacklist | 

try {
    api_instance.tokenBlacklist(tokenBlacklist);
} catch (e) {
    print('Exception when calling UserApi->tokenBlacklist: $e\n');
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

# **tokenRefresh**
> AdminImpersonateUser200Response tokenRefresh(tokenRefreshWithUser)



Generate a new access_token that can be used to continue operating on Baserow starting from a valid refresh token.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final tokenRefreshWithUser = TokenRefreshWithUser(); // TokenRefreshWithUser | 

try {
    final result = api_instance.tokenRefresh(tokenRefreshWithUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->tokenRefresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRefreshWithUser** | [**TokenRefreshWithUser**](TokenRefreshWithUser.md)|  | [optional] 

### Return type

[**AdminImpersonateUser200Response**](AdminImpersonateUser200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenVerify**
> TokenVerify200Response tokenVerify(tokenVerifyWithUser)



Verifies if the refresh token is valid and can be used to generate a new access_token.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();
final tokenVerifyWithUser = TokenVerifyWithUser(); // TokenVerifyWithUser | 

try {
    final result = api_instance.tokenVerify(tokenVerifyWithUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->tokenVerify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenVerifyWithUser** | [**TokenVerifyWithUser**](TokenVerifyWithUser.md)|  | 

### Return type

[**TokenVerify200Response**](TokenVerify200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **undo**
> UndoRedoResponse undo(clientSessionId, patchedUndoRedoRequest)



undoes the latest undoable action performed by the user making the request. a ClientSessionId header must be provided and only actions which were performed the same user with the same ClientSessionId value set on the api request that performed the action will be undone.Additionally the ClientSessionId header must be between 1 and 256 characters long and must only contain alphanumeric or the - characters.

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

final api_instance = UserApi();
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The particular client session to undo actions for. The actions must have been performed with this same header set with the same value for them to be undoable by this endpoint.
final patchedUndoRedoRequest = PatchedUndoRedoRequest(); // PatchedUndoRedoRequest | 

try {
    final result = api_instance.undo(clientSessionId, patchedUndoRedoRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->undo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientSessionId** | **String**| The particular client session to undo actions for. The actions must have been performed with this same header set with the same value for them to be undoable by this endpoint. | 
 **patchedUndoRedoRequest** | [**PatchedUndoRedoRequest**](PatchedUndoRedoRequest.md)|  | [optional] 

### Return type

[**UndoRedoResponse**](UndoRedoResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
> Account updateAccount(patchedAccount)



Updates the account information of the authenticated user.

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

final api_instance = UserApi();
final patchedAccount = PatchedAccount(); // PatchedAccount | 

try {
    final result = api_instance.updateAccount(patchedAccount);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->updateAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patchedAccount** | [**PatchedAccount**](PatchedAccount.md)|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmail**
> CreateUser200Response verifyEmail(verifyEmailAddress)



Passing the correct verification token will confirm that the user's email address belongs to the user. This endpoint also optionally returns user information, access token and the refresh token for automatically signing user in the system if the request is performed by unauthenticated user.

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

final api_instance = UserApi();
final verifyEmailAddress = VerifyEmailAddress(); // VerifyEmailAddress | 

try {
    final result = api_instance.verifyEmail(verifyEmailAddress);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->verifyEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyEmailAddress** | [**VerifyEmailAddress**](VerifyEmailAddress.md)|  | 

### Return type

[**CreateUser200Response**](CreateUser200Response.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

