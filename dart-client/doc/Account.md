# openapi.model.Account

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **String** |  | [optional] 
**language** | **String** | An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB. | [optional] 
**emailNotificationFrequency** | [**EmailNotificationFrequencyEnum**](EmailNotificationFrequencyEnum.md) | The maximum frequency at which the user wants to receive email notifications.  * `instant` - instant * `daily` - daily * `weekly` - weekly * `never` - never | [optional] 
**completedOnboarding** | **bool** | Indicates whether the user has completed the onboarding. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


