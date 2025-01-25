# openapi.model.ViewFilterGroup

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR) in the group to be shown.  * `AND` - And * `OR` - Or | [optional] 
**view** | **int** | The view to which the filter group applies to. Each view can have its own filter groups. | 
**parentGroup** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


