# openapi.model.PatchedTableWebhookUpdateRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The URL that must be called when the webhook is triggered. | [optional] 
**includeAllEvents** | **bool** | Indicates whether this webhook should listen to all events. | [optional] 
**events** | [**List<EventsEnum>**](EventsEnum.md) | A list containing the events that will trigger this webhook. | [optional] [default to const []]
**eventConfig** | [**List<TableWebhookEventConfig>**](TableWebhookEventConfig.md) | A list containing the addition event options. | [optional] [default to const []]
**requestMethod** | [**RequestMethodEnum**](RequestMethodEnum.md) | The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete | [optional] 
**headers** | [**Map<String, Object>**](Object.md) | The additional headers as an object where the key is the name and the value the value. | [optional] [default to const {}]
**name** | **String** | An internal name of the webhook. | [optional] 
**active** | **bool** | Indicates whether the web hook is active. When a webhook has failed multiple times, it will automatically be deactivated. | [optional] 
**useUserFieldNames** | **bool** | Indicates whether the field names must be used as payload key instead of the id. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


