# openapi.model.LocalBaserowGetRowPublicDataSource

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Data source id. | [readonly] 
**type** | **String** | The type of the data source. | [readonly] 
**schema** | [**Map<String, Object>**](Object.md) | The schema of the service. | [readonly] [default to const {}]
**name** | **String** | Human name for this data source. | [readonly] 
**pageId** | **int** | Page this data source is linked to. | [readonly] 
**order** | **double** | Lowest first. | [readonly] 
**contextData** | [**Map<String, Object>**](Object.md) | The context data of the data source. | [readonly] [default to const {}]
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**viewId** | **int** | The id of the Baserow view we want the data for. | [optional] 
**filters** | [**List<LocalBaserowTableServiceFilter>**](LocalBaserowTableServiceFilter.md) |  | [optional] [default to const []]
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**searchQuery** | **String** | Any search queries to apply to the service when it is dispatched. | [optional] 
**rowId** | **String** | A formula for defining the intended row. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


