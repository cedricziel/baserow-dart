# openapi.model.ExportJob

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**table** | **int** |  | [optional] 
**view** | **int** |  | [optional] 
**exporterType** | **String** |  | 
**state** | [**StateEnum**](StateEnum.md) |  | 
**status** | **String** | DEPRECATED: Use state instead | [readonly] 
**exportedFileName** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [readonly] 
**progressPercentage** | **double** |  | [optional] 
**url** | **String** |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


