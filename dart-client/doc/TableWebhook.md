# openapi.model.TableWebhook

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**events** | [**Map<String, Object>**](Object.md) | A list containing the events that will trigger this webhook. | [readonly] [default to const {}]
**eventConfig** | [**List<TableWebhookEventConfig>**](TableWebhookEventConfig.md) | A list containing the addition event options. | [readonly] [default to const []]
**headers** | [**Map<String, Object>**](Object.md) | The additional headers as an object where the key is the name and the value the value. | [readonly] [default to const {}]
**calls** | [**List<TableWebhookCall>**](TableWebhookCall.md) | All the calls that this webhook made. | [default to const []]
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**updatedOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**useUserFieldNames** | **bool** | Indicates whether the field names must be used as payload key instead of the id. | [optional] 
**url** | **String** | The URL that must be called when the webhook is triggered. | 
**requestMethod** | [**RequestMethodEnum**](RequestMethodEnum.md) | The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete | [optional] 
**name** | **String** | An internal name of the webhook. | 
**includeAllEvents** | **bool** | Indicates whether this webhook should listen to all events. | [optional] 
**failedTriggers** | **int** | The amount of failed webhook calls. | [optional] 
**active** | **bool** | Indicates whether the web hook is active. When a webhook has failed multiple times, it will automatically be deactivated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


