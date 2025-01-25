# openapi.model.Token

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** | The human readable name of the database token for the user. | 
**workspace** | **int** | Only the tables of the workspace can be accessed. | 
**key** | **String** | The unique token key that can be used to authorize for the table row endpoints. | 
**permissions** | [**PatchedTokenUpdatePermissions**](PatchedTokenUpdatePermissions.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


