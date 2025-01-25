//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class NotificationsApi {
  NotificationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clear all the notifications for the given workspace and user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notifications are in.
  Future<Response> clearWorkspaceNotificationsWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/notifications/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Clear all the notifications for the given workspace and user.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notifications are in.
  Future<void> clearWorkspaceNotifications(int workspaceId,) async {
    final response = await clearWorkspaceNotificationsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists the notifications for the given workspace and the current user. The response is paginated and the limit and offset parameters can be controlled using the query parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace id that the notifications belong to.
  ///
  /// * [int] limit:
  ///   Defines how many notifications should be returned.
  ///
  /// * [int] offset:
  ///   Defines the offset of the notifications that should be returned.
  Future<Response> listWorkspaceNotificationsWithHttpInfo(int workspaceId, { int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/notifications/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Lists the notifications for the given workspace and the current user. The response is paginated and the limit and offset parameters can be controlled using the query parameters.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace id that the notifications belong to.
  ///
  /// * [int] limit:
  ///   Defines how many notifications should be returned.
  ///
  /// * [int] offset:
  ///   Defines the offset of the notifications that should be returned.
  Future<PaginationSerializerNotificationRecipient?> listWorkspaceNotifications(int workspaceId, { int? limit, int? offset, }) async {
    final response = await listWorkspaceNotificationsWithHttpInfo(workspaceId,  limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerNotificationRecipient',) as PaginationSerializerNotificationRecipient;
    
    }
    return null;
  }

  /// Mark as read all the notifications for the given workspace and user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notifications are in.
  Future<Response> markAllWorkspaceNotificationsAsReadWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/notifications/{workspace_id}/mark-all-as-read/'
      .replaceAll('{workspace_id}', workspaceId.toString());

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

  /// Mark as read all the notifications for the given workspace and user.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notifications are in.
  Future<void> markAllWorkspaceNotificationsAsRead(int workspaceId,) async {
    final response = await markAllWorkspaceNotificationsAsReadWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Marks a notification as read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   The notification id to update.
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notification is in.
  Future<Response> markNotificationAsReadWithHttpInfo(int notificationId, int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/notifications/{workspace_id}/{notification_id}/'
      .replaceAll('{notification_id}', notificationId.toString())
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Marks a notification as read.
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   The notification id to update.
  ///
  /// * [int] workspaceId (required):
  ///   The workspace the notification is in.
  Future<NotificationRecipient?> markNotificationAsRead(int notificationId, int workspaceId,) async {
    final response = await markNotificationAsReadWithHttpInfo(notificationId, workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NotificationRecipient',) as NotificationRecipient;
    
    }
    return null;
  }
}
