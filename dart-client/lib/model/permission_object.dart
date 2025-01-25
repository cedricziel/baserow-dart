//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PermissionObject {
  /// Returns a new [PermissionObject] instance.
  PermissionObject({
    required this.name,
    required this.permissions,
  });

  /// The permission manager name.
  String name;

  /// The content of the permission object for this permission manager.
  Object? permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PermissionObject &&
    other.name == name &&
    other.permissions == permissions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode);

  @override
  String toString() => 'PermissionObject[name=$name, permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    return json;
  }

  /// Returns a new [PermissionObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PermissionObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PermissionObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PermissionObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PermissionObject(
        name: mapValueOfType<String>(json, r'name')!,
        permissions: mapValueOfType<Object>(json, r'permissions'),
      );
    }
    return null;
  }

  static List<PermissionObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PermissionObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PermissionObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PermissionObject> mapFromJson(dynamic json) {
    final map = <String, PermissionObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PermissionObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PermissionObject-objects as value to a dart map
  static Map<String, List<PermissionObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PermissionObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PermissionObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'permissions',
  };
}

