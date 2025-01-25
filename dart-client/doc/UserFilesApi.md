# openapi.api.UserFilesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadFile**](UserFilesApi.md#uploadfile) | **POST** /api/user-files/upload-file/ | 
[**uploadViaUrl**](UserFilesApi.md#uploadviaurl) | **POST** /api/user-files/upload-via-url/ | 


# **uploadFile**
> UserFile uploadFile()



Uploads a file to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.

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

final api_instance = UserFilesApi();

try {
    final result = api_instance.uploadFile();
    print(result);
} catch (e) {
    print('Exception when calling UserFilesApi->uploadFile: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserFile**](UserFile.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadViaUrl**
> UserFile uploadViaUrl(userFileUploadViaURLRequest)



Uploads a file to Baserow by downloading it from the provided URL.

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

final api_instance = UserFilesApi();
final userFileUploadViaURLRequest = UserFileUploadViaURLRequest(); // UserFileUploadViaURLRequest | 

try {
    final result = api_instance.uploadViaUrl(userFileUploadViaURLRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserFilesApi->uploadViaUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userFileUploadViaURLRequest** | [**UserFileUploadViaURLRequest**](UserFileUploadViaURLRequest.md)|  | 

### Return type

[**UserFile**](UserFile.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

