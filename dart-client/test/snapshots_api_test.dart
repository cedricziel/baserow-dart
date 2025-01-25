//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for SnapshotsApi
void main() {
  // final instance = SnapshotsApi();

  group('tests for SnapshotsApi', () {
    // Creates a new application snapshot. Snapshots represent a state of an application at a specific point in time and can be restored later, making it easy to create backups of entire applications.
    //
    //Future<Job> createSnapshot(int applicationId, Snapshot snapshot) async
    test('test createSnapshot', () async {
      // TODO
    });

    // Deletes a snapshot. Deleting a snapshot doesn't affect the application that the snapshot is made from and doesn't affect any applications that were created by restoring it. Snapshot deletion is permanent and can't be undone.
    //
    //Future deleteSnapshot(int snapshotId) async
    test('test deleteSnapshot', () async {
      // TODO
    });

    // Lists snapshots that were created for a given application.
    //
    //Future<List<Snapshot>> listSnapshots(int applicationId) async
    test('test listSnapshots', () async {
      // TODO
    });

    // Restores a snapshot. When an application snapshot is restored, a new application will be created in the same workspace that the original application was placed in with the name of the snapshot and data that were in the original application at the time the snapshot was taken. The original application that the snapshot was taken from is unaffected. Snapshots can be restored multiple times and a number suffix is added to the new application name in the case of a collision.
    //
    //Future<Job> restoreSnapshot(int snapshotId) async
    test('test restoreSnapshot', () async {
      // TODO
    });

  });
}
