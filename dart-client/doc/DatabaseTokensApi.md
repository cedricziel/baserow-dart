# openapi.api.DatabaseTokensApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkDatabaseToken**](DatabaseTokensApi.md#checkdatabasetoken) | **GET** /api/database/tokens/check/ | 
[**createDatabaseToken**](DatabaseTokensApi.md#createdatabasetoken) | **POST** /api/database/tokens/ | 
[**deleteDatabaseToken**](DatabaseTokensApi.md#deletedatabasetoken) | **DELETE** /api/database/tokens/{token_id}/ | 
[**getDatabaseToken**](DatabaseTokensApi.md#getdatabasetoken) | **GET** /api/database/tokens/{token_id}/ | 
[**listDatabaseTokens**](DatabaseTokensApi.md#listdatabasetokens) | **GET** /api/database/tokens/ | 
[**updateDatabaseToken**](DatabaseTokensApi.md#updatedatabasetoken) | **PATCH** /api/database/tokens/{token_id}/ | 


# **checkDatabaseToken**
> checkDatabaseToken()



This endpoint check be used to check if the provided personal API token is valid. If returns a `200` response if so and a `403` is not. This can be used by integrations like Zapier or n8n to test if a token is valid.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTokensApi();

try {
    api_instance.checkDatabaseToken();
} catch (e) {
    print('Exception when calling DatabaseTokensApi->checkDatabaseToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatabaseToken**
> Token createDatabaseToken(tokenCreate)



Creates a new database token for a given workspace and for the authorized user.

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

final api_instance = DatabaseTokensApi();
final tokenCreate = TokenCreate(); // TokenCreate | 

try {
    final result = api_instance.createDatabaseToken(tokenCreate);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTokensApi->createDatabaseToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenCreate** | [**TokenCreate**](TokenCreate.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseToken**
> deleteDatabaseToken(tokenId)



Deletes the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.

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

final api_instance = DatabaseTokensApi();
final tokenId = 56; // int | Deletes the database token related to the provided value.

try {
    api_instance.deleteDatabaseToken(tokenId);
} catch (e) {
    print('Exception when calling DatabaseTokensApi->deleteDatabaseToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **int**| Deletes the database token related to the provided value. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseToken**
> Token getDatabaseToken(tokenId)



Returns the requested database token if it is owned by the authorized user andif the user has access to the related workspace.

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

final api_instance = DatabaseTokensApi();
final tokenId = 56; // int | Returns the database token related to the provided value.

try {
    final result = api_instance.getDatabaseToken(tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTokensApi->getDatabaseToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **int**| Returns the database token related to the provided value. | 

### Return type

[**Token**](Token.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTokens**
> List<Token> listDatabaseTokens()



Lists all the database tokens that belong to the authorized user. A token can be used to create, read, update and delete rows in the tables of the token's workspace. It only works on the tables if the token has the correct permissions. The **Database table rows** endpoints can be used for these operations.

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

final api_instance = DatabaseTokensApi();

try {
    final result = api_instance.listDatabaseTokens();
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTokensApi->listDatabaseTokens: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Token>**](Token.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseToken**
> Token updateDatabaseToken(tokenId, patchedTokenUpdate)



Updates the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.

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

final api_instance = DatabaseTokensApi();
final tokenId = 56; // int | Updates the database token related to the provided value.
final patchedTokenUpdate = PatchedTokenUpdate(); // PatchedTokenUpdate | 

try {
    final result = api_instance.updateDatabaseToken(tokenId, patchedTokenUpdate);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTokensApi->updateDatabaseToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenId** | **int**| Updates the database token related to the provided value. | 
 **patchedTokenUpdate** | [**PatchedTokenUpdate**](PatchedTokenUpdate.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

