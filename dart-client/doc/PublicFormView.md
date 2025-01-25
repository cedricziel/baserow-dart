# openapi.model.PublicFormView

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title that is displayed at the beginning of the form. | [optional] 
**description** | **String** | The description that is displayed at the beginning of the form. | [optional] 
**mode** | [**Mode51eEnum**](Mode51eEnum.md) | Configurable mode of the form.  * `form` - form * `survey` - survey | [optional] 
**coverImage** | [**UserFile**](UserFile.md) | The user file cover image that is displayed at the top of the form. | [optional] 
**logoImage** | [**UserFile**](UserFile.md) | The user file logo image that is displayed at the top of the form. | [optional] 
**submitText** | **String** | The text displayed on the submit button. | [optional] 
**fields** | [**List<PublicFormViewFieldOptions>**](PublicFormViewFieldOptions.md) |  | [default to const []]
**showLogo** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


