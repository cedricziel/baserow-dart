# openapi.api.RoleAssignmentsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignRole**](RoleAssignmentsApi.md#assignrole) | **POST** /api/role/{workspace_id}/ | 
[**batchAssignRole**](RoleAssignmentsApi.md#batchassignrole) | **POST** /api/role/{workspace_id}/batch/ | 
[**listRoleAssignments**](RoleAssignmentsApi.md#listroleassignments) | **GET** /api/role/{workspace_id}/ | 


# **assignRole**
> OpenApiRoleAssignment assignRole(workspaceId, createRoleAssignment)



You can assign a role to a subject into the given workspace for the given scope with this endpoint. If you want to remove the role you can omit the role property.

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

final api_instance = RoleAssignmentsApi();
final workspaceId = 56; // int | The workspace in which the role assignment takes place.
final createRoleAssignment = CreateRoleAssignment(); // CreateRoleAssignment | 

try {
    final result = api_instance.assignRole(workspaceId, createRoleAssignment);
    print(result);
} catch (e) {
    print('Exception when calling RoleAssignmentsApi->assignRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| The workspace in which the role assignment takes place. | 
 **createRoleAssignment** | [**CreateRoleAssignment**](CreateRoleAssignment.md)|  | 

### Return type

[**OpenApiRoleAssignment**](OpenApiRoleAssignment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchAssignRole**
> List<OpenApiRoleAssignment> batchAssignRole(workspaceId, batchCreateRoleAssignment)



You can assign a role to a multiple subjects into the given workspace for the given scopes with this endpoint. If you want to remove the role you can omit the role property.

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

final api_instance = RoleAssignmentsApi();
final workspaceId = 56; // int | The workspace in which the role assignment takes place.
final batchCreateRoleAssignment = BatchCreateRoleAssignment(); // BatchCreateRoleAssignment | 

try {
    final result = api_instance.batchAssignRole(workspaceId, batchCreateRoleAssignment);
    print(result);
} catch (e) {
    print('Exception when calling RoleAssignmentsApi->batchAssignRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| The workspace in which the role assignment takes place. | 
 **batchCreateRoleAssignment** | [**BatchCreateRoleAssignment**](BatchCreateRoleAssignment.md)|  | 

### Return type

[**List<OpenApiRoleAssignment>**](OpenApiRoleAssignment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoleAssignments**
> List<OpenApiRoleAssignment> listRoleAssignments(workspaceId, scopeId, scopeType)



You can list the role assignments within a workspace, optionally filtered downto a specific scope inside of that workspace. If the scope isn't specified,the workspace will be considered the scope.

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

final api_instance = RoleAssignmentsApi();
final workspaceId = 56; // int | The workspace in which the role assignments are related to.
final scopeId = 56; // int | The id of the scope you are trying to get all roleassignments for.
final scopeType = scopeType_example; // String | The type of scope you are trying to get all roleassignments for.

try {
    final result = api_instance.listRoleAssignments(workspaceId, scopeId, scopeType);
    print(result);
} catch (e) {
    print('Exception when calling RoleAssignmentsApi->listRoleAssignments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| The workspace in which the role assignments are related to. | 
 **scopeId** | **int**| The id of the scope you are trying to get all roleassignments for. | [optional] 
 **scopeType** | **String**| The type of scope you are trying to get all roleassignments for. | [optional] 

### Return type

[**List<OpenApiRoleAssignment>**](OpenApiRoleAssignment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

