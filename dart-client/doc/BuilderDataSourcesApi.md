# openapi.api.BuilderDataSourcesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuilderPageDataSource**](BuilderDataSourcesApi.md#createbuilderpagedatasource) | **POST** /api/builder/page/{page_id}/data-sources/ | 
[**deleteBuilderPageDataSource**](BuilderDataSourcesApi.md#deletebuilderpagedatasource) | **DELETE** /api/builder/data-source/{data_source_id}/ | 
[**dispatchBuilderPageDataSource**](BuilderDataSourcesApi.md#dispatchbuilderpagedatasource) | **POST** /api/builder/data-source/{data_source_id}/dispatch/ | 
[**dispatchBuilderPageDataSources**](BuilderDataSourcesApi.md#dispatchbuilderpagedatasources) | **POST** /api/builder/page/{page_id}/dispatch-data-sources/ | 
[**dispatchPublicBuilderPageDataSource**](BuilderDataSourcesApi.md#dispatchpublicbuilderpagedatasource) | **POST** /api/builder/domains/published/data-source/{data_source_id}/dispatch/ | 
[**dispatchPublicBuilderPageDataSources**](BuilderDataSourcesApi.md#dispatchpublicbuilderpagedatasources) | **POST** /api/builder/domains/published/page/{page_id}/dispatch-data-sources/ | 
[**getRecordNamesBuilderPageDataSource**](BuilderDataSourcesApi.md#getrecordnamesbuilderpagedatasource) | **GET** /api/builder/data-source/{data_source_id}/record-names/ | 
[**listBuilderPageDataSources**](BuilderDataSourcesApi.md#listbuilderpagedatasources) | **GET** /api/builder/page/{page_id}/data-sources/ | 
[**listPublicBuilderPageDataSources**](BuilderDataSourcesApi.md#listpublicbuilderpagedatasources) | **GET** /api/builder/domains/published/page/{page_id}/data_sources/ | 
[**moveBuilderPageDataSource**](BuilderDataSourcesApi.md#movebuilderpagedatasource) | **PATCH** /api/builder/data_source/{data_source_id}/move/ | 
[**updateBuilderPageDataSource**](BuilderDataSourcesApi.md#updatebuilderpagedatasource) | **PATCH** /api/builder/data-source/{data_source_id}/ | 


# **createBuilderPageDataSource**
> IntegrationServiceDataSource createBuilderPageDataSource(pageId, clientSessionId, integrationServiceCreateDataSource)



Creates a new builder data_source

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

final api_instance = BuilderDataSourcesApi();
final pageId = 56; // int | Creates a data_source for the builder page related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final integrationServiceCreateDataSource = IntegrationServiceCreateDataSource(); // IntegrationServiceCreateDataSource | 

try {
    final result = api_instance.createBuilderPageDataSource(pageId, clientSessionId, integrationServiceCreateDataSource);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->createBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Creates a data_source for the builder page related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **integrationServiceCreateDataSource** | [**IntegrationServiceCreateDataSource**](IntegrationServiceCreateDataSource.md)|  | [optional] 

### Return type

[**IntegrationServiceDataSource**](IntegrationServiceDataSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBuilderPageDataSource**
> deleteBuilderPageDataSource(dataSourceId, clientSessionId)



Deletes the data_source related by the given id.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.deleteBuilderPageDataSource(dataSourceId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->deleteBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchBuilderPageDataSource**
> dispatchBuilderPageDataSource(dataSourceId, clientSessionId, dispatchDataSourceRequest)



Dispatches the service of the related data_source and returns the result.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source you want to call the dispatch for
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final dispatchDataSourceRequest = DispatchDataSourceRequest(); // DispatchDataSourceRequest | 

try {
    api_instance.dispatchBuilderPageDataSource(dataSourceId, clientSessionId, dispatchDataSourceRequest);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->dispatchBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source you want to call the dispatch for | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **dispatchDataSourceRequest** | [**DispatchDataSourceRequest**](DispatchDataSourceRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchBuilderPageDataSources**
> dispatchBuilderPageDataSources(pageId, clientSessionId)



Dispatches the service of the related page data_sources

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

final api_instance = BuilderDataSourcesApi();
final pageId = 56; // int | The page we want to dispatch the data source for.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.dispatchBuilderPageDataSources(pageId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->dispatchBuilderPageDataSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| The page we want to dispatch the data source for. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchPublicBuilderPageDataSource**
> dispatchPublicBuilderPageDataSource(dataSourceId, clientSessionId, dispatchDataSourceRequest)



Dispatches the service of the related data_source and returns the result.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source you want to call the dispatch for
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final dispatchDataSourceRequest = DispatchDataSourceRequest(); // DispatchDataSourceRequest | 

try {
    api_instance.dispatchPublicBuilderPageDataSource(dataSourceId, clientSessionId, dispatchDataSourceRequest);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->dispatchPublicBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source you want to call the dispatch for | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **dispatchDataSourceRequest** | [**DispatchDataSourceRequest**](DispatchDataSourceRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dispatchPublicBuilderPageDataSources**
> dispatchPublicBuilderPageDataSources(pageId, clientSessionId)



Dispatches the service of the related page data_sources

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

final api_instance = BuilderDataSourcesApi();
final pageId = 56; // int | The page we want to dispatch the data source for.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    api_instance.dispatchPublicBuilderPageDataSources(pageId, clientSessionId);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->dispatchPublicBuilderPageDataSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| The page we want to dispatch the data source for. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecordNamesBuilderPageDataSource**
> Map<String, String> getRecordNamesBuilderPageDataSource(dataSourceId, recordIds)



Find the record names associated with a given list of record ids.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source to find the record names.
final recordIds = recordIds_example; // String | A comma separated list of the record ids to search for.

try {
    final result = api_instance.getRecordNamesBuilderPageDataSource(dataSourceId, recordIds);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->getRecordNamesBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source to find the record names. | 
 **recordIds** | **String**| A comma separated list of the record ids to search for. | [optional] 

### Return type

**Map<String, String>**

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBuilderPageDataSources**
> List<IntegrationServiceDataSource> listBuilderPageDataSources(pageId)



Lists all the data_sources of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.

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

final api_instance = BuilderDataSourcesApi();
final pageId = 56; // int | Returns only the data_sources of the page related to the provided Id.

try {
    final result = api_instance.listBuilderPageDataSources(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->listBuilderPageDataSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns only the data_sources of the page related to the provided Id. | 

### Return type

[**List<IntegrationServiceDataSource>**](IntegrationServiceDataSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPublicBuilderPageDataSources**
> List<IntegrationServicePublicDataSource> listPublicBuilderPageDataSources(pageId)



Lists all the data_sources of the page related to the provided parameter if the builder is public.

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

final api_instance = BuilderDataSourcesApi();
final pageId = 56; // int | Returns only the data_sources of the page related to the provided Id if the related builder is public.

try {
    final result = api_instance.listPublicBuilderPageDataSources(pageId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->listPublicBuilderPageDataSources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**| Returns only the data_sources of the page related to the provided Id if the related builder is public. | 

### Return type

[**List<IntegrationServicePublicDataSource>**](IntegrationServicePublicDataSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveBuilderPageDataSource**
> IntegrationServiceDataSource moveBuilderPageDataSource(dataSourceId, clientSessionId, patchedMoveDataSource)



Moves the data_source in the page before another data_source or at the end of the page if no before data_source is given. The data_sources must belong to the same page.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source to move
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedMoveDataSource = PatchedMoveDataSource(); // PatchedMoveDataSource | 

try {
    final result = api_instance.moveBuilderPageDataSource(dataSourceId, clientSessionId, patchedMoveDataSource);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->moveBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source to move | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedMoveDataSource** | [**PatchedMoveDataSource**](PatchedMoveDataSource.md)|  | [optional] 

### Return type

[**IntegrationServiceDataSource**](IntegrationServiceDataSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBuilderPageDataSource**
> IntegrationServiceDataSource updateBuilderPageDataSource(dataSourceId, clientSessionId, patchedIntegrationServiceUpdateDataSource)



Updates an existing builder data_source.

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

final api_instance = BuilderDataSourcesApi();
final dataSourceId = 56; // int | The id of the data_source
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedIntegrationServiceUpdateDataSource = PatchedIntegrationServiceUpdateDataSource(); // PatchedIntegrationServiceUpdateDataSource | 

try {
    final result = api_instance.updateBuilderPageDataSource(dataSourceId, clientSessionId, patchedIntegrationServiceUpdateDataSource);
    print(result);
} catch (e) {
    print('Exception when calling BuilderDataSourcesApi->updateBuilderPageDataSource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSourceId** | **int**| The id of the data_source | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedIntegrationServiceUpdateDataSource** | [**PatchedIntegrationServiceUpdateDataSource**](PatchedIntegrationServiceUpdateDataSource.md)|  | [optional] 

### Return type

[**IntegrationServiceDataSource**](IntegrationServiceDataSource.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

