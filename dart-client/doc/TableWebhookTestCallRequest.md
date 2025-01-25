# openapi.model.TableWebhookTestCallRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | The URL that must be called when the webhook is triggered. | 
**eventType** | [**EventTypeEnum**](EventTypeEnum.md) | The event type that must be used for the test call.  * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted | 
**requestMethod** | [**RequestMethodEnum**](RequestMethodEnum.md) | The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete | [optional] 
**headers** | [**Map<String, Object>**](Object.md) | The additional headers as an object where the key is the name and the value the value. | [optional] [default to const {}]
**useUserFieldNames** | **bool** | Indicates whether the field names must be used as payload key instead of the id. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


