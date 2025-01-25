# openapi.model.RollupFieldUpdateField

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**type** | [**Type6ebEnum**](Type6ebEnum.md) |  | [optional] 
**description** | **String** | Field description | [optional] 
**error** | **String** |  | [optional] 
**dateShowTzinfo** | **bool** | Indicates if the time zone should be shown. | [optional] 
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
**throughFieldId** | **int** | The id of the link row field to rollup values for. | [optional] 
**targetFieldId** | **int** | The id of the field in the table linked to by the through_field to rollup. | [optional] 
**rollupFunction** | **String** | The rollup formula function that must be applied. | [optional] 
**formulaType** | [**FormulaTypeEnum**](FormulaTypeEnum.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


