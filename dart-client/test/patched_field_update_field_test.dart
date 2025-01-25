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

// tests for PatchedFieldUpdateField
void main() {
  // final instance = PatchedFieldUpdateField();

  group('test PatchedFieldUpdateField', () {
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Type6ebEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // Field description
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // If set, this value is going to be added every time a new row created.
    // String textDefault
    test('to test the property `textDefault`', () async {
      // TODO
    });

    // Enable rich text formatting for the field.
    // bool longTextEnableRichText
    test('to test the property `longTextEnableRichText`', () async {
      // TODO
    });

    // NumberDecimalPlacesEnum numberDecimalPlaces
    test('to test the property `numberDecimalPlaces`', () async {
      // TODO
    });

    // Indicates if negative values are allowed.
    // bool numberNegative
    test('to test the property `numberNegative`', () async {
      // TODO
    });

    // The prefix to use for the field.
    // String numberPrefix
    test('to test the property `numberPrefix`', () async {
      // TODO
    });

    // The suffix to use for the field.
    // String numberSuffix
    test('to test the property `numberSuffix`', () async {
      // TODO
    });

    // CountFieldCreateFieldNumberSeparator numberSeparator
    test('to test the property `numberSeparator`', () async {
      // TODO
    });

    // Maximum value the rating can take.
    // int maxValue
    test('to test the property `maxValue`', () async {
      // TODO
    });

    // Color of the symbols.
    // String color
    test('to test the property `color`', () async {
      // TODO
    });

    // Rating style. Allowed values: star, heart, thumbs-up, flag, smile.  * `star` - Star * `heart` - Heart * `thumbs-up` - Thumbs-up * `flag` - Flags * `smile` - Smile
    // StyleEnum style
    test('to test the property `style`', () async {
      // TODO
    });

    // DateFormatEnum dateFormat
    test('to test the property `dateFormat`', () async {
      // TODO
    });

    // Indicates if the field also includes a time.
    // bool dateIncludeTime
    test('to test the property `dateIncludeTime`', () async {
      // TODO
    });

    // DateTimeFormatEnum dateTimeFormat
    test('to test the property `dateTimeFormat`', () async {
      // TODO
    });

    // Indicates if the time zone should be shown.
    // bool dateShowTzinfo
    test('to test the property `dateShowTzinfo`', () async {
      // TODO
    });

    // Force a timezone for the field overriding user profile settings.
    // String dateForceTimezone
    test('to test the property `dateForceTimezone`', () async {
      // TODO
    });

    // ('A UTC offset in minutes to add to all the field datetimes values.',)
    // int dateForceTimezoneOffset
    test('to test the property `dateForceTimezoneOffset`', () async {
      // TODO
    });

    // DurationFormatEnum durationFormat
    test('to test the property `durationFormat`', () async {
      // TODO
    });

    // The id of the linked table.
    // int linkRowTableId
    test('to test the property `linkRowTableId`', () async {
      // TODO
    });

    // (Deprecated) The id of the linked table.
    // int linkRowTable
    test('to test the property `linkRowTable`', () async {
      // TODO
    });

    // bool hasRelatedField
    test('to test the property `hasRelatedField`', () async {
      // TODO
    });

    // The ID of the view in the related table where row selection must be limited to.
    // int linkRowLimitSelectionViewId (default value: -1)
    test('to test the property `linkRowLimitSelectionViewId`', () async {
      // TODO
    });

    // List<SelectOption> selectOptions (default value: const [])
    test('to test the property `selectOptions`', () async {
      // TODO
    });

    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // ArrayFormulaTypeEnum arrayFormulaType
    test('to test the property `arrayFormulaType`', () async {
      // TODO
    });

    // bool nullable
    test('to test the property `nullable`', () async {
      // TODO
    });

    // String formula
    test('to test the property `formula`', () async {
      // TODO
    });

    // FormulaTypeEnum formulaType
    test('to test the property `formulaType`', () async {
      // TODO
    });

    // The id of the link row field to lookup values for. Will override the `through_field_name` parameter if both are provided, however only one is required.
    // int throughFieldId
    test('to test the property `throughFieldId`', () async {
      // TODO
    });

    // The id of the field in the table linked to by the through_field to lookup. Will override the `target_field_id` parameter if both are provided, however only one is required.
    // int targetFieldId
    test('to test the property `targetFieldId`', () async {
      // TODO
    });

    // The rollup formula function that must be applied.
    // String rollupFunction
    test('to test the property `rollupFunction`', () async {
      // TODO
    });

    // The name of the link row field to lookup values for.
    // String throughFieldName
    test('to test the property `throughFieldName`', () async {
      // TODO
    });

    // The name of the field in the table linked to by the through_field to lookup.
    // String targetFieldName
    test('to test the property `targetFieldName`', () async {
      // TODO
    });

    // bool notifyUserWhenAdded
    test('to test the property `notifyUserWhenAdded`', () async {
      // TODO
    });

    // The id of the view to use for the initial ordering.
    // int viewId
    test('to test the property `viewId`', () async {
      // TODO
    });

    // String aiGenerativeAiType
    test('to test the property `aiGenerativeAiType`', () async {
      // TODO
    });

    // String aiGenerativeAiModel
    test('to test the property `aiGenerativeAiModel`', () async {
      // TODO
    });

    // The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice
    // AiOutputTypeEnum aiOutputType
    test('to test the property `aiOutputType`', () async {
      // TODO
    });

    // Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity.
    // double aiTemperature
    test('to test the property `aiTemperature`', () async {
      // TODO
    });

    // The prompt that must run for each row. Must be an formula.
    // String aiPrompt (default value: '')
    test('to test the property `aiPrompt`', () async {
      // TODO
    });

    // File field that will be used as a knowledge base for the AI model.
    // int aiFileFieldId
    test('to test the property `aiFileFieldId`', () async {
      // TODO
    });


  });

}
