//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableWebhooksApi {
  DatabaseTableWebhooksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new webhook for the table related to the provided `table_id` parameter if the authorized user has access to the related database workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a webhook for the table related to the provided value.
  ///
  /// * [TableWebhookCreateRequest] tableWebhookCreateRequest (required):
  Future<Response> createDatabaseTableWebhookWithHttpInfo(int tableId, TableWebhookCreateRequest tableWebhookCreateRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tableWebhookCreateRequest;

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

  /// Creates a new webhook for the table related to the provided `table_id` parameter if the authorized user has access to the related database workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a webhook for the table related to the provided value.
  ///
  /// * [TableWebhookCreateRequest] tableWebhookCreateRequest (required):
  Future<TableWebhook?> createDatabaseTableWebhook(int tableId, TableWebhookCreateRequest tableWebhookCreateRequest,) async {
    final response = await createDatabaseTableWebhookWithHttpInfo(tableId, tableWebhookCreateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TableWebhook',) as TableWebhook;
    
    }
    return null;
  }

  /// Deletes the existing webhook if the authorized user has access to the related database's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Deletes the webhook related to the provided value.
  Future<Response> deleteDatabaseTableWebhookWithHttpInfo(int webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/{webhook_id}/'
      .replaceAll('{webhook_id}', webhookId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes the existing webhook if the authorized user has access to the related database's workspace.
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Deletes the webhook related to the provided value.
  Future<void> deleteDatabaseTableWebhook(int webhookId,) async {
    final response = await deleteDatabaseTableWebhookWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the existing webhook if the authorized user has access to the related database workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Returns the webhook related to the provided value.
  Future<Response> getDatabaseTableWebhookWithHttpInfo(int webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/{webhook_id}/'
      .replaceAll('{webhook_id}', webhookId.toString());

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

  /// Returns the existing webhook if the authorized user has access to the related database workspace.
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Returns the webhook related to the provided value.
  Future<TableWebhook?> getDatabaseTableWebhook(int webhookId,) async {
    final response = await getDatabaseTableWebhookWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TableWebhook',) as TableWebhook;
    
    }
    return null;
  }

  /// Lists all webhooks of the table related to the provided `table_id` if the user has access to the related database workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only webhooks of the table related to this value.
  Future<Response> listDatabaseTableWebhooksWithHttpInfo(int tableId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

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

  /// Lists all webhooks of the table related to the provided `table_id` if the user has access to the related database workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only webhooks of the table related to this value.
  Future<List<TableWebhook>?> listDatabaseTableWebhooks(int tableId,) async {
    final response = await listDatabaseTableWebhooksWithHttpInfo(tableId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TableWebhook>') as List)
        .cast<TableWebhook>()
        .toList(growable: false);

    }
    return null;
  }

  /// This endpoint triggers a test call based on the provided data if the user has access to the workspace related to the table. The test call will be made immediately and a copy of the request, response and status will be included in the response.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The id of the table that must be tested.
  ///
  /// * [TableWebhookTestCallRequest] tableWebhookTestCallRequest (required):
  Future<Response> testCallDatabaseTableWebhookWithHttpInfo(int tableId, TableWebhookTestCallRequest tableWebhookTestCallRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/table/{table_id}/test-call/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = tableWebhookTestCallRequest;

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

  /// This endpoint triggers a test call based on the provided data if the user has access to the workspace related to the table. The test call will be made immediately and a copy of the request, response and status will be included in the response.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   The id of the table that must be tested.
  ///
  /// * [TableWebhookTestCallRequest] tableWebhookTestCallRequest (required):
  Future<TableWebhookTestCallResponse?> testCallDatabaseTableWebhook(int tableId, TableWebhookTestCallRequest tableWebhookTestCallRequest,) async {
    final response = await testCallDatabaseTableWebhookWithHttpInfo(tableId, tableWebhookTestCallRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TableWebhookTestCallResponse',) as TableWebhookTestCallResponse;
    
    }
    return null;
  }

  /// Updates the existing view if the authorized user has access to the related database workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Updates the webhook related to the provided value.
  ///
  /// * [PatchedTableWebhookUpdateRequest] patchedTableWebhookUpdateRequest:
  Future<Response> updateDatabaseTableWebhookWithHttpInfo(int webhookId, { PatchedTableWebhookUpdateRequest? patchedTableWebhookUpdateRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/webhooks/{webhook_id}/'
      .replaceAll('{webhook_id}', webhookId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedTableWebhookUpdateRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates the existing view if the authorized user has access to the related database workspace.
  ///
  /// Parameters:
  ///
  /// * [int] webhookId (required):
  ///   Updates the webhook related to the provided value.
  ///
  /// * [PatchedTableWebhookUpdateRequest] patchedTableWebhookUpdateRequest:
  Future<TableWebhook?> updateDatabaseTableWebhook(int webhookId, { PatchedTableWebhookUpdateRequest? patchedTableWebhookUpdateRequest, }) async {
    final response = await updateDatabaseTableWebhookWithHttpInfo(webhookId,  patchedTableWebhookUpdateRequest: patchedTableWebhookUpdateRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TableWebhook',) as TableWebhook;
    
    }
    return null;
  }
}
