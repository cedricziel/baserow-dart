# openapi.api.DatabaseTableWebhooksApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDatabaseTableWebhook**](DatabaseTableWebhooksApi.md#createdatabasetablewebhook) | **POST** /api/database/webhooks/table/{table_id}/ | 
[**deleteDatabaseTableWebhook**](DatabaseTableWebhooksApi.md#deletedatabasetablewebhook) | **DELETE** /api/database/webhooks/{webhook_id}/ | 
[**getDatabaseTableWebhook**](DatabaseTableWebhooksApi.md#getdatabasetablewebhook) | **GET** /api/database/webhooks/{webhook_id}/ | 
[**listDatabaseTableWebhooks**](DatabaseTableWebhooksApi.md#listdatabasetablewebhooks) | **GET** /api/database/webhooks/table/{table_id}/ | 
[**testCallDatabaseTableWebhook**](DatabaseTableWebhooksApi.md#testcalldatabasetablewebhook) | **POST** /api/database/webhooks/table/{table_id}/test-call/ | 
[**updateDatabaseTableWebhook**](DatabaseTableWebhooksApi.md#updatedatabasetablewebhook) | **PATCH** /api/database/webhooks/{webhook_id}/ | 


# **createDatabaseTableWebhook**
> TableWebhook createDatabaseTableWebhook(tableId, tableWebhookCreateRequest)



Creates a new webhook for the table related to the provided `table_id` parameter if the authorized user has access to the related database workspace.

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

final api_instance = DatabaseTableWebhooksApi();
final tableId = 56; // int | Creates a webhook for the table related to the provided value.
final tableWebhookCreateRequest = TableWebhookCreateRequest(); // TableWebhookCreateRequest | 

try {
    final result = api_instance.createDatabaseTableWebhook(tableId, tableWebhookCreateRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->createDatabaseTableWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Creates a webhook for the table related to the provided value. | 
 **tableWebhookCreateRequest** | [**TableWebhookCreateRequest**](TableWebhookCreateRequest.md)|  | 

### Return type

[**TableWebhook**](TableWebhook.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableWebhook**
> deleteDatabaseTableWebhook(webhookId)



Deletes the existing webhook if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableWebhooksApi();
final webhookId = 56; // int | Deletes the webhook related to the provided value.

try {
    api_instance.deleteDatabaseTableWebhook(webhookId);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->deleteDatabaseTableWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **int**| Deletes the webhook related to the provided value. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableWebhook**
> TableWebhook getDatabaseTableWebhook(webhookId)



Returns the existing webhook if the authorized user has access to the related database workspace.

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

final api_instance = DatabaseTableWebhooksApi();
final webhookId = 56; // int | Returns the webhook related to the provided value.

try {
    final result = api_instance.getDatabaseTableWebhook(webhookId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->getDatabaseTableWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **int**| Returns the webhook related to the provided value. | 

### Return type

[**TableWebhook**](TableWebhook.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableWebhooks**
> List<TableWebhook> listDatabaseTableWebhooks(tableId)



Lists all webhooks of the table related to the provided `table_id` if the user has access to the related database workspace.

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

final api_instance = DatabaseTableWebhooksApi();
final tableId = 56; // int | Returns only webhooks of the table related to this value.

try {
    final result = api_instance.listDatabaseTableWebhooks(tableId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->listDatabaseTableWebhooks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Returns only webhooks of the table related to this value. | 

### Return type

[**List<TableWebhook>**](TableWebhook.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testCallDatabaseTableWebhook**
> TableWebhookTestCallResponse testCallDatabaseTableWebhook(tableId, tableWebhookTestCallRequest)



This endpoint triggers a test call based on the provided data if the user has access to the workspace related to the table. The test call will be made immediately and a copy of the request, response and status will be included in the response.

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

final api_instance = DatabaseTableWebhooksApi();
final tableId = 56; // int | The id of the table that must be tested.
final tableWebhookTestCallRequest = TableWebhookTestCallRequest(); // TableWebhookTestCallRequest | 

try {
    final result = api_instance.testCallDatabaseTableWebhook(tableId, tableWebhookTestCallRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->testCallDatabaseTableWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| The id of the table that must be tested. | 
 **tableWebhookTestCallRequest** | [**TableWebhookTestCallRequest**](TableWebhookTestCallRequest.md)|  | 

### Return type

[**TableWebhookTestCallResponse**](TableWebhookTestCallResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableWebhook**
> TableWebhook updateDatabaseTableWebhook(webhookId, patchedTableWebhookUpdateRequest)



Updates the existing view if the authorized user has access to the related database workspace.

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

final api_instance = DatabaseTableWebhooksApi();
final webhookId = 56; // int | Updates the webhook related to the provided value.
final patchedTableWebhookUpdateRequest = PatchedTableWebhookUpdateRequest(); // PatchedTableWebhookUpdateRequest | 

try {
    final result = api_instance.updateDatabaseTableWebhook(webhookId, patchedTableWebhookUpdateRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableWebhooksApi->updateDatabaseTableWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookId** | **int**| Updates the webhook related to the provided value. | 
 **patchedTableWebhookUpdateRequest** | [**PatchedTableWebhookUpdateRequest**](PatchedTableWebhookUpdateRequest.md)|  | [optional] 

### Return type

[**TableWebhook**](TableWebhook.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

