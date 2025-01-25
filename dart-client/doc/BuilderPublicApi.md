# openapi.api.BuilderPublicApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPublicBuilderByDomainName**](BuilderPublicApi.md#getpublicbuilderbydomainname) | **GET** /api/builder/domains/published/by_name/{domain_name}/ | 
[**getPublicBuilderById**](BuilderPublicApi.md#getpublicbuilderbyid) | **GET** /api/builder/domains/published/by_id/{builder_id}/ | 


# **getPublicBuilderByDomainName**
> PublicBuilder getPublicBuilderByDomainName(domainName)



Returns the public serialized version of the builder for the given domain name and its pages .

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

final api_instance = BuilderPublicApi();
final domainName = domainName_example; // String | Returns the builder published for the given domain name.

try {
    final result = api_instance.getPublicBuilderByDomainName(domainName);
    print(result);
} catch (e) {
    print('Exception when calling BuilderPublicApi->getPublicBuilderByDomainName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainName** | **String**| Returns the builder published for the given domain name. | 

### Return type

[**PublicBuilder**](PublicBuilder.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicBuilderById**
> PublicBuilder getPublicBuilderById(builderId)



Returns the public serialized version of the builder and its pages for the given builder id.

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

final api_instance = BuilderPublicApi();
final builderId = 56; // int | Returns the builder related to the provided Id and its pages.

try {
    final result = api_instance.getPublicBuilderById(builderId);
    print(result);
} catch (e) {
    print('Exception when calling BuilderPublicApi->getPublicBuilderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **builderId** | **int**| Returns the builder related to the provided Id and its pages. | 

### Return type

[**PublicBuilder**](PublicBuilder.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

