# openapi.model.NotificationRecipient

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The id of the notification. | 
**type** | **String** | The type of notification | 
**sender** | [**Sender**](Sender.md) | The user that sent the notification. | 
**workspace** | **String** | The workspace that the notification is in (if any). | [readonly] 
**createdOn** | [**DateTime**](DateTime.md) | The date and time that the notification was created. | 
**read** | **bool** | If True, then the notification has been read by the user.  | [optional] 
**data** | [**Object**](.md) | The data associated with the notification. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


