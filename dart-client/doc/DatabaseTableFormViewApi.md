# openapi.api.DatabaseTableFormViewApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMetaDatabaseTableFormView**](DatabaseTableFormViewApi.md#getmetadatabasetableformview) | **GET** /api/database/views/form/{slug}/submit/ | 
[**submitDatabaseTableFormView**](DatabaseTableFormViewApi.md#submitdatabasetableformview) | **POST** /api/database/views/form/{slug}/submit/ | 
[**uploadFileFormView**](DatabaseTableFormViewApi.md#uploadfileformview) | **POST** /api/database/views/form/{slug}/upload-file/ | 


# **getMetaDatabaseTableFormView**
> PublicFormView getMetaDatabaseTableFormView(slug)



Returns the metadata related to the form view if the form is publicly shared or if the user has access to the related workspace. This data can be used to construct a form with the right fields.

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

final api_instance = DatabaseTableFormViewApi();
final slug = slug_example; // String | The slug related to the form form.

try {
    final result = api_instance.getMetaDatabaseTableFormView(slug);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFormViewApi->getMetaDatabaseTableFormView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug related to the form form. | 

### Return type

[**PublicFormView**](PublicFormView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitDatabaseTableFormView**
> FormViewSubmitted submitDatabaseTableFormView(slug, exampleRowRequest)



Submits the form if the form is publicly shared or if the user has access to the related workspace. The provided data will be validated based on the fields that are in the form and the rules per field. If valid, a new row will be created in the table.

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

final api_instance = DatabaseTableFormViewApi();
final slug = slug_example; // String | The slug related to the form.
final exampleRowRequest = ExampleRowRequest(); // ExampleRowRequest | 

try {
    final result = api_instance.submitDatabaseTableFormView(slug, exampleRowRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFormViewApi->submitDatabaseTableFormView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug related to the form. | 
 **exampleRowRequest** | [**ExampleRowRequest**](ExampleRowRequest.md)|  | [optional] 

### Return type

[**FormViewSubmitted**](FormViewSubmitted.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFileFormView**
> UserFile uploadFileFormView(slug)



Uploads a file anonymously to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.

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

final api_instance = DatabaseTableFormViewApi();
final slug = slug_example; // String | Submits files only if the view with the provided slughas a public file field.

try {
    final result = api_instance.uploadFileFormView(slug);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFormViewApi->uploadFileFormView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| Submits files only if the view with the provided slughas a public file field. | 

### Return type

[**UserFile**](UserFile.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

