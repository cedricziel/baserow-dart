# openapi.model.JiraIssuesDataSyncListDataSyncPropertiesRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**TypeD46Enum**](TypeD46Enum.md) | The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts | 
**jiraUrl** | **String** | The base URL of your Jira instance (e.g., https://your-domain.atlassian.net). | 
**jiraProjectKey** | **String** | The project key of the Jira project (e.g., PROJ). | [optional] 
**jiraUsername** | **String** | The username of the Jira account used to authenticate. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


