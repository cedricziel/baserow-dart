# openapi.model.LocalBaserowTableServiceFilter

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**order** | **int** |  | [readonly] 
**field** | **int** | The database Field, in the LocalBaserowTableService, which we would like to filter upon. | 
**type** | **String** | Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`). | 
**value** | **String** | A formula for the filter's value. | 
**valueIsFormula** | **bool** | Indicates whether the value is a formula or not. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


