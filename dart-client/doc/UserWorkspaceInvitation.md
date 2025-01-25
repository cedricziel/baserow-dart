# openapi.model.UserWorkspaceInvitation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**invitedBy** | **String** |  | [readonly] 
**workspace** | **String** |  | [readonly] 
**email** | **String** | The email address of the user that the invitation is meant for. Only a user with that email address can accept it. | 
**message** | **String** | An optional message that the invitor can provide. This will be visible to the receiver of the invitation. | [readonly] 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**emailExists** | **bool** |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


