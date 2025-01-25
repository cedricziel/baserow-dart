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


/// tests for DatabaseTableViewDecorationsApi
void main() {
  // final instance = DatabaseTableViewDecorationsApi();

  group('tests for DatabaseTableViewDecorationsApi', () {
    // Creates a new decoration for the view related to the provided `view_id` parameter if the authorized user has access to the related database's workspace.
    //
    //Future<DecoratorValueProviderTypeViewDecoration> createDatabaseTableViewDecoration(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId, DecoratorValueProviderTypeCreateViewDecoration decoratorValueProviderTypeCreateViewDecoration }) async
    test('test createDatabaseTableViewDecoration', () async {
      // TODO
    });

    // Deletes the existing decoration if the authorized user has access to the related database's workspace.
    //
    //Future deleteDatabaseTableViewDecoration(int viewDecorationId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableViewDecoration', () async {
      // TODO
    });

    // Returns the existing view decoration if the current user has access to the related database's workspace.
    //
    //Future<DecoratorValueProviderTypeViewDecoration> getDatabaseTableViewDecoration(int viewDecorationId) async
    test('test getDatabaseTableViewDecoration', () async {
      // TODO
    });

    // Lists all decorations of the view related to the provided `view_id` if the user has access to the related database's workspace. A view can have multiple decorations. View decorators can be used to decorate rows. This can, for example, be used to change the border or background color of a row if it matches certain conditions.
    //
    //Future<List<DecoratorValueProviderTypeViewDecoration>> listDatabaseTableViewDecorations(int viewId) async
    test('test listDatabaseTableViewDecorations', () async {
      // TODO
    });

    // Updates the existing decoration if the authorized user has access to the related database's workspace.
    //
    //Future<DecoratorValueProviderTypeViewDecoration> updateDatabaseTableViewDecoration(int viewDecorationId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedDecoratorValueProviderTypeUpdateViewDecoration patchedDecoratorValueProviderTypeUpdateViewDecoration }) async
    test('test updateDatabaseTableViewDecoration', () async {
      // TODO
    });

  });
}
