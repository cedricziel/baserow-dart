//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowContextData {
  /// Returns a new [LocalBaserowContextData] instance.
  LocalBaserowContextData({
    this.databases = const [],
  });

  List<LocalBaserowDatabaseApplication> databases;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowContextData &&
    _deepEquality.equals(other.databases, databases);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (databases.hashCode);

  @override
  String toString() => 'LocalBaserowContextData[databases=$databases]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'databases'] = this.databases;
    return json;
  }

  /// Returns a new [LocalBaserowContextData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowContextData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowContextData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowContextData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowContextData(
        databases: LocalBaserowDatabaseApplication.listFromJson(json[r'databases']),
      );
    }
    return null;
  }

  static List<LocalBaserowContextData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowContextData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowContextData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowContextData> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowContextData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowContextData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowContextData-objects as value to a dart map
  static Map<String, List<LocalBaserowContextData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowContextData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowContextData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'databases',
  };
}

