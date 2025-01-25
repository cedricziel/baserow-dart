//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class JobsApi {
  JobsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancels a job. Note: you can cancel only a scheduled or a job that is already running. The user requesting must be the owner of the job to cancel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to cancel.
  Future<Response> cancelJobWithHttpInfo(int jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/jobs/{job_id}/cancel/'
      .replaceAll('{job_id}', jobId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancels a job. Note: you can cancel only a scheduled or a job that is already running. The user requesting must be the owner of the job to cancel.
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to cancel.
  Future<JobTypeJob?> cancelJob(int jobId,) async {
    final response = await cancelJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobTypeJob',) as JobTypeJob;
    
    }
    return null;
  }

  /// Creates a new job. This job runs asynchronously in the background and execute the task specific to the provided typeparameters. The `get_job` can be used to get the current state of the job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JobTypeCreateJob] jobTypeCreateJob:
  Future<Response> createJobWithHttpInfo({ JobTypeCreateJob? jobTypeCreateJob, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/jobs/';

    // ignore: prefer_final_locals
    Object? postBody = jobTypeCreateJob;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new job. This job runs asynchronously in the background and execute the task specific to the provided typeparameters. The `get_job` can be used to get the current state of the job.
  ///
  /// Parameters:
  ///
  /// * [JobTypeCreateJob] jobTypeCreateJob:
  Future<JobTypeJob?> createJob({ JobTypeCreateJob? jobTypeCreateJob, }) async {
    final response = await createJobWithHttpInfo( jobTypeCreateJob: jobTypeCreateJob, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobTypeJob',) as JobTypeJob;
    
    }
    return null;
  }

  /// Returns the information related to the provided job id. This endpoint can for example be polled to get the state and progress of the job in real time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to lookup information about.
  Future<Response> getJobWithHttpInfo(int jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/jobs/{job_id}/'
      .replaceAll('{job_id}', jobId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the information related to the provided job id. This endpoint can for example be polled to get the state and progress of the job in real time.
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to lookup information about.
  Future<JobTypeJob?> getJob(int jobId,) async {
    final response = await getJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobTypeJob',) as JobTypeJob;
    
    }
    return null;
  }

  /// List all existing jobs. Jobs are task executed asynchronously in the background. You can use the `get_job` endpoint to read the currentprogress of a the job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobIds:
  ///   A comma separated list of job ids in the desired order.The jobs will be returned in the same order as the ids.If a job id is not found it will be ignored.
  ///
  /// * [String] states:
  ///   A comma separated list of jobs state to look for. The only possible values are: `pending`, `finished`, `failed` and `cancelled`. It's possible to exclude a state by prefixing it with a `!`. 
  Future<Response> listJobWithHttpInfo({ String? jobIds, String? states, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/jobs/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jobIds != null) {
      queryParams.addAll(_queryParams('', 'job_ids', jobIds));
    }
    if (states != null) {
      queryParams.addAll(_queryParams('', 'states', states));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all existing jobs. Jobs are task executed asynchronously in the background. You can use the `get_job` endpoint to read the currentprogress of a the job.
  ///
  /// Parameters:
  ///
  /// * [String] jobIds:
  ///   A comma separated list of job ids in the desired order.The jobs will be returned in the same order as the ids.If a job id is not found it will be ignored.
  ///
  /// * [String] states:
  ///   A comma separated list of jobs state to look for. The only possible values are: `pending`, `finished`, `failed` and `cancelled`. It's possible to exclude a state by prefixing it with a `!`. 
  Future<List<JobTypeJob>?> listJob({ String? jobIds, String? states, }) async {
    final response = await listJobWithHttpInfo( jobIds: jobIds, states: states, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<JobTypeJob>') as List)
        .cast<JobTypeJob>()
        .toList(growable: false);

    }
    return null;
  }
}
