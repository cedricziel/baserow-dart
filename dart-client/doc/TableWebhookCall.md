# openapi.model.TableWebhookCall

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**eventId** | **String** | Event ID where the call originated from. | [readonly] 
**eventType** | **String** |  | 
**calledTime** | [**DateTime**](DateTime.md) |  | [optional] 
**calledUrl** | **String** |  | 
**request** | **String** | A text copy of the request headers and body. | [readonly] 
**response** | **String** | A text copy of the response headers and body. | [readonly] 
**responseStatus** | **int** | The HTTP response status code. | [optional] 
**error** | **String** | An internal error reflecting what went wrong. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


