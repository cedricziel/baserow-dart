# openapi.model.LogoutWorkflowActionCreateBuilderWorkflowAction

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**elementId** | **int** | The id of the element the workflow action is associated with | [optional] 
**type** | [**Type051Enum**](Type051Enum.md) | The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source | 
**event** | **String** | The event that triggers the execution | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


