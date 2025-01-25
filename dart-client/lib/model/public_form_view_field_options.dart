//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicFormViewFieldOptions {
  /// Returns a new [PublicFormViewFieldOptions] instance.
  PublicFormViewFieldOptions({
    required this.name,
    this.description,
    this.required_,
    this.order,
    required this.field,
    this.showWhenMatchingConditions,
    this.conditionType,
    this.conditions = const [],
    this.conditionGroups = const [],
    this.groups = const [],
    this.fieldComponent,
  });

  /// If provided, then this value will be visible above the field input.
  String name;

  /// If provided, then this value be will be shown under the field name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Indicates whether the field is required for the visitor to fill out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? required_;

  /// The order that the field has in the form. Lower value is first.
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  /// The properties of the related field. These can be used to construct the correct input. Additional properties could be added depending on the field type.
  PublicFormViewField field;

  /// Indicates whether this field is visible when the conditions are met.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showWhenMatchingConditions;

  /// Indicates whether all (AND) or any (OR) of the conditions should match before shown.  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? conditionType;

  List<FormViewFieldOptionsCondition> conditions;

  List<FormViewFieldOptionsConditionGroup> conditionGroups;

  List<FormViewFieldOptionsConditionGroup> groups;

  /// Indicates which field input component is used in the form. The value is only used in the frontend, and can differ per field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldComponent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicFormViewFieldOptions &&
    other.name == name &&
    other.description == description &&
    other.required_ == required_ &&
    other.order == order &&
    other.field == field &&
    other.showWhenMatchingConditions == showWhenMatchingConditions &&
    other.conditionType == conditionType &&
    _deepEquality.equals(other.conditions, conditions) &&
    _deepEquality.equals(other.conditionGroups, conditionGroups) &&
    _deepEquality.equals(other.groups, groups) &&
    other.fieldComponent == fieldComponent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (required_ == null ? 0 : required_!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (field.hashCode) +
    (showWhenMatchingConditions == null ? 0 : showWhenMatchingConditions!.hashCode) +
    (conditionType == null ? 0 : conditionType!.hashCode) +
    (conditions.hashCode) +
    (conditionGroups.hashCode) +
    (groups.hashCode) +
    (fieldComponent == null ? 0 : fieldComponent!.hashCode);

  @override
  String toString() => 'PublicFormViewFieldOptions[name=$name, description=$description, required_=$required_, order=$order, field=$field, showWhenMatchingConditions=$showWhenMatchingConditions, conditionType=$conditionType, conditions=$conditions, conditionGroups=$conditionGroups, groups=$groups, fieldComponent=$fieldComponent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
      json[r'field'] = this.field;
    if (this.showWhenMatchingConditions != null) {
      json[r'show_when_matching_conditions'] = this.showWhenMatchingConditions;
    } else {
      json[r'show_when_matching_conditions'] = null;
    }
    if (this.conditionType != null) {
      json[r'condition_type'] = this.conditionType;
    } else {
      json[r'condition_type'] = null;
    }
      json[r'conditions'] = this.conditions;
      json[r'condition_groups'] = this.conditionGroups;
      json[r'groups'] = this.groups;
    if (this.fieldComponent != null) {
      json[r'field_component'] = this.fieldComponent;
    } else {
      json[r'field_component'] = null;
    }
    return json;
  }

  /// Returns a new [PublicFormViewFieldOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicFormViewFieldOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicFormViewFieldOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicFormViewFieldOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicFormViewFieldOptions(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        required_: mapValueOfType<bool>(json, r'required'),
        order: mapValueOfType<int>(json, r'order'),
        field: PublicFormViewField.fromJson(json[r'field'])!,
        showWhenMatchingConditions: mapValueOfType<bool>(json, r'show_when_matching_conditions'),
        conditionType: ConditionTypeEnum.fromJson(json[r'condition_type']),
        conditions: FormViewFieldOptionsCondition.listFromJson(json[r'conditions']),
        conditionGroups: FormViewFieldOptionsConditionGroup.listFromJson(json[r'condition_groups']),
        groups: FormViewFieldOptionsConditionGroup.listFromJson(json[r'groups']),
        fieldComponent: mapValueOfType<String>(json, r'field_component'),
      );
    }
    return null;
  }

  static List<PublicFormViewFieldOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicFormViewFieldOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicFormViewFieldOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicFormViewFieldOptions> mapFromJson(dynamic json) {
    final map = <String, PublicFormViewFieldOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicFormViewFieldOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicFormViewFieldOptions-objects as value to a dart map
  static Map<String, List<PublicFormViewFieldOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicFormViewFieldOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicFormViewFieldOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'field',
  };
}

