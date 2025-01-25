# openapi.model.LocalBaserowUserSourceUserSource

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**uid** | **String** | Unique id for this user source. | [readonly] 
**applicationId** | **int** |  | [readonly] 
**integrationId** | **int** | The Integration used to establish the connection with the service. | [readonly] 
**type** | **String** | The type of the user_source. | [readonly] 
**name** | **String** |  | [readonly] 
**order** | **double** | Lowest first. | [readonly] 
**authProviders** | [**List<AppAuthProviderAppAuthProvider>**](AppAuthProviderAppAuthProvider.md) | Auth providers related to this user source. | [optional] [default to const []]
**userCount** | **int** | The total number of users in the user source. | [readonly] 
**userCountUpdatedAt** | [**DateTime**](DateTime.md) | When the last user count took place. | [readonly] 
**tableId** | **int** | The id of the Baserow table we want the data for. | [optional] 
**emailFieldId** | **int** | The id of the field to use as email for the user account. | [optional] 
**nameFieldId** | **int** | The id of the field that contains the user name. | [optional] 
**roleFieldId** | **int** | The id of the field that contains the user role. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


