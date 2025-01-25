# openapi.api.TrashApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTrashStructure**](TrashApi.md#gettrashstructure) | **GET** /api/trash/ | 
[**restore**](TrashApi.md#restore) | **PATCH** /api/trash/restore/ | 
[**workspaceEmptyContents**](TrashApi.md#workspaceemptycontents) | **DELETE** /api/trash/workspace/{workspace_id}/ | 
[**workspaceGetContents**](TrashApi.md#workspacegetcontents) | **GET** /api/trash/workspace/{workspace_id}/ | 


# **getTrashStructure**
> TrashStructure getTrashStructure()



Responds with the workspaces and applications available for the requesting user to inspect the trash contents of.

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

final api_instance = TrashApi();

try {
    final result = api_instance.getTrashStructure();
    print(result);
} catch (e) {
    print('Exception when calling TrashApi->getTrashStructure: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrashStructure**](TrashStructure.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore**
> restore(patchedTrashEntryRequest)



Restores the specified trashed item back into baserow.

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

final api_instance = TrashApi();
final patchedTrashEntryRequest = PatchedTrashEntryRequest(); // PatchedTrashEntryRequest | 

try {
    api_instance.restore(patchedTrashEntryRequest);
} catch (e) {
    print('Exception when calling TrashApi->restore: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **patchedTrashEntryRequest** | [**PatchedTrashEntryRequest**](PatchedTrashEntryRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceEmptyContents**
> workspaceEmptyContents(workspaceId, applicationId)



Empties the specified workspace and/or application of trash, including the workspace and application themselves if they are trashed also.

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

final api_instance = TrashApi();
final workspaceId = 56; // int | The workspace whose trash contents to empty, including the workspace itself if it is also trashed.
final applicationId = 56; // int | Optionally filters down the trash to delete to only items for this application in the workspace.

try {
    api_instance.workspaceEmptyContents(workspaceId, applicationId);
} catch (e) {
    print('Exception when calling TrashApi->workspaceEmptyContents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| The workspace whose trash contents to empty, including the workspace itself if it is also trashed. | 
 **applicationId** | **int**| Optionally filters down the trash to delete to only items for this application in the workspace. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetContents**
> PaginationSerializerTrashContents workspaceGetContents(workspaceId, applicationId, page)



Responds with trash contents for a workspace optionally filtered to a specific application.

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

final api_instance = TrashApi();
final workspaceId = 56; // int | Returns the trash for the workspace with this id.
final applicationId = 56; // int | Optionally filters down the trash to only items for this application in the workspace.
final page = 56; // int | Selects which page of trash contents should be returned.

try {
    final result = api_instance.workspaceGetContents(workspaceId, applicationId, page);
    print(result);
} catch (e) {
    print('Exception when calling TrashApi->workspaceGetContents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **int**| Returns the trash for the workspace with this id. | 
 **applicationId** | **int**| Optionally filters down the trash to only items for this application in the workspace. | [optional] 
 **page** | **int**| Selects which page of trash contents should be returned. | [optional] 

### Return type

[**PaginationSerializerTrashContents**](PaginationSerializerTrashContents.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

