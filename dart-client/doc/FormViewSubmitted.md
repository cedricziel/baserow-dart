# openapi.model.FormViewSubmitted

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**submitAction** | [**SubmitActionEnum**](SubmitActionEnum.md) | The action that must be performed after the visitor has filled out the form.  * `MESSAGE` - Message * `REDIRECT` - Redirect | [optional] 
**submitActionMessage** | **String** | If the `submit_action` is MESSAGE, then this message will be shown to the visitor after submitting the form. | [optional] 
**submitActionRedirectUrl** | **String** | If the `submit_action` is REDIRECT,then the visitors will be redirected to the this URL after submitting the form. | [optional] 
**rowId** | **int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


