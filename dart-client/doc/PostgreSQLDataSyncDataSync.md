# openapi.model.PostgreSQLDataSyncDataSync

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**type** | **String** |  | [readonly] 
**syncedProperties** | [**List<DataSyncSyncedProperty>**](DataSyncSyncedProperty.md) |  | [default to const []]
**lastSync** | [**DateTime**](DateTime.md) | Timestamp when the table was last synced. | [optional] 
**lastError** | **String** |  | [optional] 
**postgresqlHost** | **String** |  | 
**postgresqlUsername** | **String** |  | 
**postgresqlPort** | **int** |  | [optional] 
**postgresqlDatabase** | **String** |  | 
**postgresqlSchema** | **String** |  | [optional] 
**postgresqlTable** | **String** |  | 
**postgresqlSslmode** | [**PostgresqlSslmodeEnum**](PostgresqlSslmodeEnum.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


