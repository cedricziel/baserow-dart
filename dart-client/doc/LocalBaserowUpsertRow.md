# openapi.model.LocalBaserowUpsertRow

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rowId** | **String** | A formula for defining the intended row. | [optional] 
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**integrationId** | **int** | The id of the Baserow integration we want the data for. | [optional] 
**fieldMappings** | [**List<LocalBaserowTableServiceFieldMapping>**](LocalBaserowTableServiceFieldMapping.md) | The field mapping associated with this service. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


