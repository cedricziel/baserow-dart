# openapi.model.TableImport

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List<Object>**](Object.md) | A list of rows you want to add to the specified table. Each row is a list of values, one for each **writable** field. The field values must be ordered according to the field order in the table. All values must be compatible with the corresponding field type.  Ex:  ```json [   [\"row1_field1_value\", \"row1_field2_value\"],   [\"row2_field1_value\", \"row2_field2_value\"], ] ``` for adding two rows to a table with two writable fields. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


