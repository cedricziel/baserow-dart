//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FormViewFieldOptionsConditionGroup {
  /// Returns a new [FormViewFieldOptionsConditionGroup] instance.
  FormViewFieldOptionsConditionGroup({
    required this.id,
    this.filterType,
    this.parentGroup,
  });

  int id;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR) in the group to be shown.  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  int? parentGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormViewFieldOptionsConditionGroup &&
    other.id == id &&
    other.filterType == filterType &&
    other.parentGroup == parentGroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (parentGroup == null ? 0 : parentGroup!.hashCode);

  @override
  String toString() => 'FormViewFieldOptionsConditionGroup[id=$id, filterType=$filterType, parentGroup=$parentGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
    if (this.parentGroup != null) {
      json[r'parent_group'] = this.parentGroup;
    } else {
      json[r'parent_group'] = null;
    }
    return json;
  }

  /// Returns a new [FormViewFieldOptionsConditionGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormViewFieldOptionsConditionGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormViewFieldOptionsConditionGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormViewFieldOptionsConditionGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormViewFieldOptionsConditionGroup(
        id: mapValueOfType<int>(json, r'id')!,
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        parentGroup: mapValueOfType<int>(json, r'parent_group'),
      );
    }
    return null;
  }

  static List<FormViewFieldOptionsConditionGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormViewFieldOptionsConditionGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormViewFieldOptionsConditionGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormViewFieldOptionsConditionGroup> mapFromJson(dynamic json) {
    final map = <String, FormViewFieldOptionsConditionGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormViewFieldOptionsConditionGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormViewFieldOptionsConditionGroup-objects as value to a dart map
  static Map<String, List<FormViewFieldOptionsConditionGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormViewFieldOptionsConditionGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormViewFieldOptionsConditionGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

