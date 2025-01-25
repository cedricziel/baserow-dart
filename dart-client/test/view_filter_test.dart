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

// tests for ViewFilter
void main() {
  // final instance = ViewFilter();

  group('test ViewFilter', () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The view to which the filter applies. Each view can have his own filters.
    // int view
    test('to test the property `view`', () async {
      // TODO
    });

    // The field of which the value must be compared to the filter value.
    // int field
    test('to test the property `field`', () async {
      // TODO
    });

    // Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`).
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The filter value that must be compared to the field's value.
    // String value
    test('to test the property `value`', () async {
      // TODO
    });

    // Can contain unique preloaded values per filter. This is for example used by the `link_row_has` filter to communicate the display name if a value is provided.
    // Map<String, Object> preloadValues (default value: const {})
    test('to test the property `preloadValues`', () async {
      // TODO
    });

    // The id of the filter group this filter belongs to. If this is null, the filter is not part of a filter group.
    // int group
    test('to test the property `group`', () async {
      // TODO
    });


  });

}
