# openapi.model.AppAuthProviderBaseAppAuthProvider

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**Type622Enum**](Type622Enum.md) | The type of the app_auth_provider.  * `local_baserow_password` - local_baserow_password * `saml` - saml | 
**userSourceId** | **int** |  | [readonly] 
**domain** | **String** | The email domain registered with this provider. | [optional] 
**passwordFieldId** | **int** | The id of the field to use as password for the user account. | [optional] 
**metadata** | **String** | The SAML metadata XML provided by the IdP. | 
**isVerified** | **bool** | Whether or not a user sign in correctly with this SAML provider. | [readonly] 
**emailAttrKey** | **String** | The key in the SAML response that contains the email address of the user. | [optional] 
**firstNameAttrKey** | **String** | The key in the SAML response that contains the first name of the user. | [optional] 
**lastNameAttrKey** | **String** | The key in the SAML response that contains the last name of the user. If this is not set, the first name attr will be used as full name. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


