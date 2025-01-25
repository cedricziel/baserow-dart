//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class AuditLogApi {
  AuditLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [SingleAuditLogExportJobRequest] singleAuditLogExportJobRequest:
  Future<Response> asyncAuditLogExportWithHttpInfo({ String? clientSessionId, SingleAuditLogExportJobRequest? singleAuditLogExportJobRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/audit-log/export/';

    // ignore: prefer_final_locals
    Object? postBody = singleAuditLogExportJobRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }

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

  /// Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [SingleAuditLogExportJobRequest] singleAuditLogExportJobRequest:
  Future<SingleAuditLogExportJobResponse?> asyncAuditLogExport({ String? clientSessionId, SingleAuditLogExportJobRequest? singleAuditLogExportJobRequest, }) async {
    final response = await asyncAuditLogExportWithHttpInfo( clientSessionId: clientSessionId, singleAuditLogExportJobRequest: singleAuditLogExportJobRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SingleAuditLogExportJobResponse',) as SingleAuditLogExportJobResponse;
    
    }
    return null;
  }

  /// Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [SingleAuditLogExportJobRequest] singleAuditLogExportJobRequest:
  Future<Response> asyncAuditLogExport2WithHttpInfo({ String? clientSessionId, SingleAuditLogExportJobRequest? singleAuditLogExportJobRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/audit-log/export/';

    // ignore: prefer_final_locals
    Object? postBody = singleAuditLogExportJobRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }

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

  /// Creates a job to export the filtered audit log to a CSV file.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [SingleAuditLogExportJobRequest] singleAuditLogExportJobRequest:
  Future<SingleAuditLogExportJobResponse?> asyncAuditLogExport2({ String? clientSessionId, SingleAuditLogExportJobRequest? singleAuditLogExportJobRequest, }) async {
    final response = await asyncAuditLogExport2WithHttpInfo( clientSessionId: clientSessionId, singleAuditLogExportJobRequest: singleAuditLogExportJobRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SingleAuditLogExportJobResponse',) as SingleAuditLogExportJobResponse;
    
    }
    return null;
  }

  /// List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] search:
  ///   If provided only action_types with name that match the query will be returned.
  ///
  /// * [int] workspaceId:
  ///   Return action types related to the workspace.
  Future<Response> auditLogActionTypesWithHttpInfo({ String? search, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/audit-log/action-types/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] search:
  ///   If provided only action_types with name that match the query will be returned.
  ///
  /// * [int] workspaceId:
  ///   Return action types related to the workspace.
  Future<List<AuditLogActionType>?> auditLogActionTypes({ String? search, int? workspaceId, }) async {
    final response = await auditLogActionTypesWithHttpInfo( search: search, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AuditLogActionType>') as List)
        .cast<AuditLogActionType>()
        .toList(growable: false);

    }
    return null;
  }

  /// List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] search:
  ///   If provided only action_types with name that match the query will be returned.
  ///
  /// * [int] workspaceId:
  ///   Return action types related to the workspace.
  Future<Response> auditLogActionTypes2WithHttpInfo({ String? search, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/audit-log/action-types/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// List all distinct action types related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] search:
  ///   If provided only action_types with name that match the query will be returned.
  ///
  /// * [int] workspaceId:
  ///   Return action types related to the workspace.
  Future<List<AuditLogActionType>?> auditLogActionTypes2({ String? search, int? workspaceId, }) async {
    final response = await auditLogActionTypes2WithHttpInfo( search: search, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AuditLogActionType>') as List)
        .cast<AuditLogActionType>()
        .toList(growable: false);

    }
    return null;
  }

  /// Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] actionType:
  ///   Filter the audit log entries by action type.
  ///
  /// * [String] fromTimestamp:
  ///   The ISO timestamp to filter the audit log entries from.
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [int] size:
  ///   Defines how many audit log entries should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  ///
  /// * [String] toTimestamp:
  ///   The ISO timestamp to filter the audit log entries to.
  ///
  /// * [int] userId:
  ///   Filter the audit log entries by user id.
  ///
  /// * [int] workspaceId:
  ///   Filter the audit log entries by workspace id. This filter works only for the admin audit log.
  Future<Response> auditLogListWithHttpInfo({ String? actionType, String? fromTimestamp, int? page, int? size, String? sorts, String? toTimestamp, int? userId, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/audit-log/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (actionType != null) {
      queryParams.addAll(_queryParams('', 'action_type', actionType));
    }
    if (fromTimestamp != null) {
      queryParams.addAll(_queryParams('', 'from_timestamp', fromTimestamp));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sorts != null) {
      queryParams.addAll(_queryParams('', 'sorts', sorts));
    }
    if (toTimestamp != null) {
      queryParams.addAll(_queryParams('', 'to_timestamp', toTimestamp));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] actionType:
  ///   Filter the audit log entries by action type.
  ///
  /// * [String] fromTimestamp:
  ///   The ISO timestamp to filter the audit log entries from.
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [int] size:
  ///   Defines how many audit log entries should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  ///
  /// * [String] toTimestamp:
  ///   The ISO timestamp to filter the audit log entries to.
  ///
  /// * [int] userId:
  ///   Filter the audit log entries by user id.
  ///
  /// * [int] workspaceId:
  ///   Filter the audit log entries by workspace id. This filter works only for the admin audit log.
  Future<PaginationSerializerAuditLog?> auditLogList({ String? actionType, String? fromTimestamp, int? page, int? size, String? sorts, String? toTimestamp, int? userId, int? workspaceId, }) async {
    final response = await auditLogListWithHttpInfo( actionType: actionType, fromTimestamp: fromTimestamp, page: page, size: size, sorts: sorts, toTimestamp: toTimestamp, userId: userId, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLog',) as PaginationSerializerAuditLog;
    
    }
    return null;
  }

  /// Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] actionType:
  ///   Filter the audit log entries by action type.
  ///
  /// * [String] fromTimestamp:
  ///   The ISO timestamp to filter the audit log entries from.
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [int] size:
  ///   Defines how many audit log entries should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  ///
  /// * [String] toTimestamp:
  ///   The ISO timestamp to filter the audit log entries to.
  ///
  /// * [int] userId:
  ///   Filter the audit log entries by user id.
  ///
  /// * [int] workspaceId:
  ///   Filter the audit log entries by workspace id. This filter works only for the admin audit log.
  Future<Response> auditLogList2WithHttpInfo({ String? actionType, String? fromTimestamp, int? page, int? size, String? sorts, String? toTimestamp, int? userId, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/audit-log/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (actionType != null) {
      queryParams.addAll(_queryParams('', 'action_type', actionType));
    }
    if (fromTimestamp != null) {
      queryParams.addAll(_queryParams('', 'from_timestamp', fromTimestamp));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sorts != null) {
      queryParams.addAll(_queryParams('', 'sorts', sorts));
    }
    if (toTimestamp != null) {
      queryParams.addAll(_queryParams('', 'to_timestamp', toTimestamp));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'user_id', userId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// Lists all audit log entries for the given workspace id.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [String] actionType:
  ///   Filter the audit log entries by action type.
  ///
  /// * [String] fromTimestamp:
  ///   The ISO timestamp to filter the audit log entries from.
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [int] size:
  ///   Defines how many audit log entries should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `user, workspace, type, timestamp, ip_address`. For example `sorts=-user,-workspace` will sort the audit log entries first by descending user and then ascending workspace. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  ///
  /// * [String] toTimestamp:
  ///   The ISO timestamp to filter the audit log entries to.
  ///
  /// * [int] userId:
  ///   Filter the audit log entries by user id.
  ///
  /// * [int] workspaceId:
  ///   Filter the audit log entries by workspace id. This filter works only for the admin audit log.
  Future<PaginationSerializerAuditLog?> auditLogList2({ String? actionType, String? fromTimestamp, int? page, int? size, String? sorts, String? toTimestamp, int? userId, int? workspaceId, }) async {
    final response = await auditLogList2WithHttpInfo( actionType: actionType, fromTimestamp: fromTimestamp, page: page, size: size, sorts: sorts, toTimestamp: toTimestamp, userId: userId, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLog',) as PaginationSerializerAuditLog;
    
    }
    return null;
  }

  /// List all users that have performed an action in the audit log.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with email that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [int] workspaceId:
  ///   Return users belonging to the given workspace_id.
  Future<Response> auditLogUsersWithHttpInfo({ int? page, String? search, int? size, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/audit-log/users/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// List all users that have performed an action in the audit log.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with email that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [int] workspaceId:
  ///   Return users belonging to the given workspace_id.
  Future<PaginationSerializerAuditLogUser?> auditLogUsers({ int? page, String? search, int? size, int? workspaceId, }) async {
    final response = await auditLogUsersWithHttpInfo( page: page, search: search, size: size, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLogUser',) as PaginationSerializerAuditLogUser;
    
    }
    return null;
  }

  /// List all users that have performed an action in the audit log.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with email that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [int] workspaceId:
  ///   Return users belonging to the given workspace_id.
  Future<Response> auditLogUsers2WithHttpInfo({ int? page, String? search, int? size, int? workspaceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/audit-log/users/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspace_id', workspaceId));
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

  /// List all users that have performed an action in the audit log.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with email that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [int] workspaceId:
  ///   Return users belonging to the given workspace_id.
  Future<PaginationSerializerAuditLogUser?> auditLogUsers2({ int? page, String? search, int? size, int? workspaceId, }) async {
    final response = await auditLogUsers2WithHttpInfo( page: page, search: search, size: size, workspaceId: workspaceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLogUser',) as PaginationSerializerAuditLogUser;
    
    }
    return null;
  }

  /// List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  Future<Response> auditLogWorkspacesWithHttpInfo({ int? page, String? search, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/audit-log/workspaces/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  Future<PaginationSerializerAuditLogWorkspace?> auditLogWorkspaces({ int? page, String? search, int? size, }) async {
    final response = await auditLogWorkspacesWithHttpInfo( page: page, search: search, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLogWorkspace',) as PaginationSerializerAuditLogWorkspace;
    
    }
    return null;
  }

  /// List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  Future<Response> auditLogWorkspaces2WithHttpInfo({ int? page, String? search, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/audit-log/workspaces/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// List all distinct workspace names related to an audit log entry.  This is a **enterprise** feature.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  Future<PaginationSerializerAuditLogWorkspace?> auditLogWorkspaces2({ int? page, String? search, int? size, }) async {
    final response = await auditLogWorkspaces2WithHttpInfo( page: page, search: search, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerAuditLogWorkspace',) as PaginationSerializerAuditLogWorkspace;
    
    }
    return null;
  }
}
