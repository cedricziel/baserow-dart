# openapi.model.CalendarViewView

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
**order** | **int** |  | 
**type** | **String** |  | [readonly] 
**table** | [**TableWithoutDataSync**](TableWithoutDataSync.md) |  | 
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**filters** | [**List<ViewFilter>**](ViewFilter.md) |  | [optional] [default to const []]
**filterGroups** | [**List<ViewFilterGroup>**](ViewFilterGroup.md) |  | [optional] [default to const []]
**sortings** | [**List<ViewSort>**](ViewSort.md) |  | [optional] [default to const []]
**groupBys** | [**List<ViewGroupBy>**](ViewGroupBy.md) |  | [optional] [default to const []]
**decorations** | [**List<ViewDecoration>**](ViewDecoration.md) |  | [optional] [default to const []]
**filtersDisabled** | **bool** | Allows users to see results unfiltered while still keeping the filters saved for the view. | [optional] 
**publicViewHasPassword** | **bool** | Indicates whether the public view is password protected or not.  :return: True if the public view is password protected, False otherwise. | [readonly] 
**showLogo** | **bool** |  | [optional] 
**ownershipType** | **String** |  | 
**ownedById** | **int** |  | [optional] 
**dateField** | **int** |  | [optional] 
**icalFeedUrl** | **String** | Read-only field with ICal feed endpoint. Note: this url will not be active if ical_public value is set to False. | [readonly] 
**icalPublic** | **bool** | A flag to show if ical feed is exposed. Set this field to True when modifying this resource to enable ICal feed url. | [optional] 
**public** | **bool** | Indicates whether the view is publicly accessible to visitors. | [optional] 
**slug** | **String** | The unique slug that can be used to construct a public URL. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


