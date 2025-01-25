# openapi.model.DurationFieldFieldSerializerWithRelatedFields

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**tableId** | **int** |  | [readonly] 
**name** | **String** |  | 
**order** | **int** | Lowest first. | 
**type** | **String** | The type of the related field. | [readonly] 
**primary** | **bool** | Indicates if the field is a primary field. If `true` the field cannot be deleted and the value should represent the whole row. | [optional] 
**readOnly** | **bool** | Indicates whether the field is a read only field. If true, it's not possible to update the cell value. | [readonly] 
**immutableType** | **bool** | Indicates whether the field type is immutable. If true, then it won't be possible to change the field type via the API. | [readonly] 
**immutableProperties** | **bool** | Indicates whether the field properties are immutable. If true, then it won't be possible to change the properties and the type via the API. | [readonly] 
**description** | **String** | Field description | [optional] 
**relatedFields** | [**List<Field>**](Field.md) | A list of related fields which also changed. | [readonly] [default to const []]
**durationFormat** | [**DurationFormatEnum**](DurationFormatEnum.md) | The format of the duration.  * `h:mm` - hours:minutes * `h:mm:ss` - hours:minutes:seconds * `h:mm:ss.s` - hours:minutes:seconds:deciseconds * `h:mm:ss.ss` - hours:minutes:seconds:centiseconds * `h:mm:ss.sss` - hours:minutes:seconds:milliseconds * `d h` - days:hours * `d h:mm` - days:hours:minutes * `d h:mm:ss` - days:hours:minutes:seconds * `d h mm` - days:hours:minutes:with_spaces * `d h mm ss` - days:hours:minutes:seconds:with_spaces | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


