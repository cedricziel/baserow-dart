# openapi.model.LocalBaserowAggregateRowsService

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**type** | **String** | The type of the service. | [readonly] 
**schema** | [**Map<String, Object>**](Object.md) | The schema of the service. | [readonly] [default to const {}]
**contextData** | [**Map<String, Object>**](Object.md) | The context data of the service. | [readonly] [default to const {}]
**contextDataSchema** | [**Map<String, Object>**](Object.md) | The schema context data of the service. | [readonly] [default to const {}]
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**viewId** | **int** | The id of the Baserow view we want the data for. | [optional] 
**filters** | [**List<LocalBaserowTableServiceFilter>**](LocalBaserowTableServiceFilter.md) |  | [optional] [default to const []]
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**searchQuery** | **String** | The query to apply to the service to narrow the results down. | [optional] 
**fieldId** | **int** | The id of the Baserow field we want to aggregate on. | [optional] 
**aggregationType** | **String** | The field aggregation type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


