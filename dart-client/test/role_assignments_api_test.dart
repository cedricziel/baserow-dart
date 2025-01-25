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


/// tests for RoleAssignmentsApi
void main() {
  // final instance = RoleAssignmentsApi();

  group('tests for RoleAssignmentsApi', () {
    // You can assign a role to a subject into the given workspace for the given scope with this endpoint. If you want to remove the role you can omit the role property.
    //
    //Future<OpenApiRoleAssignment> assignRole(int workspaceId, CreateRoleAssignment createRoleAssignment) async
    test('test assignRole', () async {
      // TODO
    });

    // You can assign a role to a multiple subjects into the given workspace for the given scopes with this endpoint. If you want to remove the role you can omit the role property.
    //
    //Future<List<OpenApiRoleAssignment>> batchAssignRole(int workspaceId, BatchCreateRoleAssignment batchCreateRoleAssignment) async
    test('test batchAssignRole', () async {
      // TODO
    });

    // You can list the role assignments within a workspace, optionally filtered downto a specific scope inside of that workspace. If the scope isn't specified,the workspace will be considered the scope.
    //
    //Future<List<OpenApiRoleAssignment>> listRoleAssignments(int workspaceId, { int scopeId, String scopeType }) async
    test('test listRoleAssignments', () async {
      // TODO
    });

  });
}
