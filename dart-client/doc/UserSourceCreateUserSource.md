# openapi.model.UserSourceCreateUserSource

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beforeId** | **int** | If provided, creates the user_source before the user_source with the given id. | [optional] 
**type** | [**Type050Enum**](Type050Enum.md) | The type of the user_source.  * `local_baserow` - local_baserow | 
**name** | **String** |  | 
**integrationId** | **int** | The related integration id. | 
**authProviders** | [**List<AppAuthProviderBaseAppAuthProvider>**](AppAuthProviderBaseAppAuthProvider.md) | Auth providers related to this user source. | [optional] [default to const []]
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**emailFieldId** | **int** | The id of the field to use as email for the user account. | [optional] 
**nameFieldId** | **int** | The id of the field that contains the user name. | [optional] 
**roleFieldId** | **int** | The id of the field that contains the user role. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


