# openapi.model.PatchedFieldUpdateField

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
**textDefault** | **String** | If set, this value is going to be added every time a new row created. | [optional] 
**longTextEnableRichText** | **bool** | Enable rich text formatting for the field. | [optional] 
**numberDecimalPlaces** | [**NumberDecimalPlacesEnum**](NumberDecimalPlacesEnum.md) |  | [optional] 
**numberNegative** | **bool** | Indicates if negative values are allowed. | [optional] 
**numberPrefix** | **String** | The prefix to use for the field. | [optional] 
**numberSuffix** | **String** | The suffix to use for the field. | [optional] 
**numberSeparator** | [**CountFieldCreateFieldNumberSeparator**](CountFieldCreateFieldNumberSeparator.md) |  | [optional] 
**maxValue** | **int** | Maximum value the rating can take. | [optional] 
**color** | **String** | Color of the symbols. | [optional] 
**style** | [**StyleEnum**](StyleEnum.md) | Rating style. Allowed values: star, heart, thumbs-up, flag, smile.  * `star` - Star * `heart` - Heart * `thumbs-up` - Thumbs-up * `flag` - Flags * `smile` - Smile | [optional] 
**dateFormat** | [**DateFormatEnum**](DateFormatEnum.md) |  | [optional] 
**dateIncludeTime** | **bool** | Indicates if the field also includes a time. | [optional] 
**dateTimeFormat** | [**DateTimeFormatEnum**](DateTimeFormatEnum.md) |  | [optional] 
**dateShowTzinfo** | **bool** | Indicates if the time zone should be shown. | [optional] 
**dateForceTimezone** | **String** | Force a timezone for the field overriding user profile settings. | [optional] 
**dateForceTimezoneOffset** | **int** | ('A UTC offset in minutes to add to all the field datetimes values.',) | [optional] 
**durationFormat** | [**DurationFormatEnum**](DurationFormatEnum.md) |  | [optional] 
**linkRowTableId** | **int** | The id of the linked table. | [optional] 
**linkRowTable** | **int** | (Deprecated) The id of the linked table. | [optional] 
**hasRelatedField** | **bool** |  | [optional] 
**linkRowLimitSelectionViewId** | **int** | The ID of the view in the related table where row selection must be limited to. | [optional] [default to -1]
**selectOptions** | [**List<SelectOption>**](SelectOption.md) |  | [optional] [default to const []]
**error** | **String** |  | [readonly] 
**arrayFormulaType** | [**ArrayFormulaTypeEnum**](ArrayFormulaTypeEnum.md) |  | [optional] 
**nullable** | **bool** |  | [readonly] 
**formula** | **String** |  | 
**formulaType** | [**FormulaTypeEnum**](FormulaTypeEnum.md) |  | [optional] 
**throughFieldId** | **int** | The id of the link row field to lookup values for. Will override the `through_field_name` parameter if both are provided, however only one is required. | [optional] 
**targetFieldId** | **int** | The id of the field in the table linked to by the through_field to lookup. Will override the `target_field_id` parameter if both are provided, however only one is required. | [optional] 
**rollupFunction** | **String** | The rollup formula function that must be applied. | [optional] 
**throughFieldName** | **String** | The name of the link row field to lookup values for. | [optional] 
**targetFieldName** | **String** | The name of the field in the table linked to by the through_field to lookup. | [optional] 
**notifyUserWhenAdded** | **bool** |  | [optional] 
**viewId** | **int** | The id of the view to use for the initial ordering. | [optional] 
**aiGenerativeAiType** | **String** |  | [optional] 
**aiGenerativeAiModel** | **String** |  | [optional] 
**aiOutputType** | [**AiOutputTypeEnum**](AiOutputTypeEnum.md) | The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice | [optional] 
**aiTemperature** | **double** | Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity. | [optional] 
**aiPrompt** | **String** | The prompt that must run for each row. Must be an formula. | [optional] [default to '']
**aiFileFieldId** | **int** | File field that will be used as a knowledge base for the AI model. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


