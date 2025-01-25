//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class SnapshotsApi {
  SnapshotsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new application snapshot. Snapshots represent a state of an application at a specific point in time and can be restored later, making it easy to create backups of entire applications.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Application ID for which to list snapshots.
  ///
  /// * [Snapshot] snapshot (required):
  Future<Response> createSnapshotWithHttpInfo(int applicationId, Snapshot snapshot,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/snapshots/application/{application_id}/'
      .replaceAll('{application_id}', applicationId.toString());

    // ignore: prefer_final_locals
    Object? postBody = snapshot;

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

  /// Creates a new application snapshot. Snapshots represent a state of an application at a specific point in time and can be restored later, making it easy to create backups of entire applications.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Application ID for which to list snapshots.
  ///
  /// * [Snapshot] snapshot (required):
  Future<Job?> createSnapshot(int applicationId, Snapshot snapshot,) async {
    final response = await createSnapshotWithHttpInfo(applicationId, snapshot,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Job',) as Job;
    
    }
    return null;
  }

  /// Deletes a snapshot. Deleting a snapshot doesn't affect the application that the snapshot is made from and doesn't affect any applications that were created by restoring it. Snapshot deletion is permanent and can't be undone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] snapshotId (required):
  ///   Id of the snapshot to delete.
  Future<Response> deleteSnapshotWithHttpInfo(int snapshotId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/snapshots/{snapshot_id}/'
      .replaceAll('{snapshot_id}', snapshotId.toString());

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

  /// Deletes a snapshot. Deleting a snapshot doesn't affect the application that the snapshot is made from and doesn't affect any applications that were created by restoring it. Snapshot deletion is permanent and can't be undone.
  ///
  /// Parameters:
  ///
  /// * [int] snapshotId (required):
  ///   Id of the snapshot to delete.
  Future<void> deleteSnapshot(int snapshotId,) async {
    final response = await deleteSnapshotWithHttpInfo(snapshotId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lists snapshots that were created for a given application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Application ID for which to list snapshots.
  Future<Response> listSnapshotsWithHttpInfo(int applicationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/snapshots/application/{application_id}/'
      .replaceAll('{application_id}', applicationId.toString());

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

  /// Lists snapshots that were created for a given application.
  ///
  /// Parameters:
  ///
  /// * [int] applicationId (required):
  ///   Application ID for which to list snapshots.
  Future<List<Snapshot>?> listSnapshots(int applicationId,) async {
    final response = await listSnapshotsWithHttpInfo(applicationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Snapshot>') as List)
        .cast<Snapshot>()
        .toList(growable: false);

    }
    return null;
  }

  /// Restores a snapshot. When an application snapshot is restored, a new application will be created in the same workspace that the original application was placed in with the name of the snapshot and data that were in the original application at the time the snapshot was taken. The original application that the snapshot was taken from is unaffected. Snapshots can be restored multiple times and a number suffix is added to the new application name in the case of a collision.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] snapshotId (required):
  ///   Id of the snapshot to restore.
  Future<Response> restoreSnapshotWithHttpInfo(int snapshotId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/snapshots/{snapshot_id}/restore/'
      .replaceAll('{snapshot_id}', snapshotId.toString());

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

  /// Restores a snapshot. When an application snapshot is restored, a new application will be created in the same workspace that the original application was placed in with the name of the snapshot and data that were in the original application at the time the snapshot was taken. The original application that the snapshot was taken from is unaffected. Snapshots can be restored multiple times and a number suffix is added to the new application name in the case of a collision.
  ///
  /// Parameters:
  ///
  /// * [int] snapshotId (required):
  ///   Id of the snapshot to restore.
  Future<Job?> restoreSnapshot(int snapshotId,) async {
    final response = await restoreSnapshotWithHttpInfo(snapshotId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Job',) as Job;
    
    }
    return null;
  }
}
