# openapi.api.AuditLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**asyncAuditLogExport**](AuditLogApi.md#asyncauditlogexport) | **POST** /api/admin/audit-log/export/ | 
[**asyncAuditLogExport2**](AuditLogApi.md#asyncauditlogexport2) | **POST** /api/audit-log/export/ | 
[**auditLogActionTypes**](AuditLogApi.md#auditlogactiontypes) | **GET** /api/admin/audit-log/action-types/ | 
[**auditLogActionTypes2**](AuditLogApi.md#auditlogactiontypes2) | **GET** /api/audit-log/action-types/ | 
[**auditLogList**](AuditLogApi.md#auditloglist) | **GET** /api/admin/audit-log/ | 
[**auditLogList2**](AuditLogApi.md#auditloglist2) | **GET** /api/audit-log/ | 
[**auditLogUsers**](AuditLogApi.md#auditlogusers) | **GET** /api/admin/audit-log/users/ | 
[**auditLogUsers2**](AuditLogApi.md#auditlogusers2) | **GET** /api/audit-log/users/ | 
[**auditLogWorkspaces**](AuditLogApi.md#auditlogworkspaces) | **GET** /api/admin/audit-log/workspaces/ | 
[**auditLogWorkspaces2**](AuditLogApi.md#auditlogworkspaces2) | **GET** /api/audit-log/workspaces/ | 


# **asyncAuditLogExport**
> SingleAuditLogExportJobResponse asyncAuditLogExport(clientSessionId, singleAuditLogExportJobRequest)



Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final singleAuditLogExportJobRequest = SingleAuditLogExportJobRequest(); // SingleAuditLogExportJobRequest | 

try {
    final result = api_instance.asyncAuditLogExport(clientSessionId, singleAuditLogExportJobRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->asyncAuditLogExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **singleAuditLogExportJobRequest** | [**SingleAuditLogExportJobRequest**](SingleAuditLogExportJobRequest.md)|  | [optional] 

### Return type

[**SingleAuditLogExportJobResponse**](SingleAuditLogExportJobResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asyncAuditLogExport2**
> SingleAuditLogExportJobResponse asyncAuditLogExport2(clientSessionId, singleAuditLogExportJobRequest)



Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final singleAuditLogExportJobRequest = SingleAuditLogExportJobRequest(); // SingleAuditLogExportJobRequest | 

try {
    final result = api_instance.asyncAuditLogExport2(clientSessionId, singleAuditLogExportJobRequest);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->asyncAuditLogExport2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **singleAuditLogExportJobRequest** | [**SingleAuditLogExportJobRequest**](SingleAuditLogExportJobRequest.md)|  | [optional] 

### Return type

[**SingleAuditLogExportJobResponse**](SingleAuditLogExportJobResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogActionTypes**
> List<AuditLogActionType> auditLogActionTypes(search, workspaceId)



List all distinct action types related to an audit log entry.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final search = search_example; // String | If provided only action_types with name that match the query will be returned.
final workspaceId = 56; // int | Return action types related to the workspace.

try {
    final result = api_instance.auditLogActionTypes(search, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogActionTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| If provided only action_types with name that match the query will be returned. | [optional] 
 **workspaceId** | **int**| Return action types related to the workspace. | [optional] 

### Return type

[**List<AuditLogActionType>**](AuditLogActionType.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogActionTypes2**
> List<AuditLogActionType> auditLogActionTypes2(search, workspaceId)



List all distinct action types related to an audit log entry.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final search = search_example; // String | If provided only action_types with name that match the query will be returned.
final workspaceId = 56; // int | Return action types related to the workspace.

try {
    final result = api_instance.auditLogActionTypes2(search, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogActionTypes2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| If provided only action_types with name that match the query will be returned. | [optional] 
 **workspaceId** | **int**| Return action types related to the workspace. | [optional] 

### Return type

[**List<AuditLogActionType>**](AuditLogActionType.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogList**
> PaginationSerializerAuditLog auditLogList(actionType, fromTimestamp, page, size, sorts, toTimestamp, userId, workspaceId)



Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final actionType = actionType_example; // String | Filter the audit log entries by action type.
final fromTimestamp = fromTimestamp_example; // String | The ISO timestamp to filter the audit log entries from.
final page = 56; // int | Defines which page should be returned.
final size = 56; // int | Defines how many audit log entries should be returned per page.
final sorts = sorts_example; // String | A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
final toTimestamp = toTimestamp_example; // String | The ISO timestamp to filter the audit log entries to.
final userId = 56; // int | Filter the audit log entries by user id.
final workspaceId = 56; // int | Filter the audit log entries by workspace id. This filter works only for the admin audit log.

try {
    final result = api_instance.auditLogList(actionType, fromTimestamp, page, size, sorts, toTimestamp, userId, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionType** | **String**| Filter the audit log entries by action type. | [optional] 
 **fromTimestamp** | **String**| The ISO timestamp to filter the audit log entries from. | [optional] 
 **page** | **int**| Defines which page should be returned. | [optional] 
 **size** | **int**| Defines how many audit log entries should be returned per page. | [optional] 
 **sorts** | **String**| A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error. | [optional] 
 **toTimestamp** | **String**| The ISO timestamp to filter the audit log entries to. | [optional] 
 **userId** | **int**| Filter the audit log entries by user id. | [optional] 
 **workspaceId** | **int**| Filter the audit log entries by workspace id. This filter works only for the admin audit log. | [optional] 

### Return type

[**PaginationSerializerAuditLog**](PaginationSerializerAuditLog.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogList2**
> PaginationSerializerAuditLog auditLogList2(actionType, fromTimestamp, page, size, sorts, toTimestamp, userId, workspaceId)



Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final actionType = actionType_example; // String | Filter the audit log entries by action type.
final fromTimestamp = fromTimestamp_example; // String | The ISO timestamp to filter the audit log entries from.
final page = 56; // int | Defines which page should be returned.
final size = 56; // int | Defines how many audit log entries should be returned per page.
final sorts = sorts_example; // String | A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
final toTimestamp = toTimestamp_example; // String | The ISO timestamp to filter the audit log entries to.
final userId = 56; // int | Filter the audit log entries by user id.
final workspaceId = 56; // int | Filter the audit log entries by workspace id. This filter works only for the admin audit log.

try {
    final result = api_instance.auditLogList2(actionType, fromTimestamp, page, size, sorts, toTimestamp, userId, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogList2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionType** | **String**| Filter the audit log entries by action type. | [optional] 
 **fromTimestamp** | **String**| The ISO timestamp to filter the audit log entries from. | [optional] 
 **page** | **int**| Defines which page should be returned. | [optional] 
 **size** | **int**| Defines how many audit log entries should be returned per page. | [optional] 
 **sorts** | **String**| A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error. | [optional] 
 **toTimestamp** | **String**| The ISO timestamp to filter the audit log entries to. | [optional] 
 **userId** | **int**| Filter the audit log entries by user id. | [optional] 
 **workspaceId** | **int**| Filter the audit log entries by workspace id. This filter works only for the admin audit log. | [optional] 

### Return type

[**PaginationSerializerAuditLog**](PaginationSerializerAuditLog.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogUsers**
> PaginationSerializerAuditLogUser auditLogUsers(page, search, size, workspaceId)



List all users that have performed an action in the audit log.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final page = 56; // int | Defines which page should be returned.
final search = search_example; // String | If provided only users with email that match the query will be returned.
final size = 56; // int | Defines how many users should be returned per page.
final workspaceId = 56; // int | Return users belonging to the given workspace_id.

try {
    final result = api_instance.auditLogUsers(page, search, size, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Defines which page should be returned. | [optional] 
 **search** | **String**| If provided only users with email that match the query will be returned. | [optional] 
 **size** | **int**| Defines how many users should be returned per page. | [optional] 
 **workspaceId** | **int**| Return users belonging to the given workspace_id. | [optional] 

### Return type

[**PaginationSerializerAuditLogUser**](PaginationSerializerAuditLogUser.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogUsers2**
> PaginationSerializerAuditLogUser auditLogUsers2(page, search, size, workspaceId)



List all users that have performed an action in the audit log.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final page = 56; // int | Defines which page should be returned.
final search = search_example; // String | If provided only users with email that match the query will be returned.
final size = 56; // int | Defines how many users should be returned per page.
final workspaceId = 56; // int | Return users belonging to the given workspace_id.

try {
    final result = api_instance.auditLogUsers2(page, search, size, workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogUsers2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Defines which page should be returned. | [optional] 
 **search** | **String**| If provided only users with email that match the query will be returned. | [optional] 
 **size** | **int**| Defines how many users should be returned per page. | [optional] 
 **workspaceId** | **int**| Return users belonging to the given workspace_id. | [optional] 

### Return type

[**PaginationSerializerAuditLogUser**](PaginationSerializerAuditLogUser.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogWorkspaces**
> PaginationSerializerAuditLogWorkspace auditLogWorkspaces(page, search, size)



List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final page = 56; // int | Defines which page should be returned.
final search = search_example; // String | If provided only workspaces with name that match the query will be returned.
final size = 56; // int | Defines how many workspaces should be returned per page.

try {
    final result = api_instance.auditLogWorkspaces(page, search, size);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogWorkspaces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Defines which page should be returned. | [optional] 
 **search** | **String**| If provided only workspaces with name that match the query will be returned. | [optional] 
 **size** | **int**| Defines how many workspaces should be returned per page. | [optional] 

### Return type

[**PaginationSerializerAuditLogWorkspace**](PaginationSerializerAuditLogWorkspace.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **auditLogWorkspaces2**
> PaginationSerializerAuditLogWorkspace auditLogWorkspaces2(page, search, size)



List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.

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

final api_instance = AuditLogApi();
final page = 56; // int | Defines which page should be returned.
final search = search_example; // String | If provided only workspaces with name that match the query will be returned.
final size = 56; // int | Defines how many workspaces should be returned per page.

try {
    final result = api_instance.auditLogWorkspaces2(page, search, size);
    print(result);
} catch (e) {
    print('Exception when calling AuditLogApi->auditLogWorkspaces2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Defines which page should be returned. | [optional] 
 **search** | **String**| If provided only workspaces with name that match the query will be returned. | [optional] 
 **size** | **int**| Defines how many workspaces should be returned per page. | [optional] 

### Return type

[**PaginationSerializerAuditLogWorkspace**](PaginationSerializerAuditLogWorkspace.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

