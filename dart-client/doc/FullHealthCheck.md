# openapi.model.FullHealthCheck

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passing** | **bool** | False if any of the critical service health checks are failing, true otherwise. | [readonly] 
**checks** | **Map<String, String>** | An object keyed by the name of the health check and the value being the result. | [readonly] [default to const {}]
**celeryQueueSize** | **int** | The number of enqueued celery tasks. | 
**celeryExportQueueSize** | **int** | The number of enqueued celery export worker tasks. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


