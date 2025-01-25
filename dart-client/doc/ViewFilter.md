# openapi.model.ViewFilter

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**view** | **int** | The view to which the filter applies. Each view can have his own filters. | 
**field** | **int** | The field of which the value must be compared to the filter value. | 
**type** | **String** | Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`). | 
**value** | **String** | The filter value that must be compared to the field's value. | [optional] 
**preloadValues** | [**Map<String, Object>**](Object.md) | Can contain unique preloaded values per filter. This is for example used by the `link_row_has` filter to communicate the display name if a value is provided. | [readonly] [default to const {}]
**group** | **int** | The id of the filter group this filter belongs to. If this is null, the filter is not part of a filter group. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


