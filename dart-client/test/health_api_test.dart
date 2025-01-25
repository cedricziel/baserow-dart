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


/// tests for HealthApi
void main() {
  // final instance = HealthApi();

  group('tests for HealthApi', () {
    // Health check endpoint to check if the the celery and/or export celery queue has  exceeded the maximum healthy size. Responds with `200` if there there are less than 10 in all queues provided. Otherwise responds with a `503`.
    //
    //Future celeryQueueSizeCheck({ String queue }) async
    test('test celeryQueueSizeCheck', () async {
      // TODO
    });

    // Sends a test email to the provided email address. Useful for testing Baserow's email configuration as errors are clearly returned.
    //
    //Future<EmailTesterResponse> emailTester(EmailTesterRequest emailTesterRequest) async
    test('test emailTester', () async {
      // TODO
    });

    // Runs a full health check testing as many services and systems as possible. These health checks can be expensive operations such as writing files to storage etc.
    //
    //Future<FullHealthCheck> fullHealthCheck() async
    test('test fullHealthCheck', () async {
      // TODO
    });

  });
}
