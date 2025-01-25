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

// tests for OpenPageWorkflowActionCreateBuilderWorkflowAction
void main() {
  // final instance = OpenPageWorkflowActionCreateBuilderWorkflowAction();

  group('test OpenPageWorkflowActionCreateBuilderWorkflowAction', () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the element the workflow action is associated with
    // int elementId
    test('to test the property `elementId`', () async {
      // TODO
    });

    // The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
    // Type051Enum type
    test('to test the property `type`', () async {
      // TODO
    });

    // The event that triggers the execution
    // String event
    test('to test the property `event`', () async {
      // TODO
    });

    // The navigation type.  * `page` - Page * `custom` - Custom
    // NavigationTypeEnum navigationType
    test('to test the property `navigationType`', () async {
      // TODO
    });

    // ('Destination page id for this link. If null then we use the navigate_to_url property instead.',)
    // int navigateToPageId
    test('to test the property `navigateToPageId`', () async {
      // TODO
    });

    // If no page is selected, this indicate the destination of the link.
    // String navigateToUrl (default value: '')
    test('to test the property `navigateToUrl`', () async {
      // TODO
    });

    // The parameters for each parameters of the selected page if any.
    // List<PageParameterValue> pageParameters (default value: const [])
    test('to test the property `pageParameters`', () async {
      // TODO
    });

    // The target of the link when we click on it.  * `self` - Self * `blank` - Blank
    // TargetEnum target
    test('to test the property `target`', () async {
      // TODO
    });


  });

}
