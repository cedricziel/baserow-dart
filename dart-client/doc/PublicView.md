# openapi.model.PublicView

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**table** | [**PublicViewTable**](PublicViewTable.md) |  | 
**name** | **String** |  | 
**order** | **int** |  | 
**type** | **String** |  | [readonly] 
**sortings** | [**List<PublicViewSort>**](PublicViewSort.md) |  | [readonly] [default to const []]
**groupBys** | [**List<PublicViewGroupBy>**](PublicViewGroupBy.md) |  | [readonly] [default to const []]
**public** | **bool** | Indicates whether the view is publicly accessible to visitors. | [optional] 
**slug** | **String** | The unique slug where the view can be accessed publicly on. | [readonly] 
**showLogo** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


