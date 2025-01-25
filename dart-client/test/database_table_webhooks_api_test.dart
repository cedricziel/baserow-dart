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


/// tests for DatabaseTableWebhooksApi
void main() {
  // final instance = DatabaseTableWebhooksApi();

  group('tests for DatabaseTableWebhooksApi', () {
    // Creates a new webhook for the table related to the provided `table_id` parameter if the authorized user has access to the related database workspace.
    //
    //Future<TableWebhook> createDatabaseTableWebhook(int tableId, TableWebhookCreateRequest tableWebhookCreateRequest) async
    test('test createDatabaseTableWebhook', () async {
      // TODO
    });

    // Deletes the existing webhook if the authorized user has access to the related database's workspace.
    //
    //Future deleteDatabaseTableWebhook(int webhookId) async
    test('test deleteDatabaseTableWebhook', () async {
      // TODO
    });

    // Returns the existing webhook if the authorized user has access to the related database workspace.
    //
    //Future<TableWebhook> getDatabaseTableWebhook(int webhookId) async
    test('test getDatabaseTableWebhook', () async {
      // TODO
    });

    // Lists all webhooks of the table related to the provided `table_id` if the user has access to the related database workspace.
    //
    //Future<List<TableWebhook>> listDatabaseTableWebhooks(int tableId) async
    test('test listDatabaseTableWebhooks', () async {
      // TODO
    });

    // This endpoint triggers a test call based on the provided data if the user has access to the workspace related to the table. The test call will be made immediately and a copy of the request, response and status will be included in the response.
    //
    //Future<TableWebhookTestCallResponse> testCallDatabaseTableWebhook(int tableId, TableWebhookTestCallRequest tableWebhookTestCallRequest) async
    test('test testCallDatabaseTableWebhook', () async {
      // TODO
    });

    // Updates the existing view if the authorized user has access to the related database workspace.
    //
    //Future<TableWebhook> updateDatabaseTableWebhook(int webhookId, { PatchedTableWebhookUpdateRequest patchedTableWebhookUpdateRequest }) async
    test('test updateDatabaseTableWebhook', () async {
      // TODO
    });

  });
}
