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


/// tests for ApplicationsApi
void main() {
  // final instance = ApplicationsApi();

  group('tests for ApplicationsApi', () {
    // Deletes an application if the authorized user is in the application's workspace. All the related children are also going to be deleted. For example in case of a database application all the underlying tables, fields, views and rows are going to be deleted.
    //
    //Future deleteApplication(int applicationId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteApplication', () async {
      // TODO
    });

    // Duplicate an application if the authorized user is in the application's workspace. All the related children are also going to be duplicated. For example in case of a database application all the underlying tables, fields, views and rows are going to be duplicated.
    //
    //Future<DuplicateApplicationJobTypeResponse> duplicateApplicationAsync(int applicationId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test duplicateApplicationAsync', () async {
      // TODO
    });

    // Lists all the applications that the authorized user has access to. The properties that belong to the application can differ per type. An application always belongs to a single workspace. All the applications of the workspaces that the user has access to are going to be listed here.
    //
    //Future<List<ApplicationApplication>> listAllApplications() async
    test('test listAllApplications', () async {
      // TODO
    });

    // Updates the existing application related to the provided `application_id` param if the authorized user is in the application's workspace. It is not possible to change the type, but properties like the name can be changed.
    //
    //Future<ApplicationApplication> updateApplication(int applicationId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedApplicationBaseApplicationUpdatePolymorphic patchedApplicationBaseApplicationUpdatePolymorphic }) async
    test('test updateApplication', () async {
      // TODO
    });

    // Creates a new application based on the provided type. The newly created application is going to be added to the workspace related to the provided `workspace_id` parameter. If the authorized user does not belong to the workspace an error will be returned.
    //
    //Future<ApplicationApplication> workspaceCreateApplication(int workspaceId, { String clientSessionId, String clientUndoRedoActionGroupId, ApplicationBaseApplicationCreatePolymorphic applicationBaseApplicationCreatePolymorphic }) async
    test('test workspaceCreateApplication', () async {
      // TODO
    });

    // Returns the requested application if the authorized user is in the application's workspace. The properties that belong to the application can differ per type.
    //
    //Future<ApplicationApplication> workspaceGetApplication(int applicationId) async
    test('test workspaceGetApplication', () async {
      // TODO
    });

    // Lists all the applications of the workspace related to the provided `workspace_id` parameter if the authorized user is in that workspace. If theworkspace is related to a template, then this endpoint will be publicly accessible. The properties that belong to the application can differ per type. An application always belongs to a single workspace.
    //
    //Future<List<ApplicationApplication>> workspaceListApplications(int workspaceId) async
    test('test workspaceListApplications', () async {
      // TODO
    });

    // Changes the order of the provided application ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order of the not provided tables will be set to `0`.
    //
    //Future workspaceOrderApplications(int workspaceId, OrderApplications orderApplications, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test workspaceOrderApplications', () async {
      // TODO
    });

  });
}
