# openapi.model.OpenPageWorkflowActionUpdateBuilderWorkflowActions

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**Type051Enum**](Type051Enum.md) | The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source | [optional] 
**navigationType** | [**NavigationTypeEnum**](NavigationTypeEnum.md) | The navigation type.  * `page` - Page * `custom` - Custom | [optional] 
**navigateToPageId** | **int** | ('Destination page id for this link. If null then we use the navigate_to_url property instead.',) | [optional] 
**navigateToUrl** | **String** | If no page is selected, this indicate the destination of the link. | [optional] [default to '']
**pageParameters** | [**List<PageParameterValue>**](PageParameterValue.md) | The parameters for each parameters of the selected page if any. | [optional] [default to const []]
**target** | [**TargetEnum**](TargetEnum.md) | The target of the link when we click on it.  * `self` - Self * `blank` - Blank | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


