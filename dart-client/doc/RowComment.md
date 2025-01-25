# openapi.model.RowComment

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**userId** | **int** | The user who made the comment. | [readonly] 
**firstName** | **String** |  | [optional] 
**tableId** | **int** | The table the row this comment is for is found in.  | [readonly] 
**rowId** | **int** | The id of the row the comment is for. | 
**message** | **String** |  | [readonly] 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**updatedOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**edited** | **String** |  | [readonly] 
**trashed** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


