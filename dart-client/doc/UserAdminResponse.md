# openapi.model.UserAdminResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**username** | **String** |  | 
**name** | **String** |  | 
**workspaces** | [**List<UserAdminWorkspaces>**](UserAdminWorkspaces.md) |  | [default to const []]
**lastLogin** | [**DateTime**](DateTime.md) |  | [optional] 
**dateJoined** | [**DateTime**](DateTime.md) |  | [optional] 
**isActive** | **bool** | Designates whether this user should be treated as active. Set this to false instead of deleting accounts. | [optional] 
**isStaff** | **bool** | Designates whether this user is an admin and has access to all workspaces and Baserow's admin areas.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


