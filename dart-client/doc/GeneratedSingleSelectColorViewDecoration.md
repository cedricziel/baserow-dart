# openapi.model.GeneratedSingleSelectColorViewDecoration

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**view** | **int** | The view to which the decoration applies. Each view can have his own decorations. | [optional] 
**type** | **String** | The decorator type. This is then interpreted by the frontend to display the decoration. | [optional] 
**valueProviderType** | **String** | The value provider type that gives the value to the decorator. | [optional] 
**valueProviderConf** | [**SelectColorValueProviderConf**](SelectColorValueProviderConf.md) | The configuration of the value provider | [optional] 
**order** | **int** | The position of the decorator has within the view, lowest first. If there is another decorator with the same order value then the decorator with the lowest id must be shown first. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


