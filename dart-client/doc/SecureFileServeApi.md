# openapi.api.SecureFileServeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**secureFileServeDownload**](SecureFileServeApi.md#securefileservedownload) | **GET** /api/files/{signed_data} | 


# **secureFileServeDownload**
> Object secureFileServeDownload(signedData)



Downloads a file using the backend and the secure file serve feature. The signed data is extracted from the URL and used to verify if the user has access to the file. If the permissions check passes and the file exists, the file is served to the user.  This is a **enterprise** feature.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SecureFileServeApi();
final signedData = signedData_example; // String | 

try {
    final result = api_instance.secureFileServeDownload(signedData);
    print(result);
} catch (e) {
    print('Exception when calling SecureFileServeApi->secureFileServeDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signedData** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

