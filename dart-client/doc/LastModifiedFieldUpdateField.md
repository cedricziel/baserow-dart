# openapi.model.LastModifiedFieldUpdateField

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**type** | [**Type6ebEnum**](Type6ebEnum.md) |  | [optional] 
**description** | **String** | Field description | [optional] 
**dateFormat** | [**DateFormatEnum**](DateFormatEnum.md) | EU (20/02/2020), US (02/20/2020) or ISO (2020-02-20)  * `EU` - European (D/M/Y) * `US` - US (M/D/Y) * `ISO` - ISO (Y-M-D) | [optional] 
**dateIncludeTime** | **bool** | Indicates if the field also includes a time. | [optional] 
**dateTimeFormat** | [**DateTimeFormatEnum**](DateTimeFormatEnum.md) | 24 (14:30) or 12 (02:30 PM)  * `24` - 24 hour * `12` - 12 hour | [optional] 
**dateShowTzinfo** | **bool** | Indicates if the timezone should be shown. | [optional] 
**dateForceTimezone** | **String** | Force a timezone for the field overriding user profile settings. | [optional] 
**dateForceTimezoneOffset** | **int** | ('A UTC offset in minutes to add to all the field datetimes values.',) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


