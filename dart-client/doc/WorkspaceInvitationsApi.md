# openapi.api.WorkspaceInvitationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptWorkspaceInvitation**](WorkspaceInvitationsApi.md#acceptworkspaceinvitation) | **POST** /api/workspaces/invitations/{workspace_invitation_id}/accept/ | 
[**createWorkspaceInvitation**](WorkspaceInvitationsApi.md#createworkspaceinvitation) | **POST** /api/workspaces/invitations/workspace/{workspace_id}/ | 
[**deleteWorkspaceInvitation**](WorkspaceInvitationsApi.md#deleteworkspaceinvitation) | **DELETE** /api/workspaces/invitations/{workspace_invitation_id}/ | 
[**getWorkspaceInvitation**](WorkspaceInvitationsApi.md#getworkspaceinvitation) | **GET** /api/workspaces/invitations/{workspace_invitation_id}/ | 
[**getWorkspaceInvitationByToken**](WorkspaceInvitationsApi.md#getworkspaceinvitationbytoken) | **GET** /api/workspaces/invitations/token/{token}/ | 
[**listWorkspaceInvitations**](WorkspaceInvitationsApi.md#listworkspaceinvitations) | **GET** /api/workspaces/invitations/workspace/{workspace_id}/ | 
[**rejectWorkspaceInvitation**](WorkspaceInvitationsApi.md#rejectworkspaceinvitation) | **POST** /api/workspaces/invitations/{workspace_invitation_id}/reject/ | 
[**updateWorkspaceInvitation**](WorkspaceInvitationsApi.md#updateworkspaceinvitation) | **PATCH** /api/workspaces/invitations/{workspace_invitation_id}/ | 


# **acceptWorkspaceInvitation**
> WorkspaceUserWorkspace acceptWorkspaceInvitation(workspaceInvitationId)



Accepts a workspace invitation with the given id if the email address of the user matches that of the invitation.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceInvitationId = 56; // int | Accepts the workspace invitation related to the provided value.

try {
    final result = api_instance.acceptWorkspaceInvitation(workspaceInvitationId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->acceptWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceInvitationId** | **int**| Accepts the workspace invitation related to the provided value. | 

### Return type

[**WorkspaceUserWorkspace**](WorkspaceUserWorkspace.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceInvitation**
> WorkspaceInvitation createWorkspaceInvitation(workspaceId, createWorkspaceInvitation)



Creates a new workspace invitations for an email address if the authorized user has admin rights to the related workspace. An email containing a sign up link will be send to the user.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceId = 56; // int | Creates a workspace invitation to the workspace related to the provided value.
final createWorkspaceInvitation = CreateWorkspaceInvitation(); // CreateWorkspaceInvitation | 

try {
    final result = api_instance.createWorkspaceInvitation(workspaceId, createWorkspaceInvitation);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->createWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| Creates a workspace invitation to the workspace related to the provided value. | 
 **createWorkspaceInvitation** | [**CreateWorkspaceInvitation**](CreateWorkspaceInvitation.md)|  | 

### Return type

[**WorkspaceInvitation**](WorkspaceInvitation.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspaceInvitation**
> deleteWorkspaceInvitation(workspaceInvitationId)



Deletes a workspace invitation if the authorized user has admin rights to the related workspace.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceInvitationId = 56; // int | Deletes the workspace invitation related to the provided value.

try {
    api_instance.deleteWorkspaceInvitation(workspaceInvitationId);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->deleteWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceInvitationId** | **int**| Deletes the workspace invitation related to the provided value. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceInvitation**
> WorkspaceInvitation getWorkspaceInvitation(workspaceInvitationId)



Returns the requested workspace invitation if the authorized user has admin right to the related workspace

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

final api_instance = WorkspaceInvitationsApi();
final workspaceInvitationId = 56; // int | Returns the workspace invitation related to the provided value.

try {
    final result = api_instance.getWorkspaceInvitation(workspaceInvitationId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->getWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceInvitationId** | **int**| Returns the workspace invitation related to the provided value. | 

### Return type

[**WorkspaceInvitation**](WorkspaceInvitation.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceInvitationByToken**
> UserWorkspaceInvitation getWorkspaceInvitationByToken(token)



Responds with the serialized workspace invitation if an invitation with the provided token is found.

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

final api_instance = WorkspaceInvitationsApi();
final token = token_example; // String | Returns the workspace invitation related to the provided token.

try {
    final result = api_instance.getWorkspaceInvitationByToken(token);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->getWorkspaceInvitationByToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Returns the workspace invitation related to the provided token. | 

### Return type

[**UserWorkspaceInvitation**](UserWorkspaceInvitation.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceInvitations**
> List<WorkspaceInvitation> listWorkspaceInvitations(workspaceId)



Lists all the workspace invitations of the workspace related to the provided `workspace_id` parameter if the authorized user has admin rights to that workspace.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceId = 56; // int | Returns only invitations that are in the workspace related to the provided value.

try {
    final result = api_instance.listWorkspaceInvitations(workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->listWorkspaceInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| Returns only invitations that are in the workspace related to the provided value. | 

### Return type

[**List<WorkspaceInvitation>**](WorkspaceInvitation.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectWorkspaceInvitation**
> rejectWorkspaceInvitation(workspaceInvitationId)



Rejects a workspace invitation with the given id if the email address of the user matches that of the invitation.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceInvitationId = 56; // int | Rejects the workspace invitation related to the provided value.

try {
    api_instance.rejectWorkspaceInvitation(workspaceInvitationId);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->rejectWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceInvitationId** | **int**| Rejects the workspace invitation related to the provided value. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceInvitation**
> WorkspaceInvitation updateWorkspaceInvitation(workspaceInvitationId, patchedUpdateWorkspaceInvitation)



Updates the existing workspace invitation related to the provided `workspace_invitation_id` param if the authorized user has admin rights to the related workspace.

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

final api_instance = WorkspaceInvitationsApi();
final workspaceInvitationId = 56; // int | Updates the workspace invitation related to the provided value.
final patchedUpdateWorkspaceInvitation = PatchedUpdateWorkspaceInvitation(); // PatchedUpdateWorkspaceInvitation | 

try {
    final result = api_instance.updateWorkspaceInvitation(workspaceInvitationId, patchedUpdateWorkspaceInvitation);
    print(result);
} catch (e) {
    print('Exception when calling WorkspaceInvitationsApi->updateWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceInvitationId** | **int**| Updates the workspace invitation related to the provided value. | 
 **patchedUpdateWorkspaceInvitation** | [**PatchedUpdateWorkspaceInvitation**](PatchedUpdateWorkspaceInvitation.md)|  | [optional] 

### Return type

[**WorkspaceInvitation**](WorkspaceInvitation.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

