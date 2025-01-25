# openapi.api.JobsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelJob**](JobsApi.md#canceljob) | **POST** /api/jobs/{job_id}/cancel/ | 
[**createJob**](JobsApi.md#createjob) | **POST** /api/jobs/ | 
[**getJob**](JobsApi.md#getjob) | **GET** /api/jobs/{job_id}/ | 
[**listJob**](JobsApi.md#listjob) | **GET** /api/jobs/ | 


# **cancelJob**
> JobTypeJob cancelJob(jobId)



Cancels a job. Note: you can cancel only a scheduled or a job that is already running. The user requesting must be the owner of the job to cancel.

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

final api_instance = JobsApi();
final jobId = 56; // int | The job id to cancel.

try {
    final result = api_instance.cancelJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling JobsApi->cancelJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **int**| The job id to cancel. | 

### Return type

[**JobTypeJob**](JobTypeJob.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createJob**
> JobTypeJob createJob(jobTypeCreateJob)



Creates a new job. This job runs asynchronously in the background and execute the task specific to the provided typeparameters. The `get_job` can be used to get the current state of the job.

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

final api_instance = JobsApi();
final jobTypeCreateJob = JobTypeCreateJob(); // JobTypeCreateJob | 

try {
    final result = api_instance.createJob(jobTypeCreateJob);
    print(result);
} catch (e) {
    print('Exception when calling JobsApi->createJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobTypeCreateJob** | [**JobTypeCreateJob**](JobTypeCreateJob.md)|  | [optional] 

### Return type

[**JobTypeJob**](JobTypeJob.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> JobTypeJob getJob(jobId)



Returns the information related to the provided job id. This endpoint can for example be polled to get the state and progress of the job in real time.

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

final api_instance = JobsApi();
final jobId = 56; // int | The job id to lookup information about.

try {
    final result = api_instance.getJob(jobId);
    print(result);
} catch (e) {
    print('Exception when calling JobsApi->getJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **int**| The job id to lookup information about. | 

### Return type

[**JobTypeJob**](JobTypeJob.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listJob**
> List<JobTypeJob> listJob(jobIds, states)



List all existing jobs. Jobs are task executed asynchronously in the background. You can use the `get_job` endpoint to read the currentprogress of a the job.

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

final api_instance = JobsApi();
final jobIds = jobIds_example; // String | A comma separated list of job ids in the desired order.The jobs will be returned in the same order as the ids.If a job id is not found it will be ignored.
final states = states_example; // String | A comma separated list of jobs state to look for. The only possible values are: `pending`, `finished`, `failed` and `cancelled`. It's possible to exclude a state by prefixing it with a `!`. 

try {
    final result = api_instance.listJob(jobIds, states);
    print(result);
} catch (e) {
    print('Exception when calling JobsApi->listJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobIds** | **String**| A comma separated list of job ids in the desired order.The jobs will be returned in the same order as the ids.If a job id is not found it will be ignored. | [optional] 
 **states** | **String**| A comma separated list of jobs state to look for. The only possible values are: `pending`, `finished`, `failed` and `cancelled`. It's possible to exclude a state by prefixing it with a `!`.  | [optional] 

### Return type

[**List<JobTypeJob>**](JobTypeJob.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

