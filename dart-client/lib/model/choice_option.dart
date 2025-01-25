//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ChoiceOption {
  /// Returns a new [ChoiceOption] instance.
  ChoiceOption({
    required this.id,
    this.value,
    this.name,
  });

  int id;

  /// The value of the option. An empty string is a valid value. When the value field is null, the frontend will auto-populate the value using the name field.
  String? value;

  /// The display name of the option
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChoiceOption &&
    other.id == id &&
    other.value == value &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ChoiceOption[id=$id, value=$value, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ChoiceOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChoiceOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChoiceOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChoiceOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChoiceOption(
        id: mapValueOfType<int>(json, r'id')!,
        value: mapValueOfType<String>(json, r'value'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ChoiceOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChoiceOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChoiceOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChoiceOption> mapFromJson(dynamic json) {
    final map = <String, ChoiceOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChoiceOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChoiceOption-objects as value to a dart map
  static Map<String, List<ChoiceOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChoiceOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChoiceOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

