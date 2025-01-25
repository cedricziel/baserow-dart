//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AutonumberFieldCreateField {
  /// Returns a new [AutonumberFieldCreateField] instance.
  AutonumberFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    this.viewId,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  /// The id of the view to use for the initial ordering.
  int? viewId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutonumberFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.viewId == viewId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode);

  @override
  String toString() => 'AutonumberFieldCreateField[name=$name, type=$type, description=$description, viewId=$viewId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.viewId != null) {
      json[r'view_id'] = this.viewId;
    } else {
      json[r'view_id'] = null;
    }
    return json;
  }

  /// Returns a new [AutonumberFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutonumberFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutonumberFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutonumberFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutonumberFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        viewId: mapValueOfType<int>(json, r'view_id'),
      );
    }
    return null;
  }

  static List<AutonumberFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutonumberFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutonumberFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutonumberFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, AutonumberFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutonumberFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutonumberFieldCreateField-objects as value to a dart map
  static Map<String, List<AutonumberFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutonumberFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutonumberFieldCreateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
  };
}

