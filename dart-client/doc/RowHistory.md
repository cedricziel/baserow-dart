# openapi.model.RowHistory

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**actionType** | **String** | The type of the action that was performed. | 
**user** | [**RowHistoryUser**](RowHistoryUser.md) | The user that performed the action. | 
**timestamp** | [**DateTime**](DateTime.md) | The timestamp of the action that was performed. | 
**before** | [**Object**](.md) | The mapping between field_ids and values for the row before the action was performed. | 
**after** | [**Object**](.md) | The mapping between field_ids and values for the row after the action was performed. | 
**fieldsMetadata** | [**Object**](.md) | The metadata of the fields that were changed. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


