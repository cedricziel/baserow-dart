import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:test/test.dart';

void main() {
  group('RowFilter', () {
    test('serializes basic comparison filters correctly', () {
      final filters = [
        RowFilter(field: 'name', operator: FilterOperator.equal, value: 'John'),
        RowFilter(
            field: 'name', operator: FilterOperator.notEqual, value: 'John'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"equal"'));
      expect(json, contains('"type":"not_equal"'));
    });

    test('serializes date filters correctly', () {
      final filters = [
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIs,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsNot,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsBefore,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsOnOrBefore,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsAfter,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsOnOrAfter,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateIsWithin,
            value: 'UTC??today'),
        RowFilter(
            field: 'date',
            operator: FilterOperator.dateEqualsDayOfMonth,
            value: '1'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"date_is"'));
      expect(json, contains('"type":"date_is_not"'));
      expect(json, contains('"type":"date_is_before"'));
      expect(json, contains('"type":"date_is_on_or_before"'));
      expect(json, contains('"type":"date_is_after"'));
      expect(json, contains('"type":"date_is_on_or_after"'));
      expect(json, contains('"type":"date_is_within"'));
      expect(json, contains('"type":"date_equals_day_of_month"'));
    });

    test('serializes value comparison filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasEmptyValue,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasNotEmptyValue,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasValueEqual,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasNotValueEqual,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasValueContains,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasNotValueContains,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasValueContainsWord,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasNotValueContainsWord,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasValueLengthIsLowerThan,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasAllValuesEqual,
            value: 'test'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"has_empty_value"'));
      expect(json, contains('"type":"has_not_empty_value"'));
      expect(json, contains('"type":"has_value_equal"'));
      expect(json, contains('"type":"has_not_value_equal"'));
      expect(json, contains('"type":"has_value_contains"'));
      expect(json, contains('"type":"has_not_value_contains"'));
      expect(json, contains('"type":"has_value_contains_word"'));
      expect(json, contains('"type":"has_not_value_contains_word"'));
      expect(json, contains('"type":"has_value_length_is_lower_than"'));
      expect(json, contains('"type":"has_all_values_equal"'));
    });

    test('serializes text filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field', operator: FilterOperator.contains, value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.containsNot,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.containsWord,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.doesntContainWord,
            value: 'test'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"contains"'));
      expect(json, contains('"type":"contains_not"'));
      expect(json, contains('"type":"contains_word"'));
      expect(json, contains('"type":"doesnt_contain_word"'));
    });

    test('serializes file filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field',
            operator: FilterOperator.filenameContains,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.hasFileType,
            value: 'image'),
        RowFilter(
            field: 'field', operator: FilterOperator.filesLowerThan, value: 2),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"filename_contains"'));
      expect(json, contains('"type":"has_file_type"'));
      expect(json, contains('"type":"files_lower_than"'));
    });

    test('serializes numeric filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field', operator: FilterOperator.higherThan, value: 100),
        RowFilter(
            field: 'field',
            operator: FilterOperator.higherThanOrEqual,
            value: 100),
        RowFilter(
            field: 'field', operator: FilterOperator.lowerThan, value: 100),
        RowFilter(
            field: 'field',
            operator: FilterOperator.lowerThanOrEqual,
            value: 100),
        RowFilter(
            field: 'field',
            operator: FilterOperator.lengthIsLowerThan,
            value: 5),
        RowFilter(
            field: 'field',
            operator: FilterOperator.isEvenAndWhole,
            value: true),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"higher_than"'));
      expect(json, contains('"type":"higher_than_or_equal"'));
      expect(json, contains('"type":"lower_than"'));
      expect(json, contains('"type":"lower_than_or_equal"'));
      expect(json, contains('"type":"length_is_lower_than"'));
      expect(json, contains('"type":"is_even_and_whole"'));
    });

    test('serializes select filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field',
            operator: FilterOperator.singleSelectEqual,
            value: 1),
        RowFilter(
            field: 'field',
            operator: FilterOperator.singleSelectNotEqual,
            value: 1),
        RowFilter(
            field: 'field',
            operator: FilterOperator.singleSelectIsAnyOf,
            value: '1,2'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.singleSelectIsNoneOf,
            value: '1,2'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"single_select_equal"'));
      expect(json, contains('"type":"single_select_not_equal"'));
      expect(json, contains('"type":"single_select_is_any_of"'));
      expect(json, contains('"type":"single_select_is_none_of"'));
    });

    test('serializes boolean filter correctly', () {
      final filter = RowFilter(
          field: 'field', operator: FilterOperator.boolean, value: true);
      final json = jsonEncode(filter.toJson());
      expect(json, contains('"type":"boolean"'));
    });

    test('serializes link row filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field', operator: FilterOperator.linkRowHas, value: 1),
        RowFilter(
            field: 'field', operator: FilterOperator.linkRowHasNot, value: 1),
        RowFilter(
            field: 'field',
            operator: FilterOperator.linkRowContains,
            value: 'test'),
        RowFilter(
            field: 'field',
            operator: FilterOperator.linkRowNotContains,
            value: 'test'),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"link_row_has"'));
      expect(json, contains('"type":"link_row_has_not"'));
      expect(json, contains('"type":"link_row_contains"'));
      expect(json, contains('"type":"link_row_not_contains"'));
    });

    test('serializes multi-select filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field',
            operator: FilterOperator.multipleSelectHas,
            value: 1),
        RowFilter(
            field: 'field',
            operator: FilterOperator.multipleSelectHasNot,
            value: 1),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"multiple_select_has"'));
      expect(json, contains('"type":"multiple_select_has_not"'));
    });

    test('serializes collaborator filters correctly', () {
      final filters = [
        RowFilter(
            field: 'field',
            operator: FilterOperator.multipleCollaboratorsHas,
            value: 1),
        RowFilter(
            field: 'field',
            operator: FilterOperator.multipleCollaboratorsHasNot,
            value: 1),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"multiple_collaborators_has"'));
      expect(json, contains('"type":"multiple_collaborators_has_not"'));
    });

    test('serializes empty/not empty filters correctly', () {
      final filters = [
        RowFilter(field: 'field', operator: FilterOperator.empty),
        RowFilter(field: 'field', operator: FilterOperator.notEmpty),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"empty"'));
      expect(json, contains('"type":"not_empty"'));
    });

    test('serializes user filters correctly', () {
      final filters = [
        RowFilter(field: 'field', operator: FilterOperator.userIs, value: 1),
        RowFilter(field: 'field', operator: FilterOperator.userIsNot, value: 1),
      ];

      final json = jsonEncode(filters.map((f) => f.toJson()).toList());
      expect(json, contains('"type":"user_is"'));
      expect(json, contains('"type":"user_is_not"'));
    });
  });
}
