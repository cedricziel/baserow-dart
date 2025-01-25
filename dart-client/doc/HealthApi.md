# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**celeryQueueSizeCheck**](HealthApi.md#celeryqueuesizecheck) | **GET** /api/_health/celery-queue/ | 
[**emailTester**](HealthApi.md#emailtester) | **POST** /api/_health/email/ | 
[**fullHealthCheck**](HealthApi.md#fullhealthcheck) | **GET** /api/_health/full/ | 


# **celeryQueueSizeCheck**
> celeryQueueSizeCheck(queue)



Health check endpoint to check if the the celery and/or export celery queue has  exceeded the maximum healthy size. Responds with `200` if there there are less than 10 in all queues provided. Otherwise responds with a `503`.

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

final api_instance = HealthApi();
final queue = queue_example; // String | The name of the queues to check. Can be provided multiple times. Accepts either `celery` or `export`.

try {
    api_instance.celeryQueueSizeCheck(queue);
} catch (e) {
    print('Exception when calling HealthApi->celeryQueueSizeCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queue** | **String**| The name of the queues to check. Can be provided multiple times. Accepts either `celery` or `export`. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailTester**
> EmailTesterResponse emailTester(emailTesterRequest)



Sends a test email to the provided email address. Useful for testing Baserow's email configuration as errors are clearly returned.

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

final api_instance = HealthApi();
final emailTesterRequest = EmailTesterRequest(); // EmailTesterRequest | 

try {
    final result = api_instance.emailTester(emailTesterRequest);
    print(result);
} catch (e) {
    print('Exception when calling HealthApi->emailTester: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailTesterRequest** | [**EmailTesterRequest**](EmailTesterRequest.md)|  | 

### Return type

[**EmailTesterResponse**](EmailTesterResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fullHealthCheck**
> FullHealthCheck fullHealthCheck()



Runs a full health check testing as many services and systems as possible. These health checks can be expensive operations such as writing files to storage etc.

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

final api_instance = HealthApi();

try {
    final result = api_instance.fullHealthCheck();
    print(result);
} catch (e) {
    print('Exception when calling HealthApi->fullHealthCheck: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FullHealthCheck**](FullHealthCheck.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

