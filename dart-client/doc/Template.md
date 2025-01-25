# openapi.model.Template

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**slug** | **String** | The template slug that is used to match the template with the JSON file name. | 
**icon** | **String** | The icon class name that can be used for displaying purposes. | 
**keywords** | **String** | Keywords related to the template that can be used for search. | [optional] 
**workspaceId** | **int** | The group containing the applications related to the template. The read endpoints related to that group are publicly accessible for preview purposes. | [readonly] 
**isDefault** | **String** | Indicates if the template must be selected by default. The web-frontend automatically selects the first `is_default` template that it can find. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


