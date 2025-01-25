//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateViewFilter {
  /// Returns a new [CreateViewFilter] instance.
  CreateViewFilter({
    required this.field,
    required this.type,
    this.value = '',
    this.group,
  });

  /// The field of which the value must be compared to the filter value.
  int field;

  /// Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`).  * `equal` - equal * `not_equal` - not_equal * `filename_contains` - filename_contains * `files_lower_than` - files_lower_than * `has_file_type` - has_file_type * `contains` - contains * `contains_not` - contains_not * `contains_word` - contains_word * `doesnt_contain_word` - doesnt_contain_word * `length_is_lower_than` - length_is_lower_than * `higher_than` - higher_than * `higher_than_or_equal` - higher_than_or_equal * `lower_than` - lower_than * `lower_than_or_equal` - lower_than_or_equal * `is_even_and_whole` - is_even_and_whole * `date_equal` - date_equal * `date_before` - date_before * `date_before_or_equal` - date_before_or_equal * `date_after_days_ago` - date_after_days_ago * `date_after` - date_after * `date_after_or_equal` - date_after_or_equal * `date_not_equal` - date_not_equal * `date_equals_today` - date_equals_today * `date_before_today` - date_before_today * `date_after_today` - date_after_today * `date_within_days` - date_within_days * `date_within_weeks` - date_within_weeks * `date_within_months` - date_within_months * `date_equals_days_ago` - date_equals_days_ago * `date_equals_months_ago` - date_equals_months_ago * `date_equals_years_ago` - date_equals_years_ago * `date_equals_week` - date_equals_week * `date_equals_month` - date_equals_month * `date_equals_day_of_month` - date_equals_day_of_month * `date_equals_year` - date_equals_year * `date_is` - date_is * `date_is_not` - date_is_not * `date_is_before` - date_is_before * `date_is_on_or_before` - date_is_on_or_before * `date_is_after` - date_is_after * `date_is_on_or_after` - date_is_on_or_after * `date_is_within` - date_is_within * `single_select_equal` - single_select_equal * `single_select_not_equal` - single_select_not_equal * `single_select_is_any_of` - single_select_is_any_of * `single_select_is_none_of` - single_select_is_none_of * `link_row_has` - link_row_has * `link_row_has_not` - link_row_has_not * `link_row_contains` - link_row_contains * `link_row_not_contains` - link_row_not_contains * `boolean` - boolean * `empty` - empty * `not_empty` - not_empty * `multiple_select_has` - multiple_select_has * `multiple_select_has_not` - multiple_select_has_not * `multiple_collaborators_has` - multiple_collaborators_has * `multiple_collaborators_has_not` - multiple_collaborators_has_not * `user_is` - user_is * `user_is_not` - user_is_not * `has_value_equal` - has_value_equal * `has_not_value_equal` - has_not_value_equal * `has_value_contains` - has_value_contains * `has_not_value_contains` - has_not_value_contains * `has_value_contains_word` - has_value_contains_word * `has_not_value_contains_word` - has_not_value_contains_word * `has_value_length_is_lower_than` - has_value_length_is_lower_than * `has_all_values_equal` - has_all_values_equal * `has_empty_value` - has_empty_value * `has_not_empty_value` - has_not_empty_value * `has_any_select_option_equal` - has_any_select_option_equal * `has_none_select_option_equal` - has_none_select_option_equal
  Type2e6Enum type;

  /// The filter value that must be compared to the field's value.
  String value;

  /// The id of the filter group the new filter will belong to. If this is null, the filter will not be part of a filter group, but directly part of the view.
  int? group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateViewFilter &&
    other.field == field &&
    other.type == type &&
    other.value == value &&
    other.group == group;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (type.hashCode) +
    (value.hashCode) +
    (group == null ? 0 : group!.hashCode);

  @override
  String toString() => 'CreateViewFilter[field=$field, type=$type, value=$value, group=$group]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'type'] = this.type;
      json[r'value'] = this.value;
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    return json;
  }

  /// Returns a new [CreateViewFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateViewFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateViewFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateViewFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateViewFilter(
        field: mapValueOfType<int>(json, r'field')!,
        type: Type2e6Enum.fromJson(json[r'type'])!,
        value: mapValueOfType<String>(json, r'value') ?? '',
        group: mapValueOfType<int>(json, r'group'),
      );
    }
    return null;
  }

  static List<CreateViewFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateViewFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateViewFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateViewFilter> mapFromJson(dynamic json) {
    final map = <String, CreateViewFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateViewFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateViewFilter-objects as value to a dart map
  static Map<String, List<CreateViewFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateViewFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateViewFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
    'type',
  };
}

