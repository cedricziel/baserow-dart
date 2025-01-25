# openapi.model.GitHubIssuesDataSyncCreateDataSync

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**syncedProperties** | **List<String>** |  | [default to const []]
**type** | [**TypeD46Enum**](TypeD46Enum.md) | The type of the data sync table that must be created.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts | 
**tableName** | **String** |  | 
**githubIssuesOwner** | **String** | The owner of the repository on GitHub. | 
**githubIssuesRepo** | **String** | The name of the repository on GitHub. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


