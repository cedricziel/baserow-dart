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


/// tests for IntegrationsApi
void main() {
  // final instance = IntegrationsApi();

  group('tests for IntegrationsApi', () {
    // Creates a new integration
    //
    //Future<IntegrationIntegration> createApplicationIntegration(int applicationId, { String clientSessionId, IntegrationCreateIntegration integrationCreateIntegration }) async
    test('test createApplicationIntegration', () async {
      // TODO
    });

    // Deletes the integration related by the given id.
    //
    //Future deleteApplicationIntegration(int integrationId, { String clientSessionId }) async
    test('test deleteApplicationIntegration', () async {
      // TODO
    });

    // Lists all the integrations of the application related to the provided parameter if the user has access to the related application's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
    //
    //Future<List<IntegrationIntegration>> listApplicationIntegrations(int applicationId) async
    test('test listApplicationIntegrations', () async {
      // TODO
    });

    // Moves the integration in the application before another integration or at the end of the application if no before integration is given. The integrations must belong to the same application.
    //
    //Future<IntegrationIntegration> moveApplicationIntegration(int integrationId, { String clientSessionId, PatchedMoveIntegration patchedMoveIntegration }) async
    test('test moveApplicationIntegration', () async {
      // TODO
    });

    // Updates an existing integration.
    //
    //Future<IntegrationIntegration> updateApplicationIntegration(int integrationId, { String clientSessionId, LocalBaserowIntegrationUpdateIntegration body }) async
    test('test updateApplicationIntegration', () async {
      // TODO
    });

  });
}
