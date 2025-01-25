# openapi.api.DatabaseTableViewDecorationsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDatabaseTableViewDecoration**](DatabaseTableViewDecorationsApi.md#createdatabasetableviewdecoration) | **POST** /api/database/views/{view_id}/decorations/ | 
[**deleteDatabaseTableViewDecoration**](DatabaseTableViewDecorationsApi.md#deletedatabasetableviewdecoration) | **DELETE** /api/database/views/decoration/{view_decoration_id}/ | 
[**getDatabaseTableViewDecoration**](DatabaseTableViewDecorationsApi.md#getdatabasetableviewdecoration) | **GET** /api/database/views/decoration/{view_decoration_id}/ | 
[**listDatabaseTableViewDecorations**](DatabaseTableViewDecorationsApi.md#listdatabasetableviewdecorations) | **GET** /api/database/views/{view_id}/decorations/ | 
[**updateDatabaseTableViewDecoration**](DatabaseTableViewDecorationsApi.md#updatedatabasetableviewdecoration) | **PATCH** /api/database/views/decoration/{view_decoration_id}/ | 


# **createDatabaseTableViewDecoration**
> DecoratorValueProviderTypeViewDecoration createDatabaseTableViewDecoration(viewId, clientSessionId, clientUndoRedoActionGroupId, decoratorValueProviderTypeCreateViewDecoration)



Creates a new decoration for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewDecorationsApi();
final viewId = 56; // int | Creates a decoration for the view related to the given value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final decoratorValueProviderTypeCreateViewDecoration = DecoratorValueProviderTypeCreateViewDecoration(); // DecoratorValueProviderTypeCreateViewDecoration | 

try {
    final result = api_instance.createDatabaseTableViewDecoration(viewId, clientSessionId, clientUndoRedoActionGroupId, decoratorValueProviderTypeCreateViewDecoration);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewDecorationsApi->createDatabaseTableViewDecoration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Creates a decoration for the view related to the given value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **decoratorValueProviderTypeCreateViewDecoration** | [**DecoratorValueProviderTypeCreateViewDecoration**](DecoratorValueProviderTypeCreateViewDecoration.md)|  | [optional] 

### Return type

[**DecoratorValueProviderTypeViewDecoration**](DecoratorValueProviderTypeViewDecoration.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableViewDecoration**
> deleteDatabaseTableViewDecoration(viewDecorationId, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing decoration if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewDecorationsApi();
final viewDecorationId = 56; // int | Deletes the decoration related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.deleteDatabaseTableViewDecoration(viewDecorationId, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewDecorationsApi->deleteDatabaseTableViewDecoration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewDecorationId** | **int**| Deletes the decoration related to the provided value. | 
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

# **getDatabaseTableViewDecoration**
> DecoratorValueProviderTypeViewDecoration getDatabaseTableViewDecoration(viewDecorationId)



Returns the existing view decoration if the current user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewDecorationsApi();
final viewDecorationId = 56; // int | Returns the view decoration related to the provided id.

try {
    final result = api_instance.getDatabaseTableViewDecoration(viewDecorationId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewDecorationsApi->getDatabaseTableViewDecoration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewDecorationId** | **int**| Returns the view decoration related to the provided id. | 

### Return type

[**DecoratorValueProviderTypeViewDecoration**](DecoratorValueProviderTypeViewDecoration.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableViewDecorations**
> List<DecoratorValueProviderTypeViewDecoration> listDatabaseTableViewDecorations(viewId)



Lists all decorations of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple decorations. View decorators can be used to decorate rows. This can, for example, be used to change the border or background color of a row if it matches certain conditions.

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

final api_instance = DatabaseTableViewDecorationsApi();
final viewId = 56; // int | Returns only decoration of the view given to the provided value.

try {
    final result = api_instance.listDatabaseTableViewDecorations(viewId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewDecorationsApi->listDatabaseTableViewDecorations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Returns only decoration of the view given to the provided value. | 

### Return type

[**List<DecoratorValueProviderTypeViewDecoration>**](DecoratorValueProviderTypeViewDecoration.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableViewDecoration**
> DecoratorValueProviderTypeViewDecoration updateDatabaseTableViewDecoration(viewDecorationId, clientSessionId, clientUndoRedoActionGroupId, patchedDecoratorValueProviderTypeUpdateViewDecoration)



Updates the existing decoration if the authorized user has access to the related database's workspace.

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

final api_instance = DatabaseTableViewDecorationsApi();
final viewDecorationId = 56; // int | Updates the view decoration related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedDecoratorValueProviderTypeUpdateViewDecoration = PatchedDecoratorValueProviderTypeUpdateViewDecoration(); // PatchedDecoratorValueProviderTypeUpdateViewDecoration | 

try {
    final result = api_instance.updateDatabaseTableViewDecoration(viewDecorationId, clientSessionId, clientUndoRedoActionGroupId, patchedDecoratorValueProviderTypeUpdateViewDecoration);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewDecorationsApi->updateDatabaseTableViewDecoration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewDecorationId** | **int**| Updates the view decoration related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedDecoratorValueProviderTypeUpdateViewDecoration** | [**PatchedDecoratorValueProviderTypeUpdateViewDecoration**](PatchedDecoratorValueProviderTypeUpdateViewDecoration.md)|  | [optional] 

### Return type

[**DecoratorValueProviderTypeViewDecoration**](DecoratorValueProviderTypeViewDecoration.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

