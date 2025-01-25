# openapi.model.WorkspaceUser

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** | User defined name. | [readonly] 
**email** | **String** | User email. | [readonly] 
**workspace** | **int** | The workspace that the user has access to. | 
**permissions** | **String** | The permissions that the user has within the workspace. | [optional] 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**userId** | **int** | The user that has access to the workspace. | [readonly] 
**toBeDeleted** | **bool** | True if user account is pending deletion. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


