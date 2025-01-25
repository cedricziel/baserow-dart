//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SelectOption {
  /// Returns a new [SelectOption] instance.
  SelectOption({
    this.id,
    required this.value,
    required this.color,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String value;

  String color;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SelectOption &&
    other.id == id &&
    other.value == value &&
    other.color == color;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (value.hashCode) +
    (color.hashCode);

  @override
  String toString() => 'SelectOption[id=$id, value=$value, color=$color]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'value'] = this.value;
      json[r'color'] = this.color;
    return json;
  }

  /// Returns a new [SelectOption] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SelectOption? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SelectOption[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SelectOption[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SelectOption(
        id: mapValueOfType<int>(json, r'id'),
        value: mapValueOfType<String>(json, r'value')!,
        color: mapValueOfType<String>(json, r'color')!,
      );
    }
    return null;
  }

  static List<SelectOption> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SelectOption>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SelectOption.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SelectOption> mapFromJson(dynamic json) {
    final map = <String, SelectOption>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SelectOption.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SelectOption-objects as value to a dart map
  static Map<String, List<SelectOption>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SelectOption>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SelectOption.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
    'color',
  };
}

