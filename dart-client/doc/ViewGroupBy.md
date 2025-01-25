# openapi.model.ViewGroupBy

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**view** | **int** | The view to which the group by applies. Each view can have his own group bys. | 
**field** | **int** | The field that must be grouped by. | 
**order** | [**OrderEnum**](OrderEnum.md) | Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending | [optional] 
**width** | **int** | The pixel width of the group by in the related view. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


