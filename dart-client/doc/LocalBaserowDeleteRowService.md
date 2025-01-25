# openapi.model.LocalBaserowDeleteRowService

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
**rowId** | **String** | A formula for defining the intended row. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


