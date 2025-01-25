# openapi.model.PublicBuilder

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**pages** | [**List<PublicPage>**](PublicPage.md) | This field is specific to the `builder` application and contains an array of pages that are in the builder. | [readonly] [default to const []]
**type** | **String** | The type of the object. | [readonly] 
**theme** | [**CombinedThemeConfigBlocks**](CombinedThemeConfigBlocks.md) | This field is specific to the `builder` application and contains the theme settings. | [readonly] 
**userSources** | [**List<UserSourceBasePublicUserSource>**](UserSourceBasePublicUserSource.md) | The user sources related with this builder. | [readonly] [default to const []]
**faviconFile** | **String** | This field is specific to the `builder` application and contains the favicon settings. | [readonly] 
**loginPageId** | **int** | The login page for this application. This is related to the visibility settings of builder pages. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


