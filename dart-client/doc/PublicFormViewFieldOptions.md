# openapi.model.PublicFormViewFieldOptions

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | If provided, then this value will be visible above the field input. | [readonly] 
**description** | **String** | If provided, then this value be will be shown under the field name. | [optional] 
**required_** | **bool** | Indicates whether the field is required for the visitor to fill out. | [optional] 
**order** | **int** | The order that the field has in the form. Lower value is first. | [optional] 
**field** | [**PublicFormViewField**](PublicFormViewField.md) | The properties of the related field. These can be used to construct the correct input. Additional properties could be added depending on the field type. | [readonly] 
**showWhenMatchingConditions** | **bool** | Indicates whether this field is visible when the conditions are met. | [optional] 
**conditionType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all (AND) or any (OR) of the conditions should match before shown.  * `AND` - And * `OR` - Or | [optional] 
**conditions** | [**List<FormViewFieldOptionsCondition>**](FormViewFieldOptionsCondition.md) |  | [optional] [default to const []]
**conditionGroups** | [**List<FormViewFieldOptionsConditionGroup>**](FormViewFieldOptionsConditionGroup.md) |  | [optional] [default to const []]
**groups** | [**List<FormViewFieldOptionsConditionGroup>**](FormViewFieldOptionsConditionGroup.md) |  | [optional] [default to const []]
**fieldComponent** | **String** | Indicates which field input component is used in the form. The value is only used in the frontend, and can differ per field. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


