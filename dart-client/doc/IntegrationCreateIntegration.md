# openapi.model.IntegrationCreateIntegration

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beforeId** | **int** | If provided, creates the integration before the integration with the given id. | [optional] 
**type** | [**Type050Enum**](Type050Enum.md) | The type of the integration.  * `local_baserow` - local_baserow | 
**name** | **String** |  | 
**contextData** | [**LocalBaserowContextData**](LocalBaserowContextData.md) |  | [readonly] 
**authorizedUser** | [**SubjectUser**](SubjectUser.md) |  | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


