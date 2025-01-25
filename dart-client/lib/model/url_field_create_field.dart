//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class URLFieldCreateField {
  /// Returns a new [URLFieldCreateField] instance.
  URLFieldCreateField({
    required this.name,
    required this.type,
    this.description,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is URLFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'URLFieldCreateField[name=$name, type=$type, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [URLFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static URLFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "URLFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "URLFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return URLFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<URLFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <URLFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = URLFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, URLFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, URLFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = URLFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of URLFieldCreateField-objects as value to a dart map
  static Map<String, List<URLFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<URLFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = URLFieldCreateField.listFromJson(entry.value, growable: growable,);
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

