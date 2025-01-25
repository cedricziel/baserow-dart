# openapi.model.ConditionalColorValueProviderConfColorFilterGroup

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique identifier for this condition. | 
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | The boolean operator used to group all conditions.  * `AND` - And * `OR` - Or | [optional] [default to ConditionTypeEnum.AND]
**parentGroup** | **String** | The id of the parent filter group. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


