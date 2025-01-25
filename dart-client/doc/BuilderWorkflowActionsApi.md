# openapi.api.BuilderWorkflowActionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuilderPageWorkflowAction**](BuilderWorkflowActionsApi.md#createbuilderpageworkflowaction) | **POST** /api/builder/page/{page_id}/workflow_actions/ | 
[**deleteBuilderPageWorkflowAction**](BuilderWorkflowActionsApi.md#deletebuilderpageworkflowaction) | **DELETE** /api/builder/workflow_action/{workflow_action_id}/ | 
[**dispatchBuilderPageWorkflowAction**](BuilderWorkflowActionsApi.md#dispatchbuilderpageworkflowaction) | **POST** /api/builder/workflow_action/{workflow_action_id}/dispatch/ | 
[**listBuilderPageWorkflowActions**](BuilderWorkflowActionsApi.md#listbuilderpageworkflowactions) | **GET** /api/builder/page/{page_id}/workflow_actions/ | 
[**listPublicBuilderPageWorkflowActions**](BuilderWorkflowActionsApi.md#listpublicbuilderpageworkflowactions) | **GET** /api/builder/domains/published/page/{page_id}/workflow_actions/ | 
[**orderBuilderWorkflowActions**](BuilderWorkflowActionsApi.md#orderbuilderworkflowactions) | **POST** /api/builder/page/{page_id}/workflow_actions/order/ | 
[**updateBuilderPageWorkflowAction**](BuilderWorkflowActionsApi.md#updatebuilderpageworkflowaction) | **PATCH** /api/builder/workflow_action/{workflow_action_id}/ | 


# **createBuilderPageWorkflowAction**
> BuilderWorkflowActionTypeBuilderWorkflowAction createBuilderPageWorkflowAction(pageId, clientSessionId, builderWorkflowActionTypeCreateBuilderWorkflowAction)



Creates a new builder workflow action

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

final api_instance = BuilderWorkflowActionsApi();
final pageId = 56; // int | Creates a workflow action for the builder page related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final builderWorkflowActionTypeCreateBuilderWorkflowAction = BuilderWorkflowActionTypeCreateBuilderWorkflowAction(); // BuilderWorkflowActionTypeCreateBuilderWorkflowAction | 

try {
    final result = api_instance.createBuilderPageWorkflowAction(pageId, clientSessionId, builderWorkflowActionTypeCreateBuilderWorkflowAction);
    print(result);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->createBuilderPageWorkflowAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Creates a workflow action for the builder page related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **builderWorkflowActionTypeCreateBuilderWorkflowAction** | [**BuilderWorkflowActionTypeCreateBuilderWorkflowAction**](BuilderWorkflowActionTypeCreateBuilderWorkflowAction.md)|  | [optional] 

### Return type

[**BuilderWorkflowActionTypeBuilderWorkflowAction**](BuilderWorkflowActionTypeBuilderWorkflowAction.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBuilderPageWorkflowAction**
> deleteBuilderPageWorkflowAction(workflowActionId, clientSessionId)



Deletes the workflow action related by the given id.

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

final api_instance = BuilderWorkflowActionsApi();
final workflowActionId = 56; // int | The id of the workflow action
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.deleteBuilderPageWorkflowAction(workflowActionId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->deleteBuilderPageWorkflowAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowActionId** | **int**| The id of the workflow action | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchBuilderPageWorkflowAction**
> dispatchBuilderPageWorkflowAction(workflowActionId, clientSessionId)



Dispatches the service of the related workflow_action and returns the result.

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

final api_instance = BuilderWorkflowActionsApi();
final workflowActionId = 56; // int | The id of the workflow_action you want to call the dispatch for.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.dispatchBuilderPageWorkflowAction(workflowActionId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->dispatchBuilderPageWorkflowAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowActionId** | **int**| The id of the workflow_action you want to call the dispatch for. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBuilderPageWorkflowActions**
> List<BuilderWorkflowActionTypeBuilderWorkflowAction> listBuilderPageWorkflowActions(pageId)



Lists all the workflow actions of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.

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

final api_instance = BuilderWorkflowActionsApi();
final pageId = 56; // int | Returns only the workflow actions of the page related to the provided Id.

try {
    final result = api_instance.listBuilderPageWorkflowActions(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->listBuilderPageWorkflowActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns only the workflow actions of the page related to the provided Id. | 

### Return type

[**List<BuilderWorkflowActionTypeBuilderWorkflowAction>**](BuilderWorkflowActionTypeBuilderWorkflowAction.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicBuilderPageWorkflowActions**
> List<PublicBuilderWorkflowActionTypeBuilderWorkflowAction> listPublicBuilderPageWorkflowActions(pageId)



Lists all the workflow actions with their public accessible data. Some configuration might be omitted for security reasons such as passwords or PII.

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

final api_instance = BuilderWorkflowActionsApi();
final pageId = 56; // int | Returns only the public workflow actions of the page related to the provided Id.

try {
    final result = api_instance.listPublicBuilderPageWorkflowActions(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->listPublicBuilderPageWorkflowActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns only the public workflow actions of the page related to the provided Id. | 

### Return type

[**List<PublicBuilderWorkflowActionTypeBuilderWorkflowAction>**](PublicBuilderWorkflowActionTypeBuilderWorkflowAction.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderBuilderWorkflowActions**
> orderBuilderWorkflowActions(pageId, orderWorkflowActions, clientSessionId)



Apply a new order to the workflow actions of a page

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

final api_instance = BuilderWorkflowActionsApi();
final pageId = 56; // int | The page the workflow actions belong to
final orderWorkflowActions = OrderWorkflowActions(); // OrderWorkflowActions | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.orderBuilderWorkflowActions(pageId, orderWorkflowActions, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->orderBuilderWorkflowActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| The page the workflow actions belong to | 
 **orderWorkflowActions** | [**OrderWorkflowActions**](OrderWorkflowActions.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBuilderPageWorkflowAction**
> BuilderWorkflowActionTypeBuilderWorkflowAction updateBuilderPageWorkflowAction(workflowActionId, clientSessionId, patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions)



Updates an existing builder workflow action.

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

final api_instance = BuilderWorkflowActionsApi();
final workflowActionId = 56; // int | The id of the workflow action
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions = PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions(); // PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions | 

try {
    final result = api_instance.updateBuilderPageWorkflowAction(workflowActionId, clientSessionId, patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions);
    print(result);
} catch (e) {
    print('Exception when calling BuilderWorkflowActionsApi->updateBuilderPageWorkflowAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowActionId** | **int**| The id of the workflow action | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions** | [**PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions**](PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions.md)|  | [optional] 

### Return type

[**BuilderWorkflowActionTypeBuilderWorkflowAction**](BuilderWorkflowActionTypeBuilderWorkflowAction.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

