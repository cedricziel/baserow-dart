# openapi.model.LocalBaserowGetRowUpdateDataSource

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**name** | **String** |  | [optional] 
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**viewId** | **int** | The id of the Baserow view we want the data for. | [optional] 
**filters** | [**List<LocalBaserowTableServiceFilter>**](LocalBaserowTableServiceFilter.md) |  | [optional] [default to const []]
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**searchQuery** | **String** | Any search queries to apply to the service when it is dispatched. | [optional] 
**rowId** | **String** | A formula for defining the intended row. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


