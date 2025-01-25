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


/// tests for WorkspacesApi
void main() {
  // final instance = WorkspacesApi();

  group('tests for WorkspacesApi', () {
    // Creates an initial workspace. This is typically called after the user signs up and skips the onboarding in the frontend. It contains some example data.
    //
    //Future<WorkspaceUserWorkspace> createInitialWorkspace() async
    test('test createInitialWorkspace', () async {
      // TODO
    });

    // Creates a new workspace where only the authorized user has access to. No initial data like database applications are added, they have to be created via other endpoints.
    //
    //Future<WorkspaceUserWorkspace> createWorkspace(Workspace workspace, { String clientSessionId }) async
    test('test createWorkspace', () async {
      // TODO
    });

    // Deletes an existing workspace if the authorized user belongs to the workspace. All the applications, databases, tables etc that were in the workspace are going to be deleted also.
    //
    //Future deleteWorkspace(int workspaceId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteWorkspace', () async {
      // TODO
    });

    // Deletes a workspace user if the authorized user has admin rights to the related workspace.
    //
    //Future deleteWorkspaceUser(int workspaceUserId) async
    test('test deleteWorkspaceUser', () async {
      // TODO
    });

    // Export workspace or set of applications application if the authorized user is in the application's workspace. All the related children are also going to be exported. For example in case of a database application all the underlying tables, fields, views and rows are going to be exported.Roles are not part of the export.
    //
    //Future<ExportApplicationsJobTypeResponse> exportWorkspaceApplicationsAsync(int workspaceId, { String clientSessionId }) async
    test('test exportWorkspaceApplicationsAsync', () async {
      // TODO
    });

    // Returns the generative AI models settings for the given workspace.
    //
    //Future<GenerativeAISettings> getWorkspaceGenerativeAiModelsSettings(String workspaceId) async
    test('test getWorkspaceGenerativeAiModelsSettings', () async {
      // TODO
    });

    // Delete a resource. This endpoint mark as ready for deletion the specified resource. This operation is not undoable. The user must be the owner of the resource to perform this action.
    //
    //Future importExportResource(String resourceId, String workspaceId) async
    test('test importExportResource', () async {
      // TODO
    });

    // Uploads an exported workspace or a set of applications if the authorized user is in the workspace. The uploaded file must be a valid ZIP file containing the applications' data for future import.
    //
    //Future<ImportResource> importResourceUploadFile(int workspaceId, { String clientSessionId }) async
    test('test importResourceUploadFile', () async {
      // TODO
    });

    // Import a set of applications included in a given resource if the authorized user is in the specified workspace. This endpoint requires a valid resource_id of the uploaded file.
    //
    //Future<ImportApplicationsJobTypeResponse> importWorkspaceApplicationsAsync(int workspaceId, { String clientSessionId }) async
    test('test importWorkspaceApplicationsAsync', () async {
      // TODO
    });

    // Makes the authenticated user leave the workspace related to the provided `workspace_id` if the user is in that workspace. If the user is the last admin in the workspace, they will not be able to leave it. There must always be one admin in the workspace, otherwise it will be left without control. If that is the case, they must either delete the workspace or give another member admin permissions first.
    //
    //Future leaveWorkspace(int workspaceId) async
    test('test leaveWorkspace', () async {
      // TODO
    });

    // Lists exports that were created for given workspace.
    //
    //Future<ListExportWorkspaceApplications> listWorkspaceExports(int workspaceId, { String clientSessionId }) async
    test('test listWorkspaceExports', () async {
      // TODO
    });

    // Lists all the users that are in a workspace if the authorized user has admin permissions to the related workspace. To add a user to a workspace an invitation must be sent first.
    //
    //Future<List<ListWorkspaceUsersWithMemberData>> listWorkspaceUsers(int workspaceId, { String search, String sorts }) async
    test('test listWorkspaceUsers', () async {
      // TODO
    });

    // Lists all the workspaces of the authorized user. A workspace can contain multiple applications like a database. Multiple users can have access to a workspace. For example each company could have their own workspace containing databases related to that company. The order of the workspaces are custom for each user. The order is configurable via the **order_workspaces** endpoint.
    //
    //Future<List<WorkspaceUserWorkspace>> listWorkspaces() async
    test('test listWorkspaces', () async {
      // TODO
    });

    // Changes the order of the provided workspace ids to the matching position that the id has in the list. If the authorized user does not belong to the workspace it will be ignored. The order will be custom for each user.
    //
    //Future orderWorkspaces(OrderWorkspaces orderWorkspaces, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test orderWorkspaces', () async {
      // TODO
    });

    // Updates the existing workspace related to the provided `workspace_id` parameter if the authorized user belongs to the workspace. It is not yet possible to add additional users to a workspace.
    //
    //Future<Workspace> updateWorkspace(int workspaceId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedWorkspace patchedWorkspace }) async
    test('test updateWorkspace', () async {
      // TODO
    });

    // Updates the generative AI models settings for the given workspace.
    //
    //Future<Workspace> updateWorkspaceGenerativeAiModelsSettings(int workspaceId, { String clientSessionId, PatchedGenerativeAISettings patchedGenerativeAISettings }) async
    test('test updateWorkspaceGenerativeAiModelsSettings', () async {
      // TODO
    });

    // Updates the existing workspace user related to the provided `workspace_user_id` param if the authorized user has admin rights to the related workspace.
    //
    //Future<WorkspaceUser> updateWorkspaceUser(int workspaceUserId, { PatchedUpdateWorkspaceUser patchedUpdateWorkspaceUser }) async
    test('test updateWorkspaceUser', () async {
      // TODO
    });

    // Returns a the permission data necessary to determine the permissions of a specific user over a specific workspace.  See `core.handler.CoreHandler.get_permissions()` for more details.
    //
    //Future<List<PermissionObject>> workspacePermissions(int workspaceId) async
    test('test workspacePermissions', () async {
      // TODO
    });

  });
}
