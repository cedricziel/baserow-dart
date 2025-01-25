# openapi.model.BuilderApplication

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**order** | **int** |  | 
**type** | **String** |  | [readonly] 
**workspace** | [**Workspace**](Workspace.md) | The workspace that the application belongs to. | 
**createdOn** | [**DateTime**](DateTime.md) |  | [readonly] 
**pages** | [**List<Page>**](Page.md) | This field is specific to the `builder` application and contains an array of pages that are in the builder. | [readonly] [default to const []]
**theme** | [**CombinedThemeConfigBlocks**](CombinedThemeConfigBlocks.md) | This field is specific to the `builder` application and contains the theme settings. | [readonly] 
**faviconFile** | [**UserFile**](UserFile.md) | The favicon image file | [optional] 
**loginPageId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


