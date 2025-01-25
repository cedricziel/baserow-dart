# openapi.model.DateFieldFieldSerializerWithRelatedFields

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**tableId** | **int** |  | [readonly] 
**name** | **String** |  | [optional] 
**order** | **int** | Lowest first. | 
**type** | **String** | The type of the related field. | [readonly] 
**primary** | **bool** | Indicates if the field is a primary field. If `true` the field cannot be deleted and the value should represent the whole row. | [optional] 
**readOnly** | **bool** | Indicates whether the field is a read only field. If true, it's not possible to update the cell value. | [readonly] 
**immutableType** | **bool** | Indicates whether the field type is immutable. If true, then it won't be possible to change the field type via the API. | [readonly] 
**immutableProperties** | **bool** | Indicates whether the field properties are immutable. If true, then it won't be possible to change the properties and the type via the API. | [readonly] 
**description** | **String** | Field description | [optional] 
**relatedFields** | [**List<Field>**](Field.md) | A list of related fields which also changed. | [readonly] [default to const []]
**dateFormat** | [**DateFormatEnum**](DateFormatEnum.md) | EU (20/02/2020), US (02/20/2020) or ISO (2020-02-20)  * `EU` - European (D/M/Y) * `US` - US (M/D/Y) * `ISO` - ISO (Y-M-D) | [optional] 
**dateIncludeTime** | **bool** | Indicates if the field also includes a time. | [optional] 
**dateTimeFormat** | [**DateTimeFormatEnum**](DateTimeFormatEnum.md) | 24 (14:30) or 12 (02:30 PM)  * `24` - 24 hour * `12` - 12 hour | [optional] 
**dateShowTzinfo** | **bool** | Indicates if the timezone should be shown. | [optional] 
**dateForceTimezone** | **String** | Force a timezone for the field overriding user profile settings. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


