# openapi.model.TeamResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** | A human friendly name for this team. | 
**workspace** | **int** | The workspace that this team belongs to. | 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**updatedOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**defaultRole** | **String** | The uid of the role this team has in its workspace. | [optional] 
**subjectCount** | **int** | The amount of subjects (e.g. users) that are currently assigned to this team. | 
**subjectSample** | [**List<TeamSampleSubject>**](TeamSampleSubject.md) | A sample, by default 10, of the most recent subjects to join this team. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


