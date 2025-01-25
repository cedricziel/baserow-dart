# openapi.model.TableWebhookEventConfig

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | [**EventTypeEnum**](EventTypeEnum.md) | The type of the event.  * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted | 
**fields** | **List<int>** | A list of field IDs that are related to the event. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


