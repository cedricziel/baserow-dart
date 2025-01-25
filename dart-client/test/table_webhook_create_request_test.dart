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

// tests for TableWebhookCreateRequest
void main() {
  // final instance = TableWebhookCreateRequest();

  group('test TableWebhookCreateRequest', () {
    // The URL that must be called when the webhook is triggered.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // Indicates whether this webhook should listen to all events.
    // bool includeAllEvents
    test('to test the property `includeAllEvents`', () async {
      // TODO
    });

    // A list containing the events that will trigger this webhook.
    // List<EventsEnum> events (default value: const [])
    test('to test the property `events`', () async {
      // TODO
    });

    // A list containing the addition event options.
    // List<TableWebhookEventConfig> eventConfig (default value: const [])
    test('to test the property `eventConfig`', () async {
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

    // An internal name of the webhook.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Indicates whether the field names must be used as payload key instead of the id.
    // bool useUserFieldNames
    test('to test the property `useUserFieldNames`', () async {
      // TODO
    });


  });

}
