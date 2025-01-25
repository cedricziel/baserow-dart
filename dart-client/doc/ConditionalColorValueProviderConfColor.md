# openapi.model.ConditionalColorValueProviderConfColor

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this condition. | 
**color** | **String** | The color the decorator should take if the defined conditions apply. | 
**filters** | [**List<ConditionalColorValueProviderConfColorFilter>**](ConditionalColorValueProviderConfColorFilter.md) | A list of conditions that the row must meet to get the selected color. This list of conditions can be empty, in that case, this color will always match the row values. | [default to const []]
**filterGroups** | [**List<ConditionalColorValueProviderConfColorFilterGroup>**](ConditionalColorValueProviderConfColorFilterGroup.md) | A list of filter groups that the row must meet to get the selected color.  | [optional] [default to const []]
**operator_** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | The boolean operator used to group all conditions.  * `AND` - And * `OR` - Or | [optional] [default to ConditionTypeEnum.AND]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


