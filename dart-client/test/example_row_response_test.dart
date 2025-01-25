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

// tests for ExampleRowResponse
void main() {
  // final instance = ExampleRowResponse();

  group('test ExampleRowResponse', () {
    // The unique identifier of the row in the table.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // Indicates the position of the row, lowest first and highest last.
    // double order
    test('to test the property `order`', () async {
      // TODO
    });

    // This field represents the `text` field. The number in field_1 is in a normal request or response the id of the field. 
    // String field1
    test('to test the property `field1`', () async {
      // TODO
    });

    // This field represents the `long_text` field. The number in field_2 is in a normal request or response the id of the field. 
    // String field2
    test('to test the property `field2`', () async {
      // TODO
    });

    // This field represents the `url` field. The number in field_3 is in a normal request or response the id of the field. 
    // String field3
    test('to test the property `field3`', () async {
      // TODO
    });

    // This field represents the `email` field. The number in field_4 is in a normal request or response the id of the field. 
    // String field4
    test('to test the property `field4`', () async {
      // TODO
    });

    // This field represents the `number` field. The number in field_5 is in a normal request or response the id of the field. 
    // double field5
    test('to test the property `field5`', () async {
      // TODO
    });

    // This field represents the `rating` field. The number in field_6 is in a normal request or response the id of the field. 
    // int field6 (default value: 0)
    test('to test the property `field6`', () async {
      // TODO
    });

    // This field represents the `boolean` field. The number in field_7 is in a normal request or response the id of the field. 
    // bool field7 (default value: false)
    test('to test the property `field7`', () async {
      // TODO
    });

    // This field represents the `date` field. The number in field_8 is in a normal request or response the id of the field. 
    // DateTime field8
    test('to test the property `field8`', () async {
      // TODO
    });

    // This field represents the `last_modified` field. The number in field_9 is in a normal request or response the id of the field. 
    // DateTime field9
    test('to test the property `field9`', () async {
      // TODO
    });

    // This field represents the `last_modified_by` field. The number in field_10 is in a normal request or response the id of the field. 
    // Collaborator field10
    test('to test the property `field10`', () async {
      // TODO
    });

    // This field represents the `created_on` field. The number in field_11 is in a normal request or response the id of the field. 
    // DateTime field11
    test('to test the property `field11`', () async {
      // TODO
    });

    // This field represents the `created_by` field. The number in field_12 is in a normal request or response the id of the field. 
    // Collaborator field12
    test('to test the property `field12`', () async {
      // TODO
    });

    // This field represents the `duration` field. The number in field_13 is in a normal request or response the id of the field. The provided value can be a string in one of the available formats or a number representing the duration in seconds. In any case, the value will be rounded to match the field's duration format.
    // double field13
    test('to test the property `field13`', () async {
      // TODO
    });

    // This field represents the `link_row` field. The number in field_14 is in a normal request or response the id of the field. This field accepts an `array` containing the ids or the names of the related rows. A name is the value of the primary key of the related row. This field also accepts a string with names separated by a comma or an array of row names. You can also provide a unique row Id.The response contains a list of objects containing the `id` and the primary field's `value` as a string for display purposes.
    // List<LinkRowValue> field14 (default value: const [])
    test('to test the property `field14`', () async {
      // TODO
    });

    // This field represents the `file` field. The number in field_15 is in a normal request or response the id of the field. This field accepts an `array` containing objects with the name of the file. The response contains an `array` of more detailed objects related to the files.
    // List<FileFieldResponse> field15 (default value: const [])
    test('to test the property `field15`', () async {
      // TODO
    });

    // This field represents the `single_select` field. The number in field_16 is in a normal request or response the id of the field. This field accepts an `integer` representing the chosen select option id related to the field. Available ids can be found when getting or listing the field. The response represents chosen field, but also the value and color is exposed.
    // SelectOption field16
    test('to test the property `field16`', () async {
      // TODO
    });

    // This field represents the `multiple_select` field. The number in field_17 is in a normal request or response the id of the field. This field accepts a list of `integer` each of which representing the chosen select option id related to the field. Available ids can be foundwhen getting or listing the field. You can also send a list of option names in which case the option are searched by name. The first one that matches is used. This field also accepts a string with names separated by a comma or an array of file names. The response represents chosen field, but also the value and color is exposed.
    // List<SelectOption> field17 (default value: const [])
    test('to test the property `field17`', () async {
      // TODO
    });

    // This field represents the `phone_number` field. The number in field_18 is in a normal request or response the id of the field. 
    // String field18
    test('to test the property `field18`', () async {
      // TODO
    });

    // This field represents the `formula` field. The number in field_19 is in a normal request or response the id of the field. 
    // String field19
    test('to test the property `field19`', () async {
      // TODO
    });

    // This field represents the `count` field. The number in field_20 is in a normal request or response the id of the field. 
    // String field20
    test('to test the property `field20`', () async {
      // TODO
    });

    // This field represents the `rollup` field. The number in field_21 is in a normal request or response the id of the field. 
    // String field21
    test('to test the property `field21`', () async {
      // TODO
    });

    // This field represents the `lookup` field. The number in field_22 is in a normal request or response the id of the field. 
    // String field22
    test('to test the property `field22`', () async {
      // TODO
    });

    // This field represents the `multiple_collaborators` field. The number in field_23 is in a normal request or response the id of the field. This field accepts a list of objects representing the chosen collaborators through the object's `id` property. The id is Baserow user id. The response objects also contains the collaborator name directly along with its id.
    // List<Collaborator> field23 (default value: const [])
    test('to test the property `field23`', () async {
      // TODO
    });

    // This field represents the `uuid` field. The number in field_24 is in a normal request or response the id of the field. Contains a unique and persistent UUID for every row.
    // String field24
    test('to test the property `field24`', () async {
      // TODO
    });

    // This field represents the `autonumber` field. The number in field_25 is in a normal request or response the id of the field. Contains a unique and persistent incremental integer number for every row.
    // int field25
    test('to test the property `field25`', () async {
      // TODO
    });

    // This field represents the `password` field. The number in field_26 is in a normal request or response the id of the field. Allows setting a write only password value. Providing a string will set the password, `null` will unset it, `true` will be ignored. The response will respond with `true` is a password is set, but will never expose the password itself.
    // bool field26
    test('to test the property `field26`', () async {
      // TODO
    });

    // This field represents the `ai` field. The number in field_27 is in a normal request or response the id of the field. Holds a value that is generated by a generative AI model using a dynamic prompt.
    // String field27
    test('to test the property `field27`', () async {
      // TODO
    });


  });

}
