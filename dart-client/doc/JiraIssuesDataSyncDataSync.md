# openapi.model.JiraIssuesDataSyncDataSync

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
**jiraUrl** | **String** | The base URL of your Jira instance (e.g., https://your-domain.atlassian.net). | 
**jiraProjectKey** | **String** | The project key of the Jira project (e.g., PROJ). | [optional] 
**jiraUsername** | **String** | The username of the Jira account used to authenticate. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


