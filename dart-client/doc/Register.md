# openapi.model.Register

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**email** | **String** | The email address is also going to be the username. | 
**password** | **String** |  | 
**language** | **String** | An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB. | [optional] [default to 'en']
**authenticate** | **bool** | Indicates whether an authentication JWT should be generated and be included in the response. | [optional] [default to false]
**workspaceInvitationToken** | **String** | If provided and valid, the user accepts the workspace invitation and will have access to the workspace after signing up. | [optional] 
**templateId** | **int** | The id of the template that must be installed after creating the account. This only works if the `workspace_invitation_token` param is not provided. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


