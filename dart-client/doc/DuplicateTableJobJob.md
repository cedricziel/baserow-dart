# openapi.model.DuplicateTableJobJob

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**type** | **String** | The type of the job. | [readonly] 
**progressPercentage** | **int** | A percentage indicating how far along the job is. 100 means that it's finished. | 
**state** | **String** | Indicates the state of the import job. | 
**humanReadableError** | **String** | A human readable error message indicating what went wrong. | [optional] 
**originalTable** | [**Table**](Table.md) |  | [readonly] 
**duplicatedTable** | [**Table**](Table.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


