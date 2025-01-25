# openapi.api.TemplatesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**installTemplate**](TemplatesApi.md#installtemplate) | **POST** /api/templates/install/{workspace_id}/{template_id}/ | 
[**installTemplateAsync**](TemplatesApi.md#installtemplateasync) | **POST** /api/templates/install/{workspace_id}/{template_id}/async/ | 
[**listTemplates**](TemplatesApi.md#listtemplates) | **GET** /api/templates/ | 


# **installTemplate**
> List<ApplicationApplication> installTemplate(templateId, workspaceId, clientSessionId, clientUndoRedoActionGroupId)



(Deprecated) Installs the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.

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

final api_instance = TemplatesApi();
final templateId = 56; // int | The id related to the template that must be installed.
final workspaceId = 56; // int | The id related to the workspace where the template applications must be installed into.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.installTemplate(templateId, workspaceId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling TemplatesApi->installTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **int**| The id related to the template that must be installed. | 
 **workspaceId** | **int**| The id related to the workspace where the template applications must be installed into. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**List<ApplicationApplication>**](ApplicationApplication.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installTemplateAsync**
> InstallTemplateJobTypeResponse installTemplateAsync(templateId, workspaceId, clientSessionId, clientUndoRedoActionGroupId)



Start an async job to install the applications of the given template into the given workspace if the user has access to that workspace. The response contains those newly created applications.

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

final api_instance = TemplatesApi();
final templateId = 56; // int | The id related to the template that must be installed.
final workspaceId = 56; // int | The id related to the workspace where the template applications must be installed into.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.installTemplateAsync(templateId, workspaceId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling TemplatesApi->installTemplateAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateId** | **int**| The id related to the template that must be installed. | 
 **workspaceId** | **int**| The id related to the workspace where the template applications must be installed into. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**InstallTemplateJobTypeResponse**](InstallTemplateJobTypeResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTemplates**
> List<TemplateCategories> listTemplates()



Lists all the template categories and the related templates that are in that category. The template's `workspace_id` can be used for previewing purposes because that workspace contains the applications that are in the template. All the `get` and `list` endpoints related to that workspace are publicly accessible.

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

final api_instance = TemplatesApi();

try {
    final result = api_instance.listTemplates();
    print(result);
} catch (e) {
    print('Exception when calling TemplatesApi->listTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TemplateCategories>**](TemplateCategories.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

