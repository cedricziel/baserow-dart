# openapi.model.LocalBaserowUpsertRowCreateDataSource

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
**fieldMappings** | [**List<LocalBaserowTableServiceFieldMapping>**](LocalBaserowTableServiceFieldMapping.md) | The field mapping associated with this service. | [optional] [default to const []]
**rowId** | **String** | A formula for defining the intended row. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


