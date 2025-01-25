# openapi.model.GitLabIssuesDataSyncDataSync

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**type** | **String** |  | [readonly] 
**syncedProperties** | [**List<DataSyncSyncedProperty>**](DataSyncSyncedProperty.md) |  | [default to const []]
**lastSync** | [**DateTime**](DateTime.md) | Timestamp when the table was last synced. | [optional] 
**lastError** | **String** |  | [optional] 
**gitlabUrl** | **String** | The base URL to your GitLab instance (e.g. https://gitlab.com) | [optional] 
**gitlabProjectId** | **String** | The ID of the GitLab project where to sync the issues with. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


