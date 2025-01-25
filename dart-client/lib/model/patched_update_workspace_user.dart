//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUpdateWorkspaceUser {
  /// Returns a new [PatchedUpdateWorkspaceUser] instance.
  PatchedUpdateWorkspaceUser({
    this.permissions,
  });

  /// The permissions that the user has within the workspace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUpdateWorkspaceUser &&
    other.permissions == permissions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (permissions == null ? 0 : permissions!.hashCode);

  @override
  String toString() => 'PatchedUpdateWorkspaceUser[permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUpdateWorkspaceUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUpdateWorkspaceUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUpdateWorkspaceUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUpdateWorkspaceUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUpdateWorkspaceUser(
        permissions: mapValueOfType<String>(json, r'permissions'),
      );
    }
    return null;
  }

  static List<PatchedUpdateWorkspaceUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUpdateWorkspaceUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUpdateWorkspaceUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUpdateWorkspaceUser> mapFromJson(dynamic json) {
    final map = <String, PatchedUpdateWorkspaceUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUpdateWorkspaceUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUpdateWorkspaceUser-objects as value to a dart map
  static Map<String, List<PatchedUpdateWorkspaceUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUpdateWorkspaceUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUpdateWorkspaceUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

