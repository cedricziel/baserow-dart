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


/// tests for WorkspaceInvitationsApi
void main() {
  // final instance = WorkspaceInvitationsApi();

  group('tests for WorkspaceInvitationsApi', () {
    // Accepts a workspace invitation with the given id if the email address of the user matches that of the invitation.
    //
    //Future<WorkspaceUserWorkspace> acceptWorkspaceInvitation(int workspaceInvitationId) async
    test('test acceptWorkspaceInvitation', () async {
      // TODO
    });

    // Creates a new workspace invitations for an email address if the authorized user has admin rights to the related workspace. An email containing a sign up link will be send to the user.
    //
    //Future<WorkspaceInvitation> createWorkspaceInvitation(int workspaceId, CreateWorkspaceInvitation createWorkspaceInvitation) async
    test('test createWorkspaceInvitation', () async {
      // TODO
    });

    // Deletes a workspace invitation if the authorized user has admin rights to the related workspace.
    //
    //Future deleteWorkspaceInvitation(int workspaceInvitationId) async
    test('test deleteWorkspaceInvitation', () async {
      // TODO
    });

    // Returns the requested workspace invitation if the authorized user has admin right to the related workspace
    //
    //Future<WorkspaceInvitation> getWorkspaceInvitation(int workspaceInvitationId) async
    test('test getWorkspaceInvitation', () async {
      // TODO
    });

    // Responds with the serialized workspace invitation if an invitation with the provided token is found.
    //
    //Future<UserWorkspaceInvitation> getWorkspaceInvitationByToken(String token) async
    test('test getWorkspaceInvitationByToken', () async {
      // TODO
    });

    // Lists all the workspace invitations of the workspace related to the provided `workspace_id` parameter if the authorized user has admin rights to that workspace.
    //
    //Future<List<WorkspaceInvitation>> listWorkspaceInvitations(int workspaceId) async
    test('test listWorkspaceInvitations', () async {
      // TODO
    });

    // Rejects a workspace invitation with the given id if the email address of the user matches that of the invitation.
    //
    //Future rejectWorkspaceInvitation(int workspaceInvitationId) async
    test('test rejectWorkspaceInvitation', () async {
      // TODO
    });

    // Updates the existing workspace invitation related to the provided `workspace_invitation_id` param if the authorized user has admin rights to the related workspace.
    //
    //Future<WorkspaceInvitation> updateWorkspaceInvitation(int workspaceInvitationId, { PatchedUpdateWorkspaceInvitation patchedUpdateWorkspaceInvitation }) async
    test('test updateWorkspaceInvitation', () async {
      // TODO
    });

  });
}
