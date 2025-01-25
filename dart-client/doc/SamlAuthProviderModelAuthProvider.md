# openapi.model.SamlAuthProviderModelAuthProvider

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**type** | **String** | The type of the related field. | [readonly] 
**domain** | **String** | The email domain registered with this provider. | 
**enabled** | **bool** | Whether the provider is enabled or not. | [optional] 
**metadata** | **String** | The SAML metadata XML provided by the IdP. | 
**isVerified** | **bool** | Whether or not a user sign in correctly with this SAML provider. | [readonly] 
**emailAttrKey** | **String** | The key in the SAML response that contains the email address of the user. | [optional] 
**firstNameAttrKey** | **String** | The key in the SAML response that contains the first name of the user. | [optional] 
**lastNameAttrKey** | **String** | The key in the SAML response that contains the last name of the user. If this is not set, the first name attr will be used as full name. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


