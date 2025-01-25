# openapi.model.WorkspaceUserWorkspace

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Workspace id. | [readonly] 
**name** | **String** | Workspace name. | [readonly] 
**users** | [**List<WorkspaceUser>**](WorkspaceUser.md) | List of all workspace users. | [readonly] [default to const []]
**order** | **int** | The requesting user's order within the workspace users. | [readonly] 
**permissions** | **String** | The requesting user's permissions for the workspace. | [readonly] 
**unreadNotificationsCount** | **int** | The number of unread notifications for the requesting user. | [readonly] 
**generativeAiModelsEnabled** | **String** | Generative AI models available in this workspace. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


