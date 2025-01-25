# openapi.model.IntegrationService

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filters** | [**List<LocalBaserowTableServiceFilter>**](LocalBaserowTableServiceFilter.md) |  | [optional] [default to const []]
**searchQuery** | **String** | Any search queries to apply to the service when it is dispatched. | [optional] 
**rowId** | **String** | A formula for defining the intended row. | [optional] 
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**viewId** | **int** | The id of the Baserow view we want the data for. | [optional] 
**sortings** | [**List<LocalBaserowTableServiceSort>**](LocalBaserowTableServiceSort.md) |  | [optional] [default to const []]
**fieldId** | **int** | The id of the Baserow field we want to aggregate on. | [optional] 
**fieldMappings** | [**List<LocalBaserowTableServiceFieldMapping>**](LocalBaserowTableServiceFieldMapping.md) | The field mapping associated with this service. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


