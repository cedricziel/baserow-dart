# openapi.api.SnapshotsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSnapshot**](SnapshotsApi.md#createsnapshot) | **POST** /api/snapshots/application/{application_id}/ | 
[**deleteSnapshot**](SnapshotsApi.md#deletesnapshot) | **DELETE** /api/snapshots/{snapshot_id}/ | 
[**listSnapshots**](SnapshotsApi.md#listsnapshots) | **GET** /api/snapshots/application/{application_id}/ | 
[**restoreSnapshot**](SnapshotsApi.md#restoresnapshot) | **POST** /api/snapshots/{snapshot_id}/restore/ | 


# **createSnapshot**
> Job createSnapshot(applicationId, snapshot)



Creates a new application snapshot. Snapshots represent a state of an application at a specific point in time and can be restored later, making it easy to create backups of entire applications.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SnapshotsApi();
final applicationId = 56; // int | Application ID for which to list snapshots.
final snapshot = Snapshot(); // Snapshot | 

try {
    final result = api_instance.createSnapshot(applicationId, snapshot);
    print(result);
} catch (e) {
    print('Exception when calling SnapshotsApi->createSnapshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| Application ID for which to list snapshots. | 
 **snapshot** | [**Snapshot**](Snapshot.md)|  | 

### Return type

[**Job**](Job.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSnapshot**
> deleteSnapshot(snapshotId)



Deletes a snapshot. Deleting a snapshot doesn't affect the application that the snapshot is made from and doesn't affect any applications that were created by restoring it. Snapshot deletion is permanent and can't be undone.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SnapshotsApi();
final snapshotId = 56; // int | Id of the snapshot to delete.

try {
    api_instance.deleteSnapshot(snapshotId);
} catch (e) {
    print('Exception when calling SnapshotsApi->deleteSnapshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapshotId** | **int**| Id of the snapshot to delete. | 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSnapshots**
> List<Snapshot> listSnapshots(applicationId)



Lists snapshots that were created for a given application.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SnapshotsApi();
final applicationId = 56; // int | Application ID for which to list snapshots.

try {
    final result = api_instance.listSnapshots(applicationId);
    print(result);
} catch (e) {
    print('Exception when calling SnapshotsApi->listSnapshots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationId** | **int**| Application ID for which to list snapshots. | 

### Return type

[**List<Snapshot>**](Snapshot.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreSnapshot**
> Job restoreSnapshot(snapshotId)



Restores a snapshot. When an application snapshot is restored, a new application will be created in the same workspace that the original application was placed in with the name of the snapshot and data that were in the original application at the time the snapshot was taken. The original application that the snapshot was taken from is unaffected. Snapshots can be restored multiple times and a number suffix is added to the new application name in the case of a collision.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SnapshotsApi();
final snapshotId = 56; // int | Id of the snapshot to restore.

try {
    final result = api_instance.restoreSnapshot(snapshotId);
    print(result);
} catch (e) {
    print('Exception when calling SnapshotsApi->restoreSnapshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **snapshotId** | **int**| Id of the snapshot to restore. | 

### Return type

[**Job**](Job.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

