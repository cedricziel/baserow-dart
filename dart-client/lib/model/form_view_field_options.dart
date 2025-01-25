//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FormViewFieldOptions {
  /// Returns a new [FormViewFieldOptions] instance.
  FormViewFieldOptions({
    this.fieldOptions = const {},
  });

  /// An object containing the field id as key and the properties related to view as value.
  Map<String, FormViewFieldOptions> fieldOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormViewFieldOptions &&
    _deepEquality.equals(other.fieldOptions, fieldOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldOptions.hashCode);

  @override
  String toString() => 'FormViewFieldOptions[fieldOptions=$fieldOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_options'] = this.fieldOptions;
    return json;
  }

  /// Returns a new [FormViewFieldOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormViewFieldOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormViewFieldOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormViewFieldOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormViewFieldOptions(
        fieldOptions: FormViewFieldOptions.mapFromJson(json[r'field_options']),
      );
    }
    return null;
  }

  static List<FormViewFieldOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormViewFieldOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormViewFieldOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormViewFieldOptions> mapFromJson(dynamic json) {
    final map = <String, FormViewFieldOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormViewFieldOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormViewFieldOptions-objects as value to a dart map
  static Map<String, List<FormViewFieldOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormViewFieldOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormViewFieldOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_options',
  };
}

