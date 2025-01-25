# openapi.model.LocalBaserowAggregateRowsCreateDataSource

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**Type40dEnum**](Type40dEnum.md) | The type of the service.  * `local_baserow_get_row` - local_baserow_get_row * `local_baserow_list_rows` - local_baserow_list_rows * `local_baserow_aggregate_rows` - local_baserow_aggregate_rows * `local_baserow_upsert_row` - local_baserow_upsert_row * `local_baserow_delete_row` - local_baserow_delete_row | [optional] 
**name** | **String** | Human name for this data source. | [optional] 
**pageId** | **int** | Page this data source is linked to. | [optional] 
**beforeId** | **int** | If provided, creates the data_source before the data_source with the given id. | [optional] 
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**viewId** | **int** | The id of the Baserow view we want the data for. | [optional] 
**filters** | [**List<LocalBaserowTableServiceFilter>**](LocalBaserowTableServiceFilter.md) |  | [optional] [default to const []]
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**searchQuery** | **String** | The query to apply to the service to narrow the results down. | [optional] 
**fieldId** | **int** | The id of the Baserow field we want to aggregate on. | [optional] 
**aggregationType** | **String** | The field aggregation type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


