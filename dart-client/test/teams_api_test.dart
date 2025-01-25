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


/// tests for TeamsApi
void main() {
  // final instance = TeamsApi();

  group('tests for TeamsApi', () {
    // Creates a new team subject.
    //
    //Future<TeamSubjectResponse> createSubject(String teamId, TeamSubject teamSubject, { String clientSessionId }) async
    test('test createSubject', () async {
      // TODO
    });

    // Deletes a subject if the authorized user is in the team's workspace.
    //
    //Future deleteSubject(int subjectId, int teamId, { String clientSessionId }) async
    test('test deleteSubject', () async {
      // TODO
    });

    // Deletes a team if the authorized user is in the team's workspace. All the related children (e.g. subjects) are also going to be deleted.
    //
    //Future deleteTeam(int teamId, { String clientSessionId }) async
    test('test deleteTeam', () async {
      // TODO
    });

    // Returns the information related to the provided subject id
    //
    //Future<TeamSubjectResponse> getSubject(int subjectId, String teamId) async
    test('test getSubject', () async {
      // TODO
    });

    // Returns the information related to the provided team id.
    //
    //Future<TeamResponse> getTeam(int teamId) async
    test('test getTeam', () async {
      // TODO
    });

    // Lists all team subjects in a given team.
    //
    //Future<List<TeamSubjectResponse>> listTeamSubjects(String teamId) async
    test('test listTeamSubjects', () async {
      // TODO
    });

    // Updates an existing team with a new name.
    //
    //Future<TeamResponse> updateTeam(String teamId, Team team, { String clientSessionId }) async
    test('test updateTeam', () async {
      // TODO
    });

    // Creates a new team.
    //
    //Future<TeamResponse> workspaceCreateTeam(String workspaceId, Team team, { String clientSessionId }) async
    test('test workspaceCreateTeam', () async {
      // TODO
    });

    // Lists all teams in a given workspace.
    //
    //Future<List<TeamResponse>> workspaceListTeams(int workspaceId, { String search, String sorts }) async
    test('test workspaceListTeams', () async {
      // TODO
    });

  });
}
