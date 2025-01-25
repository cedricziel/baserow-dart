# openapi.model.AIFieldUpdateField

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
**selectOptions** | [**List<SelectOption>**](SelectOption.md) |  | [optional] [default to const []]
**aiGenerativeAiType** | **String** |  | [optional] 
**aiGenerativeAiModel** | **String** |  | [optional] 
**aiOutputType** | [**AiOutputTypeEnum**](AiOutputTypeEnum.md) | The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice | [optional] 
**aiTemperature** | **double** | Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity. | [optional] 
**aiPrompt** | **String** | The prompt that must run for each row. Must be an formula. | [optional] [default to '']
**aiFileFieldId** | **int** | File field that will be used as a knowledge base for the AI model. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


