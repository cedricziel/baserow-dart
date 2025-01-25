# openapi.model.LicenseWithUsers

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**licenseId** | **String** | Unique identifier of the license. | 
**isActive** | **bool** | Indicates if the backend deems the license valid. | 
**lastCheck** | [**DateTime**](DateTime.md) |  | [optional] 
**validFrom** | [**DateTime**](DateTime.md) | From which timestamp the license becomes active. | 
**validThrough** | [**DateTime**](DateTime.md) | Until which timestamp the license is active. | 
**freeUsersCount** | **int** | The amount of free users that are currently using the license. | [readonly] 
**seatsTaken** | **int** | The amount of users that are currently using the license. | [readonly] 
**seats** | **int** | The maximum amount of users that can use the license. | 
**productCode** | **String** | The product code that indicates what the license unlocks. | 
**issuedOn** | [**DateTime**](DateTime.md) | The date when the license was issued. It could be that a new license is issued with the same `license_id` because it was updated. In that case, the one that has been issued last should be used. | 
**issuedToEmail** | **String** | Indicates to which email address the license has been issued. | 
**issuedToName** | **String** | Indicates to whom the license has been issued. | 
**users** | [**List<LicenseUser>**](LicenseUser.md) |  | [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


