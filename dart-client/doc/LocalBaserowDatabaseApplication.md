# openapi.model.LocalBaserowDatabaseApplication

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
**tables** | [**List<TableSerializerWithFields>**](TableSerializerWithFields.md) | This field is specific to the `database` application and contains an array of tables that are in the database. | [default to const []]
**views** | [**List<LocalBaserowView>**](LocalBaserowView.md) | This field is specific to the `database` application and contains an array of views that are in the tables. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


