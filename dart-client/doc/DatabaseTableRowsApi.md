# openapi.api.DatabaseTableRowsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchCreateDatabaseTableRows**](DatabaseTableRowsApi.md#batchcreatedatabasetablerows) | **POST** /api/database/rows/table/{table_id}/batch/ | 
[**batchDeleteDatabaseTableRows**](DatabaseTableRowsApi.md#batchdeletedatabasetablerows) | **POST** /api/database/rows/table/{table_id}/batch-delete/ | 
[**batchUpdateDatabaseTableRows**](DatabaseTableRowsApi.md#batchupdatedatabasetablerows) | **PATCH** /api/database/rows/table/{table_id}/batch/ | 
[**createDatabaseTableRow**](DatabaseTableRowsApi.md#createdatabasetablerow) | **POST** /api/database/rows/table/{table_id}/ | 
[**createRowComment**](DatabaseTableRowsApi.md#createrowcomment) | **POST** /api/row_comments/{table_id}/{row_id}/ | 
[**deleteDatabaseTableRow**](DatabaseTableRowsApi.md#deletedatabasetablerow) | **DELETE** /api/database/rows/table/{table_id}/{row_id}/ | 
[**deleteRowComment**](DatabaseTableRowsApi.md#deleterowcomment) | **DELETE** /api/row_comments/{table_id}/comment/{comment_id}/ | 
[**getAdjacentDatabaseTableRow**](DatabaseTableRowsApi.md#getadjacentdatabasetablerow) | **GET** /api/database/rows/table/{table_id}/{row_id}/adjacent/ | 
[**getDatabaseTableRow**](DatabaseTableRowsApi.md#getdatabasetablerow) | **GET** /api/database/rows/table/{table_id}/{row_id}/ | 
[**getDatabaseTableRowHistory**](DatabaseTableRowsApi.md#getdatabasetablerowhistory) | **GET** /api/database/rows/table/{table_id}/{row_id}/history/ | 
[**getRowComments**](DatabaseTableRowsApi.md#getrowcomments) | **GET** /api/row_comments/{table_id}/{row_id}/ | 
[**listDatabaseTableRowNames**](DatabaseTableRowsApi.md#listdatabasetablerownames) | **GET** /api/database/rows/names/ | 
[**listDatabaseTableRows**](DatabaseTableRowsApi.md#listdatabasetablerows) | **GET** /api/database/rows/table/{table_id}/ | 
[**moveDatabaseTableRow**](DatabaseTableRowsApi.md#movedatabasetablerow) | **PATCH** /api/database/rows/table/{table_id}/{row_id}/move/ | 
[**updateDatabaseTableRow**](DatabaseTableRowsApi.md#updatedatabasetablerow) | **PATCH** /api/database/rows/table/{table_id}/{row_id}/ | 
[**updateRowComment**](DatabaseTableRowsApi.md#updaterowcomment) | **PATCH** /api/row_comments/{table_id}/comment/{comment_id}/ | 
[**updateRowCommentNotificationMode**](DatabaseTableRowsApi.md#updaterowcommentnotificationmode) | **PUT** /api/row_comments/{table_id}/{row_id}/notification-mode/ | 


# **batchCreateDatabaseTableRows**
> ExampleBatchRowsResponse batchCreateDatabaseTableRows(tableId, exampleBatchRowsRequest, clientSessionId, clientUndoRedoActionGroupId, before, sendWebhookEvents, userFieldNames)



Creates new rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row created webhooks.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableId = 56; // int | Creates the rows in the table.
final exampleBatchRowsRequest = ExampleBatchRowsRequest(); // ExampleBatchRowsRequest | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final before = 56; // int | If provided then the newly created rows will be positioned before the row with the provided id.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).

try {
    final result = api_instance.batchCreateDatabaseTableRows(tableId, exampleBatchRowsRequest, clientSessionId, clientUndoRedoActionGroupId, before, sendWebhookEvents, userFieldNames);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->batchCreateDatabaseTableRows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Creates the rows in the table. | 
 **exampleBatchRowsRequest** | [**ExampleBatchRowsRequest**](ExampleBatchRowsRequest.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **before** | **int**| If provided then the newly created rows will be positioned before the row with the provided id. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 

### Return type

[**ExampleBatchRowsResponse**](ExampleBatchRowsResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchDeleteDatabaseTableRows**
> batchDeleteDatabaseTableRows(tableId, batchDeleteRows, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents)



Deletes existing rows in the table if the user has access to the table's workspace.   **WARNING:**  This endpoint doesn't yet work with row deleted webhooks.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableId = 56; // int | Deletes the rows in the table related to the value.
final batchDeleteRows = BatchDeleteRows(); // BatchDeleteRows | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`

try {
    api_instance.batchDeleteDatabaseTableRows(tableId, batchDeleteRows, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->batchDeleteDatabaseTableRows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Deletes the rows in the table related to the value. | 
 **batchDeleteRows** | [**BatchDeleteRows**](BatchDeleteRows.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchUpdateDatabaseTableRows**
> ExampleBatchRowsResponse batchUpdateDatabaseTableRows(tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents, userFieldNames, patchedExampleBatchUpdateRowsRequest)



Updates existing rows in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided for each row. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.   **WARNING:** This endpoint doesn't yet work with row updated webhooks.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableId = 56; // int | Updates the rows in the table.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
final patchedExampleBatchUpdateRowsRequest = PatchedExampleBatchUpdateRowsRequest(); // PatchedExampleBatchUpdateRowsRequest | 

try {
    final result = api_instance.batchUpdateDatabaseTableRows(tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents, userFieldNames, patchedExampleBatchUpdateRowsRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->batchUpdateDatabaseTableRows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Updates the rows in the table. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 
 **patchedExampleBatchUpdateRowsRequest** | [**PatchedExampleBatchUpdateRowsRequest**](PatchedExampleBatchUpdateRowsRequest.md)|  | [optional] 

### Return type

[**ExampleBatchRowsResponse**](ExampleBatchRowsResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatabaseTableRow**
> ExampleRowResponseSerializerWithUserFieldNames createDatabaseTableRow(tableId, clientSessionId, clientUndoRedoActionGroupId, before, sendWebhookEvents, userFieldNames, exampleRowRequestSerializerWithUserFieldNames)



Creates a new row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** to list them all. None of the fields are required, if they are not provided the value is going to be `null` or `false` or some default value is that is set. If you want to add a value for the field with for example id `10`, the key must be named `field_10`. Or instead if the `user_field_names` GET param is provided the key must be the name of the field. Of course multiple fields can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableId = 56; // int | Creates a row in the table related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final before = 56; // int | If provided then the newly created row will be positioned before the row with the provided id.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
final exampleRowRequestSerializerWithUserFieldNames = ExampleRowRequestSerializerWithUserFieldNames(); // ExampleRowRequestSerializerWithUserFieldNames | 

try {
    final result = api_instance.createDatabaseTableRow(tableId, clientSessionId, clientUndoRedoActionGroupId, before, sendWebhookEvents, userFieldNames, exampleRowRequestSerializerWithUserFieldNames);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->createDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Creates a row in the table related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **before** | **int**| If provided then the newly created row will be positioned before the row with the provided id. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 
 **exampleRowRequestSerializerWithUserFieldNames** | [**ExampleRowRequestSerializerWithUserFieldNames**](ExampleRowRequestSerializerWithUserFieldNames.md)|  | [optional] 

### Return type

[**ExampleRowResponseSerializerWithUserFieldNames**](ExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRowComment**
> RowComment createRowComment(rowId, tableId, rowCommentCreate)



Creates a comment on the specified row.  This is a **premium** feature.

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

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | The row to create a comment for.
final tableId = 56; // int | The table to find the row to comment on in.
final rowCommentCreate = RowCommentCreate(); // RowCommentCreate | 

try {
    final result = api_instance.createRowComment(rowId, tableId, rowCommentCreate);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->createRowComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| The row to create a comment for. | 
 **tableId** | **int**| The table to find the row to comment on in. | 
 **rowCommentCreate** | [**RowCommentCreate**](RowCommentCreate.md)|  | 

### Return type

[**RowComment**](RowComment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableRow**
> deleteDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents)



Deletes an existing row in the table if the user has access to the table's workspace.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | Deletes the row related to the value.
final tableId = 56; // int | Deletes the row in the table related to the value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`

try {
    api_instance.deleteDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->deleteDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| Deletes the row related to the value. | 
 **tableId** | **int**| Deletes the row in the table related to the value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRowComment**
> RowComment deleteRowComment(commentId, tableId)



Delete a row comment.  This is a **premium** feature.

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

final api_instance = DatabaseTableRowsApi();
final commentId = 56; // int | The row comment to delete.
final tableId = 56; // int | The table the row is in.

try {
    final result = api_instance.deleteRowComment(commentId, tableId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->deleteRowComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **int**| The row comment to delete. | 
 **tableId** | **int**| The table the row is in. | 

### Return type

[**RowComment**](RowComment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAdjacentDatabaseTableRow**
> ExampleRowResponseSerializerWithUserFieldNames getAdjacentDatabaseTableRow(rowId, tableId, previous, search, searchMode, userFieldNames, viewId)



Fetches the adjacent row to a given row_id in the table with the given table_id. If the previous flag is set it will return the previous row, otherwise it will return the next row. You can specifya view_id and it will apply the filters and sorts of the provided view.

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

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | Returns the row adjacent the provided value.
final tableId = 56; // int | Returns the row of the table related to the provided value.
final previous = true; // bool | A flag query parameter which if provided returns theprevious row to the specified row_id. If it's not setit will return the next row.
final search = search_example; // String | If provided, the adjacent row will be one that matchesthe search query.
final searchMode = searchMode_example; // String | If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
final viewId = 56; // int | Applies the filters and sorts of the provided view.

try {
    final result = api_instance.getAdjacentDatabaseTableRow(rowId, tableId, previous, search, searchMode, userFieldNames, viewId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->getAdjacentDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| Returns the row adjacent the provided value. | 
 **tableId** | **int**| Returns the row of the table related to the provided value. | 
 **previous** | **bool**| A flag query parameter which if provided returns theprevious row to the specified row_id. If it's not setit will return the next row. | [optional] 
 **search** | **String**| If provided, the adjacent row will be one that matchesthe search query. | [optional] 
 **searchMode** | **String**| If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour. | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 
 **viewId** | **int**| Applies the filters and sorts of the provided view. | [optional] 

### Return type

[**ExampleRowResponseSerializerWithUserFieldNames**](ExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableRow**
> ExampleRowResponseSerializerWithUserFieldNames getDatabaseTableRow(rowId, tableId, userFieldNames)



Fetches an existing row from the table if the user has access to the related table's workspace. The properties of the returned row depend on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | Returns the row related the provided value.
final tableId = 56; // int | Returns the row of the table related to the provided value.
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).

try {
    final result = api_instance.getDatabaseTableRow(rowId, tableId, userFieldNames);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->getDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| Returns the row related the provided value. | 
 **tableId** | **int**| Returns the row of the table related to the provided value. | 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 

### Return type

[**ExampleRowResponseSerializerWithUserFieldNames**](ExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableRowHistory**
> PaginationSerializerRowHistory getDatabaseTableRowHistory(rowId, tableId, limit, offset)



Fetches the row change history of a given row_id in the table with the given table_id. The row change history is paginated and can be limited with the limit and offset query parameters.

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

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | The id of the row to fetch the change history from.
final tableId = 56; // int | The id of the table to fetch the row change history from.
final limit = 56; // int | The maximum number of row change history entries to return.
final offset = 56; // int | The offset of the row change history entries to return.

try {
    final result = api_instance.getDatabaseTableRowHistory(rowId, tableId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->getDatabaseTableRowHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| The id of the row to fetch the change history from. | 
 **tableId** | **int**| The id of the table to fetch the row change history from. | 
 **limit** | **int**| The maximum number of row change history entries to return. | [optional] 
 **offset** | **int**| The offset of the row change history entries to return. | [optional] 

### Return type

[**PaginationSerializerRowHistory**](PaginationSerializerRowHistory.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRowComments**
> PaginationSerializerRowComment getRowComments(rowId, tableId, limit, offset, page, size)



Returns all row comments for the specified table and row.  This is a **premium** feature.

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

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | The row to get row comments for.
final tableId = 56; // int | The table the row is in.
final limit = 56; // int | Defines how many rows should be returned.
final offset = 56; // int | Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
final page = 56; // int | Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
final size = 56; // int | Can only be used in combination with the `page` parameter and defines how many rows should be returned.

try {
    final result = api_instance.getRowComments(rowId, tableId, limit, offset, page, size);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->getRowComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| The row to get row comments for. | 
 **tableId** | **int**| The table the row is in. | 
 **limit** | **int**| Defines how many rows should be returned. | [optional] 
 **offset** | **int**| Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned. | [optional] 
 **page** | **int**| Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both. | [optional] 
 **size** | **int**| Can only be used in combination with the `page` parameter and defines how many rows should be returned. | [optional] 

### Return type

[**PaginationSerializerRowComment**](PaginationSerializerRowComment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableRowNames**
> ListDatabaseTableRowNames200Response listDatabaseTableRowNames(tableLeftCurlyBracketIdRightCurlyBracket)



Returns the names of the given row of the given tables. The nameof a row is the primary field value for this row. The result can be usedfor example, when you want to display the name of a linked row from another table.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableLeftCurlyBracketIdRightCurlyBracket = tableLeftCurlyBracketIdRightCurlyBracket_example; // String | A list of comma separated row ids to query from the table with id {id}. For example, if you want the name of row `42` and `43` from table `28` this parameter will be `table__28=42,43`. You can specify multiple rows for different tables but every tables must be in the same database. You need at least read permission on all specified tables.

try {
    final result = api_instance.listDatabaseTableRowNames(tableLeftCurlyBracketIdRightCurlyBracket);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->listDatabaseTableRowNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableLeftCurlyBracketIdRightCurlyBracket** | **String**| A list of comma separated row ids to query from the table with id {id}. For example, if you want the name of row `42` and `43` from table `28` this parameter will be `table__28=42,43`. You can specify multiple rows for different tables but every tables must be in the same database. You need at least read permission on all specified tables. | [optional] 

### Return type

[**ListDatabaseTableRowNames200Response**](ListDatabaseTableRowNames200Response.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableRows**
> PaginationSerializerExampleRowResponseSerializerWithUserFieldNames listDatabaseTableRows(tableId, exclude, filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType, filters, include, orderBy, page, search, searchMode, size, userFieldNames, viewId, leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket)



Lists all the rows of the table related to the provided parameter if the user has access to the related database's workspace. The response is paginated by a page/size style. It is also possible to provide an optional search query, only rows where the data matches the search query are going to be returned then. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. Or if the GET parameter `user_field_names` is provided then the keys will be the name of the field. The value is what the user has provided and the format of it depends on the fields type.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final tableId = 56; // int | Returns the rows of the table related to the provided value.
final exclude = exclude_example; // String | All the fields are included in the response by default. You can select a subset of fields by providing the exclude query parameter. If you for example provide the following GET parameter `exclude=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. If the `user_field_names` parameter is provided then instead exclude should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `exclude=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `exclude=My Field,Field with \\\"`.
final filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket = filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket_example; // String | The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
final filterType = filterType_example; // String | `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
final filters = filters_example; // String | A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
final include = include_example; // String | All the fields are included in the response by default. You can select a subset of fields by providing the include query parameter. If you for example provide the following GET parameter `include=field_1,field_2` then only the fields withid `1` and id `2` are going to be selected and included in the response. If the `user_field_names` parameter is provided then instead include should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `include=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `include=My Field,Field with \\\"`.
final orderBy = orderBy_example; // String | Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A). If the `user_field_names` parameter is provided then instead order_by should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `order_by=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `order_by=My Field,Field with \\\"`.
final page = 56; // int | Defines which page of rows should be returned.
final search = search_example; // String | If provided only rows with data that matches the search query are going to be returned.
final searchMode = searchMode_example; // String | If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
final size = 56; // int | Defines how many rows should be returned per page.
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).
final viewId = 56; // int | Includes all the filters and sorts of the provided view.
final leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket = leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket_example; // String | This parameter allows you to request a lookup of field values from a target table through existing link row fields. The parameter name has to be the name of an existing link row field, followed by `__join`. The value should be a list of field names for which we want to lookup additional values. You can provide one or multiple target fields. It is not possible to lookup a value of a link row field in the target table. If `user_field_names` parameter is set, the names of the fields should be user field names. In this case the resulting field names in the output will also be user field names. The used link row field has to be among the requested fields if using the `include` or `exclude` parameters.

try {
    final result = api_instance.listDatabaseTableRows(tableId, exclude, filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType, filters, include, orderBy, page, search, searchMode, size, userFieldNames, viewId, leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->listDatabaseTableRows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Returns the rows of the table related to the provided value. | 
 **exclude** | **String**| All the fields are included in the response by default. You can select a subset of fields by providing the exclude query parameter. If you for example provide the following GET parameter `exclude=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. If the `user_field_names` parameter is provided then instead exclude should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `exclude=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `exclude=My Field,Field with \\\"`. | [optional] 
 **filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket** | **String**| The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**    | [optional] 
 **filterType** | **String**| `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.** | [optional] 
 **filters** | **String**| A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.** | [optional] 
 **include** | **String**| All the fields are included in the response by default. You can select a subset of fields by providing the include query parameter. If you for example provide the following GET parameter `include=field_1,field_2` then only the fields withid `1` and id `2` are going to be selected and included in the response. If the `user_field_names` parameter is provided then instead include should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `include=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `include=My Field,Field with \\\"`. | [optional] 
 **orderBy** | **String**| Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A). If the `user_field_names` parameter is provided then instead order_by should be a comma separated list of the actual field names. For field names with commas you should surround the name with quotes like so: `order_by=My Field,\"Field With , \"`. A backslash can be used to escape field names which contain double quotes like so: `order_by=My Field,Field with \\\"`. | [optional] 
 **page** | **int**| Defines which page of rows should be returned. | [optional] 
 **search** | **String**| If provided only rows with data that matches the search query are going to be returned. | [optional] 
 **searchMode** | **String**| If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour. | [optional] 
 **size** | **int**| Defines how many rows should be returned per page. | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 
 **viewId** | **int**| Includes all the filters and sorts of the provided view. | [optional] 
 **leftCurlyBracketLinkRowFieldRightCurlyBracketJoinEqualLeftCurlyBracketTargetFieldRightCurlyBracketCommaLeftCurlyBracketTargetField2RightCurlyBracket** | **String**| This parameter allows you to request a lookup of field values from a target table through existing link row fields. The parameter name has to be the name of an existing link row field, followed by `__join`. The value should be a list of field names for which we want to lookup additional values. You can provide one or multiple target fields. It is not possible to lookup a value of a link row field in the target table. If `user_field_names` parameter is set, the names of the fields should be user field names. In this case the resulting field names in the output will also be user field names. The used link row field has to be among the requested fields if using the `include` or `exclude` parameters. | [optional] 

### Return type

[**PaginationSerializerExampleRowResponseSerializerWithUserFieldNames**](PaginationSerializerExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveDatabaseTableRow**
> ExampleRowResponseSerializerWithUserFieldNames moveDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, beforeId, sendWebhookEvents, userFieldNames)



Moves the row related to given `row_id` parameter to another position. It is only possible to move the row before another existing row or to the end. If the `before_id` is provided then the row related to the `row_id` parameter is moved before that row. If the `before_id` parameter is not provided, then the row will be moved to the end.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | Moves the row related to the value.
final tableId = 56; // int | Moves the row in the table related to the value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final beforeId = 56; // int | Moves the row related to the given `row_id` before the row related to the provided value. If not provided, then the row will be moved to the end.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123).

try {
    final result = api_instance.moveDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, beforeId, sendWebhookEvents, userFieldNames);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->moveDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| Moves the row related to the value. | 
 **tableId** | **int**| Moves the row in the table related to the value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **beforeId** | **int**| Moves the row related to the given `row_id` before the row related to the provided value. If not provided, then the row will be moved to the end. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause the returned JSON to use the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 

### Return type

[**ExampleRowResponseSerializerWithUserFieldNames**](ExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableRow**
> ExampleRowResponseSerializerWithUserFieldNames updateDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents, userFieldNames, patchedExampleUpdateRowRequestSerializerWithUserFieldNames)



Updates an existing row in the table if the user has access to the related table's workspace. The accepted body fields are depending on the fields that the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. None of the fields are required, if they are not provided the value is not going to be updated. When you want to update a value for the field with id `10`, the key must be named `field_10`. Or if the GET parameter `user_field_names` is provided the key of the field to update must be the name of the field. Multiple different fields to update can be provided in one request. In the examples below you will find all the different field types, the numbers/ids in the example are just there for example purposes, the field_ID must be replaced with the actual id of the field or the name of the field if `user_field_names` is provided.

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
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | Updates the row related to the value.
final tableId = 56; // int | Updates the row in the table related to the value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final sendWebhookEvents = true; // bool | A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true`
final userFieldNames = true; // bool | A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123).
final patchedExampleUpdateRowRequestSerializerWithUserFieldNames = PatchedExampleUpdateRowRequestSerializerWithUserFieldNames(); // PatchedExampleUpdateRowRequestSerializerWithUserFieldNames | 

try {
    final result = api_instance.updateDatabaseTableRow(rowId, tableId, clientSessionId, clientUndoRedoActionGroupId, sendWebhookEvents, userFieldNames, patchedExampleUpdateRowRequestSerializerWithUserFieldNames);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->updateDatabaseTableRow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| Updates the row related to the value. | 
 **tableId** | **int**| Updates the row in the table related to the value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **sendWebhookEvents** | **bool**| A flag query parameter that triggers webhooks after the operation, if set to `y`, `yes`, `true`, `t`, `on`, `1`, `or` left empty. Defaults to `true` | [optional] 
 **userFieldNames** | **bool**| A flag query parameter that, if provided with one of the following values: `y`, `yes`, `true`, `t`, `on`, `1`, or an empty value, will cause this endpoint to expect and return the user-specified field names instead of the internal Baserow field names (e.g., field_123). | [optional] 
 **patchedExampleUpdateRowRequestSerializerWithUserFieldNames** | [**PatchedExampleUpdateRowRequestSerializerWithUserFieldNames**](PatchedExampleUpdateRowRequestSerializerWithUserFieldNames.md)|  | [optional] 

### Return type

[**ExampleRowResponseSerializerWithUserFieldNames**](ExampleRowResponseSerializerWithUserFieldNames.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRowComment**
> RowComment updateRowComment(commentId, tableId)



Update a row comment.  This is a **premium** feature.

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

final api_instance = DatabaseTableRowsApi();
final commentId = 56; // int | The row comment to update.
final tableId = 56; // int | The table the row is in.

try {
    final result = api_instance.updateRowComment(commentId, tableId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->updateRowComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **int**| The row comment to update. | 
 **tableId** | **int**| The table the row is in. | 

### Return type

[**RowComment**](RowComment.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRowCommentNotificationMode**
> updateRowCommentNotificationMode(rowId, tableId, rowCommentsNotificationMode)



Updates the user's notification preferences for comments made on a specified table row.  This is a **premium** feature.

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

final api_instance = DatabaseTableRowsApi();
final rowId = 56; // int | The row on which to manage the comment subscription.
final tableId = 56; // int | The table id where the row is in.
final rowCommentsNotificationMode = RowCommentsNotificationMode(); // RowCommentsNotificationMode | 

try {
    api_instance.updateRowCommentNotificationMode(rowId, tableId, rowCommentsNotificationMode);
} catch (e) {
    print('Exception when calling DatabaseTableRowsApi->updateRowCommentNotificationMode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rowId** | **int**| The row on which to manage the comment subscription. | 
 **tableId** | **int**| The table id where the row is in. | 
 **rowCommentsNotificationMode** | [**RowCommentsNotificationMode**](RowCommentsNotificationMode.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

