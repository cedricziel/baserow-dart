# openapi.api.BuilderThemeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateBuilderTheme**](BuilderThemeApi.md#updatebuildertheme) | **PATCH** /api/builder/{builder_id}/theme/ | 


# **updateBuilderTheme**
> CombinedThemeConfigBlocks updateBuilderTheme(builderId, clientSessionId, patchedCombinedThemeConfigBlocks)



Updates the theme properties for the provided id.

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

final api_instance = BuilderThemeApi();
final builderId = 56; // int | Updates the theme for the application builder related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final patchedCombinedThemeConfigBlocks = PatchedCombinedThemeConfigBlocks(); // PatchedCombinedThemeConfigBlocks | 

try {
    final result = api_instance.updateBuilderTheme(builderId, clientSessionId, patchedCombinedThemeConfigBlocks);
    print(result);
} catch (e) {
    print('Exception when calling BuilderThemeApi->updateBuilderTheme: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **builderId** | **int**| Updates the theme for the application builder related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **patchedCombinedThemeConfigBlocks** | [**PatchedCombinedThemeConfigBlocks**](PatchedCombinedThemeConfigBlocks.md)|  | [optional] 

### Return type

[**CombinedThemeConfigBlocks**](CombinedThemeConfigBlocks.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

