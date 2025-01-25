# openapi.model.CreateUser200Response

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | [**AdminImpersonateUser200ResponseUser**](AdminImpersonateUser200ResponseUser.md) |  | [optional] 
**token** | **String** | Deprecated. Use the `access_token` instead. | [optional] 
**accessToken** | **String** | 'access_token' can be used to authorize for other endpoints that require authorization. This token will be valid for 10 minutes. | [optional] 
**refreshToken** | **String** | 'refresh_token' can be used to get a new valid 'access_token'. This token will be valid for 168 hours. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


