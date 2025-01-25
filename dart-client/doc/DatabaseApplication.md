# openapi.model.DatabaseApplication

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**order** | **int** |  | 
**type** | **String** |  | [readonly] 
**workspace** | [**Workspace**](Workspace.md) | The workspace that the application belongs to. | 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**tables** | [**List<Table>**](Table.md) | This field is specific to the `database` application and contains an array of tables that are in the database. | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


