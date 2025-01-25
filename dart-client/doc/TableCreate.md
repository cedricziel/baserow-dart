# openapi.model.TableCreate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**data** | [**List<Object>**](Object.md) | A list of rows that needs to be created as initial table data. Each row is a list of values that are going to be added in the new table in the same order as provided.  Ex:  ```json [   [\"row1_field1_value\", \"row1_field2_value\"],   [\"row2_field1_value\", \"row2_field2_value\"], ] ``` for creating a two rows table with two fields.  If not provided, some example data is going to be created. | [optional] [default to const []]
**firstRowHeader** | **bool** | Indicates if the first provided row is the header. If true the field names are going to be the values of the first row. Otherwise they will be called \"Field N\" | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


