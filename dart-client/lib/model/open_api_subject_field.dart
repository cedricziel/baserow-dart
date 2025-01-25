//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OpenApiSubjectField {
  /// Returns a new [OpenApiSubjectField] instance.
  OpenApiSubjectField({
    required this.id,
  });

  int id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenApiSubjectField &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode);

  @override
  String toString() => 'OpenApiSubjectField[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [OpenApiSubjectField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenApiSubjectField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenApiSubjectField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenApiSubjectField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenApiSubjectField(
        id: mapValueOfType<int>(json, r'id')!,
      );
    }
    return null;
  }

  static List<OpenApiSubjectField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenApiSubjectField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenApiSubjectField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenApiSubjectField> mapFromJson(dynamic json) {
    final map = <String, OpenApiSubjectField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenApiSubjectField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenApiSubjectField-objects as value to a dart map
  static Map<String, List<OpenApiSubjectField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenApiSubjectField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenApiSubjectField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

