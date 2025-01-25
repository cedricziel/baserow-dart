//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class WorkspaceUser {
  /// Returns a new [WorkspaceUser] instance.
  WorkspaceUser({
    required this.id,
    required this.name,
    required this.email,
    required this.workspace,
    this.permissions,
    required this.createdOn,
    required this.userId,
    required this.toBeDeleted,
  });

  int id;

  /// User defined name.
  String name;

  /// User email.
  String email;

  /// The workspace that the user has access to.
  int workspace;

  /// The permissions that the user has within the workspace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permissions;

  DateTime createdOn;

  /// The user that has access to the workspace.
  int userId;

  /// True if user account is pending deletion.
  bool toBeDeleted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceUser &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.workspace == workspace &&
    other.permissions == permissions &&
    other.createdOn == createdOn &&
    other.userId == userId &&
    other.toBeDeleted == toBeDeleted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (workspace.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (createdOn.hashCode) +
    (userId.hashCode) +
    (toBeDeleted.hashCode);

  @override
  String toString() => 'WorkspaceUser[id=$id, name=$name, email=$email, workspace=$workspace, permissions=$permissions, createdOn=$createdOn, userId=$userId, toBeDeleted=$toBeDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'workspace'] = this.workspace;
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'user_id'] = this.userId;
      json[r'to_be_deleted'] = this.toBeDeleted;
    return json;
  }

  /// Returns a new [WorkspaceUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkspaceUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkspaceUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkspaceUser(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        workspace: mapValueOfType<int>(json, r'workspace')!,
        permissions: mapValueOfType<String>(json, r'permissions'),
        createdOn: mapDateTime(json, r'created_on', r'')!,
        userId: mapValueOfType<int>(json, r'user_id')!,
        toBeDeleted: mapValueOfType<bool>(json, r'to_be_deleted')!,
      );
    }
    return null;
  }

  static List<WorkspaceUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceUser> mapFromJson(dynamic json) {
    final map = <String, WorkspaceUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceUser-objects as value to a dart map
  static Map<String, List<WorkspaceUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
    'workspace',
    'created_on',
    'user_id',
    'to_be_deleted',
  };
}

