# openapi.api.BuilderElementsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuilderPageElement**](BuilderElementsApi.md#createbuilderpageelement) | **POST** /api/builder/page/{page_id}/elements/ | 
[**deleteBuilderPageElement**](BuilderElementsApi.md#deletebuilderpageelement) | **DELETE** /api/builder/element/{element_id}/ | 
[**duplicateBuilderPageElement**](BuilderElementsApi.md#duplicatebuilderpageelement) | **POST** /api/builder/element/{element_id}/duplicate/ | 
[**listBuilderPageElements**](BuilderElementsApi.md#listbuilderpageelements) | **GET** /api/builder/page/{page_id}/elements/ | 
[**listPublicBuilderPageElements**](BuilderElementsApi.md#listpublicbuilderpageelements) | **GET** /api/builder/domains/published/page/{page_id}/elements/ | 
[**moveBuilderPageElement**](BuilderElementsApi.md#movebuilderpageelement) | **PATCH** /api/builder/element/{element_id}/move/ | 
[**updateBuilderPageElement**](BuilderElementsApi.md#updatebuilderpageelement) | **PATCH** /api/builder/element/{element_id}/ | 


# **createBuilderPageElement**
> ElementTypeElement createBuilderPageElement(pageId, clientSessionId, elementTypeCreateElement)



Creates a new builder element

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

final api_instance = BuilderElementsApi();
final pageId = 56; // int | Creates an element for the builder page related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final elementTypeCreateElement = ElementTypeCreateElement(); // ElementTypeCreateElement | 

try {
    final result = api_instance.createBuilderPageElement(pageId, clientSessionId, elementTypeCreateElement);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->createBuilderPageElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Creates an element for the builder page related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **elementTypeCreateElement** | [**ElementTypeCreateElement**](ElementTypeCreateElement.md)|  | [optional] 

### Return type

[**ElementTypeElement**](ElementTypeElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBuilderPageElement**
> deleteBuilderPageElement(elementId, clientSessionId)



Deletes the element related by the given id.

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

final api_instance = BuilderElementsApi();
final elementId = 56; // int | The id of the element
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.deleteBuilderPageElement(elementId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderElementsApi->deleteBuilderPageElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **elementId** | **int**| The id of the element | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **duplicateBuilderPageElement**
> DuplicateElement duplicateBuilderPageElement(elementId, clientSessionId)



Duplicates an element and all of the elements children and the associated workflow actions as well.

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

final api_instance = BuilderElementsApi();
final elementId = 56; // int | The id of the element to duplicate
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    final result = api_instance.duplicateBuilderPageElement(elementId, clientSessionId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->duplicateBuilderPageElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **elementId** | **int**| The id of the element to duplicate | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

[**DuplicateElement**](DuplicateElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBuilderPageElements**
> List<ElementTypeElement> listBuilderPageElements(pageId)



Lists all the elements of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.

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

final api_instance = BuilderElementsApi();
final pageId = 56; // int | Returns only the elements of the page related to the provided Id.

try {
    final result = api_instance.listBuilderPageElements(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->listBuilderPageElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns only the elements of the page related to the provided Id. | 

### Return type

[**List<ElementTypeElement>**](ElementTypeElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicBuilderPageElements**
> List<ElementTypePublicElement> listPublicBuilderPageElements(pageId)



Lists all the elements of the page related to the provided parameter. If the user is Anonymous, the page must belong to a published builder instance to being accessible.

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

final api_instance = BuilderElementsApi();
final pageId = 56; // int | Returns the elements of the page related to the provided Id.

try {
    final result = api_instance.listPublicBuilderPageElements(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->listPublicBuilderPageElements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns the elements of the page related to the provided Id. | 

### Return type

[**List<ElementTypePublicElement>**](ElementTypePublicElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveBuilderPageElement**
> ElementTypeElement moveBuilderPageElement(elementId, clientSessionId, patchedMoveElement)



Moves the element in the page before another element or at the end of the page if no before element is given. The elements must belong to the same page.

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

final api_instance = BuilderElementsApi();
final elementId = 56; // int | The id of the element to move
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedMoveElement = PatchedMoveElement(); // PatchedMoveElement | 

try {
    final result = api_instance.moveBuilderPageElement(elementId, clientSessionId, patchedMoveElement);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->moveBuilderPageElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **elementId** | **int**| The id of the element to move | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedMoveElement** | [**PatchedMoveElement**](PatchedMoveElement.md)|  | [optional] 

### Return type

[**ElementTypeElement**](ElementTypeElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBuilderPageElement**
> ElementTypeElement updateBuilderPageElement(elementId, clientSessionId, patchedElementTypeUpdateElement)



Updates an existing builder element.

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

final api_instance = BuilderElementsApi();
final elementId = 56; // int | The id of the element
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedElementTypeUpdateElement = PatchedElementTypeUpdateElement(); // PatchedElementTypeUpdateElement | 

try {
    final result = api_instance.updateBuilderPageElement(elementId, clientSessionId, patchedElementTypeUpdateElement);
    print(result);
} catch (e) {
    print('Exception when calling BuilderElementsApi->updateBuilderPageElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **elementId** | **int**| The id of the element | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedElementTypeUpdateElement** | [**PatchedElementTypeUpdateElement**](PatchedElementTypeUpdateElement.md)|  | [optional] 

### Return type

[**ElementTypeElement**](ElementTypeElement.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

