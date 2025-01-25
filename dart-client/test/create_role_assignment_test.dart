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

// tests for CreateRoleAssignment
void main() {
  // final instance = CreateRoleAssignment();

  group('test CreateRoleAssignment', () {
    // The subject ID. A subject is an actor that can do operations.
    // int subjectId
    test('to test the property `subjectId`', () async {
      // TODO
    });

    // The subject type.  * `auth.User` - auth.User * `anonymous` - anonymous * `user_source.user` - user_source.user * `core.Token` - core.Token * `baserow_enterprise.Team` - baserow_enterprise.Team
    // SubjectType398Enum subjectType
    test('to test the property `subjectType`', () async {
      // TODO
    });

    // The uid of the role you want to assign to the user or team in the given workspace. You can omit this property if you want to remove the role.
    // String role
    test('to test the property `role`', () async {
      // TODO
    });

    // The ID of the scope object. The scope object limit the role assignment to this scope and all its descendants.
    // int scopeId
    test('to test the property `scopeId`', () async {
      // TODO
    });

    // The scope object type.  * `core` - core * `application` - application * `workspace` - workspace * `workspace_invitation` - workspace_invitation * `snapshot` - snapshot * `workspace_user` - workspace_user * `integration` - integration * `user_source` - user_source * `database` - database * `database_table` - database_table * `database_field` - database_field * `database_view` - database_view * `database_view_decoration` - database_view_decoration * `database_view_sort` - database_view_sort * `database_view_group` - database_view_group * `database_view_filter` - database_view_filter * `database_view_filter_group` - database_view_filter_group * `token` - token * `builder` - builder * `builder_page` - builder_page * `builder_element` - builder_element * `builder_domain` - builder_domain * `builder_data_source` - builder_data_source * `builder_workflow_action` - builder_workflow_action * `team` - team * `team_subject` - team_subject * `license` - license
    // ScopeTypeEnum scopeType
    test('to test the property `scopeType`', () async {
      // TODO
    });


  });

}
