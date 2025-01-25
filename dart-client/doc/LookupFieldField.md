# openapi.model.LookupFieldField

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
**error** | **String** |  | [readonly] 
**dateShowTzinfo** | **bool** | Indicates if the time zone should be shown. | [optional] 
**selectOptions** | [**List<SelectOption>**](SelectOption.md) |  | [readonly] [default to const []]
**dateFormat** | [**DateFormatEnum**](DateFormatEnum.md) |  | [optional] 
**numberSeparator** | [**CountFieldCreateFieldNumberSeparator**](CountFieldCreateFieldNumberSeparator.md) |  | [optional] 
**arrayFormulaType** | [**ArrayFormulaTypeEnum**](ArrayFormulaTypeEnum.md) |  | [optional] 
**durationFormat** | [**DurationFormatEnum**](DurationFormatEnum.md) |  | [optional] 
**nullable** | **bool** |  | [readonly] 
**dateTimeFormat** | [**DateTimeFormatEnum**](DateTimeFormatEnum.md) |  | [optional] 
**dateForceTimezone** | **String** | Force a timezone for the field overriding user profile settings. | [optional] 
**numberDecimalPlaces** | [**NumberDecimalPlacesEnum**](NumberDecimalPlacesEnum.md) |  | [optional] 
**numberPrefix** | **String** | The prefix to use for the field. | [optional] 
**dateIncludeTime** | **bool** | Indicates if the field also includes a time. | [optional] 
**numberSuffix** | **String** | The suffix to use for the field. | [optional] 
**throughFieldId** | **int** | The id of the link row field to lookup values for. Will override the `through_field_name` parameter if both are provided, however only one is required. | [optional] 
**throughFieldName** | **String** | The name of the link row field to lookup values for. | [optional] 
**targetFieldId** | **int** | The id of the field in the table linked to by the through_field to lookup. Will override the `target_field_id` parameter if both are provided, however only one is required. | [optional] 
**targetFieldName** | **String** | The name of the field in the table linked to by the through_field to lookup. | [optional] 
**formulaType** | [**FormulaTypeEnum**](FormulaTypeEnum.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


