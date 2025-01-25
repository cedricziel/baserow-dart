//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class WorkspaceAdminUsers {
  /// Returns a new [WorkspaceAdminUsers] instance.
  WorkspaceAdminUsers({
    required this.id,
    required this.email,
    this.permissions,
  });

  int id;

  String email;

  /// The permissions that the user has within the workspace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permissions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceAdminUsers &&
    other.id == id &&
    other.email == email &&
    other.permissions == permissions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (email.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode);

  @override
  String toString() => 'WorkspaceAdminUsers[id=$id, email=$email, permissions=$permissions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'email'] = this.email;
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    return json;
  }

  /// Returns a new [WorkspaceAdminUsers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceAdminUsers? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkspaceAdminUsers[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkspaceAdminUsers[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkspaceAdminUsers(
        id: mapValueOfType<int>(json, r'id')!,
        email: mapValueOfType<String>(json, r'email')!,
        permissions: mapValueOfType<String>(json, r'permissions'),
      );
    }
    return null;
  }

  static List<WorkspaceAdminUsers> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceAdminUsers>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceAdminUsers.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceAdminUsers> mapFromJson(dynamic json) {
    final map = <String, WorkspaceAdminUsers>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceAdminUsers.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceAdminUsers-objects as value to a dart map
  static Map<String, List<WorkspaceAdminUsers>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceAdminUsers>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceAdminUsers.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'email',
  };
}

