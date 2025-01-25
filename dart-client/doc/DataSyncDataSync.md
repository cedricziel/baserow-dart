# openapi.model.DataSyncDataSync

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
**icalUrl** | **String** |  | 
**postgresqlHost** | **String** |  | 
**postgresqlUsername** | **String** |  | 
**postgresqlPort** | **int** |  | [optional] 
**postgresqlDatabase** | **String** |  | 
**postgresqlSchema** | **String** |  | [optional] 
**postgresqlTable** | **String** |  | 
**postgresqlSslmode** | [**PostgresqlSslmodeEnum**](PostgresqlSslmodeEnum.md) |  | [optional] 
**sourceTableId** | **int** | The ID of the source table that must be synced. | 
**jiraUrl** | **String** | The base URL of your Jira instance (e.g., https://your-domain.atlassian.net). | 
**jiraProjectKey** | **String** | The project key of the Jira project (e.g., PROJ). | [optional] 
**jiraUsername** | **String** | The username of the Jira account used to authenticate. | 
**githubIssuesOwner** | **String** | The owner of the repository on GitHub. | 
**githubIssuesRepo** | **String** | The name of the repository on GitHub. | 
**gitlabUrl** | **String** | The base URL to your GitLab instance (e.g. https://gitlab.com) | [optional] 
**gitlabProjectId** | **String** | The ID of the GitLab project where to sync the issues with. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


