# openapi.model.AIFieldField

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
**selectOptions** | [**List<SelectOption>**](SelectOption.md) |  | [optional] [default to const []]
**aiGenerativeAiType** | **String** |  | [optional] 
**aiGenerativeAiModel** | **String** |  | [optional] 
**aiOutputType** | [**AiOutputTypeEnum**](AiOutputTypeEnum.md) | The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice | [optional] 
**aiTemperature** | **double** | Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity. | [optional] 
**aiPrompt** | **String** | The prompt that must run for each row. Must be an formula. | [optional] [default to '']
**aiFileFieldId** | **int** | File field that will be used as a knowledge base for the AI model. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


