//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableExportApi {
  DatabaseTableExportApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates and starts a new export job for a table given some exporter options. Returns an error if the requesting user does not have permissionsto view the table.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table id to create and start an export job for
  ///
  /// * [ModelExport] modelExport:
  Future<Response> exportTableWithHttpInfo(int tableId, { ModelExport? modelExport, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/export/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = modelExport;

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

  /// Creates and starts a new export job for a table given some exporter options. Returns an error if the requesting user does not have permissionsto view the table.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The table id to create and start an export job for
  ///
  /// * [ModelExport] modelExport:
  Future<ExportJob?> exportTable(int tableId, { ModelExport? modelExport, }) async {
    final response = await exportTableWithHttpInfo(tableId,  modelExport: modelExport, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportJob',) as ExportJob;
    
    }
    return null;
  }

  /// Returns information such as export progress and state or the url of the exported file for the specified export job, only if the requesting user has access.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to lookup information about.
  Future<Response> getExportJobWithHttpInfo(int jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/export/{job_id}/'
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

  /// Returns information such as export progress and state or the url of the exported file for the specified export job, only if the requesting user has access.
  ///
  /// Parameters:
  ///
  /// * [int] jobId (required):
  ///   The job id to lookup information about.
  Future<ExportJob?> getExportJob(int jobId,) async {
    final response = await getExportJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportJob',) as ExportJob;
    
    }
    return null;
  }
}
