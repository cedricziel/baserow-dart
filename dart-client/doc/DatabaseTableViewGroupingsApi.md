# openapi.api.DatabaseTableViewGroupingsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDatabaseTableViewGroup**](DatabaseTableViewGroupingsApi.md#createdatabasetableviewgroup) | **POST** /api/database/views/{view_id}/group_bys/ | 
[**deleteDatabaseTableViewGroup**](DatabaseTableViewGroupingsApi.md#deletedatabasetableviewgroup) | **DELETE** /api/database/views/group_by/{view_group_by_id}/ | 
[**getDatabaseTableViewGroup**](DatabaseTableViewGroupingsApi.md#getdatabasetableviewgroup) | **GET** /api/database/views/group_by/{view_group_by_id}/ | 
[**listDatabaseTableViewGroupings**](DatabaseTableViewGroupingsApi.md#listdatabasetableviewgroupings) | **GET** /api/database/views/{view_id}/group_bys/ | 
[**updateDatabaseTableViewGroup**](DatabaseTableViewGroupingsApi.md#updatedatabasetableviewgroup) | **PATCH** /api/database/views/group_by/{view_group_by_id}/ | 


# **createDatabaseTableViewGroup**
> ViewGroupBy createDatabaseTableViewGroup(viewId, createViewGroupBy, clientSessionId, clientUndoRedoActionGroupId)



Creates a new group by for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewGroupingsApi();
final viewId = 56; // int | Creates a group by for the view related to the provided value.
final createViewGroupBy = CreateViewGroupBy(); // CreateViewGroupBy | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.createDatabaseTableViewGroup(viewId, createViewGroupBy, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewGroupingsApi->createDatabaseTableViewGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Creates a group by for the view related to the provided value. | 
 **createViewGroupBy** | [**CreateViewGroupBy**](CreateViewGroupBy.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**ViewGroupBy**](ViewGroupBy.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableViewGroup**
> deleteDatabaseTableViewGroup(viewGroupById, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing group by if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewGroupingsApi();
final viewGroupById = 56; // int | Deletes the group by related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.deleteDatabaseTableViewGroup(viewGroupById, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewGroupingsApi->deleteDatabaseTableViewGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewGroupById** | **int**| Deletes the group by related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableViewGroup**
> ViewGroupBy getDatabaseTableViewGroup(viewGroupById)



Returns the existing view group by if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewGroupingsApi();
final viewGroupById = 56; // int | Returns the view group by related to the provided value.

try {
    final result = api_instance.getDatabaseTableViewGroup(viewGroupById);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewGroupingsApi->getDatabaseTableViewGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewGroupById** | **int**| Returns the view group by related to the provided value. | 

### Return type

[**ViewGroupBy**](ViewGroupBy.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableViewGroupings**
> List<ViewGroupBy> listDatabaseTableViewGroupings(viewId)



Lists all groupings of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple groupings.

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

final api_instance = DatabaseTableViewGroupingsApi();
final viewId = 56; // int | Returns only groupings of the view related to the provided value.

try {
    final result = api_instance.listDatabaseTableViewGroupings(viewId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewGroupingsApi->listDatabaseTableViewGroupings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Returns only groupings of the view related to the provided value. | 

### Return type

[**List<ViewGroupBy>**](ViewGroupBy.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableViewGroup**
> ViewGroupBy updateDatabaseTableViewGroup(viewGroupById, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewGroupBy)



Updates the existing group by if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewGroupingsApi();
final viewGroupById = 56; // int | Updates the view group by related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedUpdateViewGroupBy = PatchedUpdateViewGroupBy(); // PatchedUpdateViewGroupBy | 

try {
    final result = api_instance.updateDatabaseTableViewGroup(viewGroupById, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewGroupBy);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewGroupingsApi->updateDatabaseTableViewGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewGroupById** | **int**| Updates the view group by related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedUpdateViewGroupBy** | [**PatchedUpdateViewGroupBy**](PatchedUpdateViewGroupBy.md)|  | [optional] 

### Return type

[**ViewGroupBy**](ViewGroupBy.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

