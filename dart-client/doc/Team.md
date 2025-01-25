# openapi.model.Team

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A human friendly name for this team. | 
**defaultRole** | **String** | The uid of the role you want to assign to the team in the given workspace. You can omit this property if you want to remove the role. | [optional] 
**subjects** | [**List<TeamSubject>**](TeamSubject.md) | An array of subject ID/type objects to be used during team create and update. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


