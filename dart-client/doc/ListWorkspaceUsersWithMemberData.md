# openapi.model.ListWorkspaceUsersWithMemberData

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
**teams** | [**List<WorkspaceUserEnterpriseTeam>**](WorkspaceUserEnterpriseTeam.md) | Enterprise only: a list of team IDs and names, which this workspace user belongs to in this workspace. | [optional] [default to const []]
**roleUid** | **String** | Enterprise or advanced only: the uid of the role that is assigned to this workspace user in this workspace. | [optional] 
**highestRoleUid** | **String** | Enterprise or advanced only: the highest role uid assigned to this user in this workspace on anything, including roles from teams. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


