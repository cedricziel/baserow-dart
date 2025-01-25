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


/// tests for DatabaseTokensApi
void main() {
  // final instance = DatabaseTokensApi();

  group('tests for DatabaseTokensApi', () {
    // This endpoint check be used to check if the provided personal API token is valid. If returns a `200` response if so and a `403` is not. This can be used by integrations like Zapier or n8n to test if a token is valid.
    //
    //Future checkDatabaseToken() async
    test('test checkDatabaseToken', () async {
      // TODO
    });

    // Creates a new database token for a given workspace and for the authorized user.
    //
    //Future<Token> createDatabaseToken(TokenCreate tokenCreate) async
    test('test createDatabaseToken', () async {
      // TODO
    });

    // Deletes the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
    //
    //Future deleteDatabaseToken(int tokenId) async
    test('test deleteDatabaseToken', () async {
      // TODO
    });

    // Returns the requested database token if it is owned by the authorized user andif the user has access to the related workspace.
    //
    //Future<Token> getDatabaseToken(int tokenId) async
    test('test getDatabaseToken', () async {
      // TODO
    });

    // Lists all the database tokens that belong to the authorized user. A token can be used to create, read, update and delete rows in the tables of the token's workspace. It only works on the tables if the token has the correct permissions. The **Database table rows** endpoints can be used for these operations.
    //
    //Future<List<Token>> listDatabaseTokens() async
    test('test listDatabaseTokens', () async {
      // TODO
    });

    // Updates the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
    //
    //Future<Token> updateDatabaseToken(int tokenId, { PatchedTokenUpdate patchedTokenUpdate }) async
    test('test updateDatabaseToken', () async {
      // TODO
    });

  });
}
