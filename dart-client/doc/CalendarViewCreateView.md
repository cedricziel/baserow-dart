# openapi.model.CalendarViewCreateView

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**type** | [**TypeBc4Enum**](TypeBc4Enum.md) |  | 
**ownershipType** | [**OwnershipTypeEnum**](OwnershipTypeEnum.md) |  | [optional] [default to OwnershipTypeEnum.collaborative]
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**filtersDisabled** | **bool** | Allows users to see results unfiltered while still keeping the filters saved for the view. | [optional] 
**dateField** | **int** |  | [optional] 
**icalFeedUrl** | **String** | Read-only field with ICal feed endpoint. Note: this url will not be active if ical_public value is set to False. | [readonly] 
**icalPublic** | **bool** | A flag to show if ical feed is exposed. Set this field to True when modifying this resource to enable ICal feed url. | [optional] 
**public** | **bool** | Indicates whether the view is publicly accessible to visitors. | [optional] 
**slug** | **String** | The unique slug that can be used to construct a public URL. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


