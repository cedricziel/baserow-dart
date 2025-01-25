# openapi.model.GitHubIssuesDataSyncDataSync

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
**githubIssuesOwner** | **String** | The owner of the repository on GitHub. | 
**githubIssuesRepo** | **String** | The name of the repository on GitHub. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


