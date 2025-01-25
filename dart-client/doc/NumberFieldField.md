# openapi.model.NumberFieldField

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**tableId** | **int** |  | [readonly] 
**name** | **String** |  | 
**order** | **int** | Lowest first. | 
**type** | **String** | The type of the related field. | [readonly] 
**primary** | **bool** | Indicates if the field is a primary field. If `true` the field cannot be deleted and the value should represent the whole row. | [optional] 
**readOnly** | **bool** | Indicates whether the field is a read only field. If true, it's not possible to update the cell value. | [readonly] 
**immutableType** | **bool** | Indicates whether the field type is immutable. If true, then it won't be possible to change the field type via the API. | [readonly] 
**immutableProperties** | **bool** | Indicates whether the field properties are immutable. If true, then it won't be possible to change the properties and the type via the API. | [readonly] 
**description** | **String** | Field description | [optional] 
**numberDecimalPlaces** | [**NumberDecimalPlacesEnum**](NumberDecimalPlacesEnum.md) | The amount of digits allowed after the point.  * `0` - 1 * `1` - 1.0 * `2` - 1.00 * `3` - 1.000 * `4` - 1.0000 * `5` - 1.00000 * `6` - 1.000000 * `7` - 1.0000000 * `8` - 1.00000000 * `9` - 1.000000000 * `10` - 1.0000000000 | [optional] 
**numberNegative** | **bool** | Indicates if negative values are allowed. | [optional] 
**numberPrefix** | **String** | The prefix to use for the field. | [optional] 
**numberSuffix** | **String** | The suffix to use for the field. | [optional] 
**numberSeparator** | [**CountFieldCreateFieldNumberSeparator**](CountFieldCreateFieldNumberSeparator.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


