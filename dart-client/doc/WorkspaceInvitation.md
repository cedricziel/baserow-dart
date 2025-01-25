# openapi.model.WorkspaceInvitation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**workspace** | **int** | The workspace that the user will get access to once the invitation is accepted. | 
**email** | **String** | The email address of the user that the invitation is meant for. Only a user with that email address can accept it. | 
**permissions** | **String** | The permissions that the user is going to get within the workspace after accepting the invitation. | [optional] 
**message** | **String** | An optional message that the invitor can provide. This will be visible to the receiver of the invitation. | [optional] 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


