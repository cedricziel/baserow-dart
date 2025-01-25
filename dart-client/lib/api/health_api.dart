//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class HealthApi {
  HealthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Health check endpoint to check if the the celery and/or export celery queue has  exceeded the maximum healthy size. Responds with `200` if there there are less than 10 in all queues provided. Otherwise responds with a `503`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] queue:
  ///   The name of the queues to check. Can be provided multiple times. Accepts either `celery` or `export`.
  Future<Response> celeryQueueSizeCheckWithHttpInfo({ String? queue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/_health/celery-queue/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (queue != null) {
      queryParams.addAll(_queryParams('', 'queue', queue));
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

  /// Health check endpoint to check if the the celery and/or export celery queue has  exceeded the maximum healthy size. Responds with `200` if there there are less than 10 in all queues provided. Otherwise responds with a `503`.
  ///
  /// Parameters:
  ///
  /// * [String] queue:
  ///   The name of the queues to check. Can be provided multiple times. Accepts either `celery` or `export`.
  Future<void> celeryQueueSizeCheck({ String? queue, }) async {
    final response = await celeryQueueSizeCheckWithHttpInfo( queue: queue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sends a test email to the provided email address. Useful for testing Baserow's email configuration as errors are clearly returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [EmailTesterRequest] emailTesterRequest (required):
  Future<Response> emailTesterWithHttpInfo(EmailTesterRequest emailTesterRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/_health/email/';

    // ignore: prefer_final_locals
    Object? postBody = emailTesterRequest;

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

  /// Sends a test email to the provided email address. Useful for testing Baserow's email configuration as errors are clearly returned.
  ///
  /// Parameters:
  ///
  /// * [EmailTesterRequest] emailTesterRequest (required):
  Future<EmailTesterResponse?> emailTester(EmailTesterRequest emailTesterRequest,) async {
    final response = await emailTesterWithHttpInfo(emailTesterRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailTesterResponse',) as EmailTesterResponse;
    
    }
    return null;
  }

  /// Runs a full health check testing as many services and systems as possible. These health checks can be expensive operations such as writing files to storage etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> fullHealthCheckWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/_health/full/';

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

  /// Runs a full health check testing as many services and systems as possible. These health checks can be expensive operations such as writing files to storage etc.
  Future<FullHealthCheck?> fullHealthCheck() async {
    final response = await fullHealthCheckWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FullHealthCheck',) as FullHealthCheck;
    
    }
    return null;
  }
}
