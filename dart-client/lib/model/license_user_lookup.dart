//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LicenseUserLookup {
  /// Returns a new [LicenseUserLookup] instance.
  LicenseUserLookup({
    required this.id,
    required this.value,
  });

  int id;

  /// The name and the email address of the user.
  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseUserLookup &&
    other.id == id &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'LicenseUserLookup[id=$id, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [LicenseUserLookup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseUserLookup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LicenseUserLookup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LicenseUserLookup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LicenseUserLookup(
        id: mapValueOfType<int>(json, r'id')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<LicenseUserLookup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseUserLookup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseUserLookup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseUserLookup> mapFromJson(dynamic json) {
    final map = <String, LicenseUserLookup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseUserLookup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseUserLookup-objects as value to a dart map
  static Map<String, List<LicenseUserLookup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseUserLookup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseUserLookup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'value',
  };
}

