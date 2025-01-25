# openapi.api.DatabaseTableViewFiltersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDatabaseTableViewFilter**](DatabaseTableViewFiltersApi.md#createdatabasetableviewfilter) | **POST** /api/database/views/{view_id}/filters/ | 
[**createDatabaseTableViewFilterGroup**](DatabaseTableViewFiltersApi.md#createdatabasetableviewfiltergroup) | **POST** /api/database/views/{view_id}/filter-groups/ | 
[**deleteDatabaseTableViewFilter**](DatabaseTableViewFiltersApi.md#deletedatabasetableviewfilter) | **DELETE** /api/database/views/filter/{view_filter_id}/ | 
[**deleteDatabaseTableViewFilterGroup**](DatabaseTableViewFiltersApi.md#deletedatabasetableviewfiltergroup) | **DELETE** /api/database/views/filter-group/{filter_group_id}/ | 
[**getDatabaseTableViewFilter**](DatabaseTableViewFiltersApi.md#getdatabasetableviewfilter) | **GET** /api/database/views/filter/{view_filter_id}/ | 
[**getDatabaseTableViewFilterGroup**](DatabaseTableViewFiltersApi.md#getdatabasetableviewfiltergroup) | **GET** /api/database/views/filter-group/{filter_group_id}/ | 
[**listDatabaseTableViewFilters**](DatabaseTableViewFiltersApi.md#listdatabasetableviewfilters) | **GET** /api/database/views/{view_id}/filters/ | 
[**updateDatabaseTableViewFilter**](DatabaseTableViewFiltersApi.md#updatedatabasetableviewfilter) | **PATCH** /api/database/views/filter/{view_filter_id}/ | 
[**updateDatabaseTableViewFilterGroup**](DatabaseTableViewFiltersApi.md#updatedatabasetableviewfiltergroup) | **PATCH** /api/database/views/filter-group/{filter_group_id}/ | 


# **createDatabaseTableViewFilter**
> ViewFilter createDatabaseTableViewFilter(viewId, createViewFilter, clientSessionId, clientUndoRedoActionGroupId)



Creates a new filter for the view related to the provided `view_id` parameter. When the rows of a view are requested, for example via the `list_database_table_grid_view_rows` endpoint, then only the rows that apply to all the filters are going to be returned. A filter compares the value of a field to the value of a filter. It depends on the type how values are going to be compared.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewId = 56; // int | Creates a filter for the view related to the provided value.
final createViewFilter = CreateViewFilter(); // CreateViewFilter | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.createDatabaseTableViewFilter(viewId, createViewFilter, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->createDatabaseTableViewFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Creates a filter for the view related to the provided value. | 
 **createViewFilter** | [**CreateViewFilter**](CreateViewFilter.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**ViewFilter**](ViewFilter.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatabaseTableViewFilterGroup**
> ViewFilterGroup createDatabaseTableViewFilterGroup(viewId, clientSessionId, clientUndoRedoActionGroupId, createViewFilterGroup)



Creates a new filter group for the view related to the provided `view_id` parameter.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewId = 56; // int | The ID of the view where create the new filter group.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final createViewFilterGroup = CreateViewFilterGroup(); // CreateViewFilterGroup | 

try {
    final result = api_instance.createDatabaseTableViewFilterGroup(viewId, clientSessionId, clientUndoRedoActionGroupId, createViewFilterGroup);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->createDatabaseTableViewFilterGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| The ID of the view where create the new filter group. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **createViewFilterGroup** | [**CreateViewFilterGroup**](CreateViewFilterGroup.md)|  | [optional] 

### Return type

[**ViewFilterGroup**](ViewFilterGroup.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableViewFilter**
> deleteDatabaseTableViewFilter(viewFilterId, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing filter if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewFilterId = 56; // int | The ID of the view filter to delete.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.deleteDatabaseTableViewFilter(viewFilterId, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->deleteDatabaseTableViewFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewFilterId** | **int**| The ID of the view filter to delete. | 
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

# **deleteDatabaseTableViewFilterGroup**
> deleteDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing filter group with the given `view_filter_group_id`.

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

final api_instance = DatabaseTableViewFiltersApi();
final filterGroupId = filterGroupId_example; // String | 
final viewFilterGroupId = 56; // int | The ID of the view filter group to delete.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.deleteDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->deleteDatabaseTableViewFilterGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterGroupId** | **String**|  | 
 **viewFilterGroupId** | **int**| The ID of the view filter group to delete. | 
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

# **getDatabaseTableViewFilter**
> ViewFilter getDatabaseTableViewFilter(viewFilterId)



Returns the existing view filter.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewFilterId = 56; // int | The ID of the view filter to return.

try {
    final result = api_instance.getDatabaseTableViewFilter(viewFilterId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->getDatabaseTableViewFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewFilterId** | **int**| The ID of the view filter to return. | 

### Return type

[**ViewFilter**](ViewFilter.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableViewFilterGroup**
> ViewFilterGroup getDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId)



Returns the existing view filter group with the given `view_filter_group_id`.

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

final api_instance = DatabaseTableViewFiltersApi();
final filterGroupId = filterGroupId_example; // String | 
final viewFilterGroupId = 56; // int | Teh ID of the view filter group to return.

try {
    final result = api_instance.getDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->getDatabaseTableViewFilterGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterGroupId** | **String**|  | 
 **viewFilterGroupId** | **int**| Teh ID of the view filter group to return. | 

### Return type

[**ViewFilterGroup**](ViewFilterGroup.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableViewFilters**
> List<ViewFilter> listDatabaseTableViewFilters(viewId)



Lists all filters of the view related to the provided `view_id`. A view can have multiple filters. When all the rows are requested for the view only those that apply to the filters are returned.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewId = 56; // int | Returns only filters of the view related to the provided value.

try {
    final result = api_instance.listDatabaseTableViewFilters(viewId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->listDatabaseTableViewFilters: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Returns only filters of the view related to the provided value. | 

### Return type

[**List<ViewFilter>**](ViewFilter.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableViewFilter**
> ViewFilter updateDatabaseTableViewFilter(viewFilterId, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewFilter)



Updates the existing filter.

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

final api_instance = DatabaseTableViewFiltersApi();
final viewFilterId = 56; // int | The ID of the view filter to update.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedUpdateViewFilter = PatchedUpdateViewFilter(); // PatchedUpdateViewFilter | 

try {
    final result = api_instance.updateDatabaseTableViewFilter(viewFilterId, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewFilter);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->updateDatabaseTableViewFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewFilterId** | **int**| The ID of the view filter to update. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedUpdateViewFilter** | [**PatchedUpdateViewFilter**](PatchedUpdateViewFilter.md)|  | [optional] 

### Return type

[**ViewFilter**](ViewFilter.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableViewFilterGroup**
> ViewFilterGroup updateDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewFilterGroup)



Updates the existing filter group with the given `view_filter_group_id`.

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

final api_instance = DatabaseTableViewFiltersApi();
final filterGroupId = filterGroupId_example; // String | 
final viewFilterGroupId = 56; // int | The ID of the view filter group to update.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedUpdateViewFilterGroup = PatchedUpdateViewFilterGroup(); // PatchedUpdateViewFilterGroup | 

try {
    final result = api_instance.updateDatabaseTableViewFilterGroup(filterGroupId, viewFilterGroupId, clientSessionId, clientUndoRedoActionGroupId, patchedUpdateViewFilterGroup);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewFiltersApi->updateDatabaseTableViewFilterGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterGroupId** | **String**|  | 
 **viewFilterGroupId** | **int**| The ID of the view filter group to update. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedUpdateViewFilterGroup** | [**PatchedUpdateViewFilterGroup**](PatchedUpdateViewFilterGroup.md)|  | [optional] 

### Return type

[**ViewFilterGroup**](ViewFilterGroup.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

