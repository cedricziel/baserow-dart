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

// tests for TableWebhookTestCallRequest
void main() {
  // final instance = TableWebhookTestCallRequest();

  group('test TableWebhookTestCallRequest', () {
    // The URL that must be called when the webhook is triggered.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The event type that must be used for the test call.  * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted
    // EventTypeEnum eventType
    test('to test the property `eventType`', () async {
      // TODO
    });

    // The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete
    // RequestMethodEnum requestMethod
    test('to test the property `requestMethod`', () async {
      // TODO
    });

    // The additional headers as an object where the key is the name and the value the value.
    // Map<String, Object> headers (default value: const {})
    test('to test the property `headers`', () async {
      // TODO
    });

    // Indicates whether the field names must be used as payload key instead of the id.
    // bool useUserFieldNames
    test('to test the property `useUserFieldNames`', () async {
      // TODO
    });


  });

}
