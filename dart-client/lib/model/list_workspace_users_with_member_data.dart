//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ListWorkspaceUsersWithMemberData {
  /// Returns a new [ListWorkspaceUsersWithMemberData] instance.
  ListWorkspaceUsersWithMemberData({
    required this.id,
    required this.name,
    required this.email,
    required this.workspace,
    this.permissions,
    required this.createdOn,
    required this.userId,
    required this.toBeDeleted,
    this.teams = const [],
    this.roleUid,
    this.highestRoleUid,
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

  /// Enterprise only: a list of team IDs and names, which this workspace user belongs to in this workspace.
  List<WorkspaceUserEnterpriseTeam> teams;

  /// Enterprise or advanced only: the uid of the role that is assigned to this workspace user in this workspace.
  String? roleUid;

  /// Enterprise or advanced only: the highest role uid assigned to this user in this workspace on anything, including roles from teams.
  String? highestRoleUid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListWorkspaceUsersWithMemberData &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.workspace == workspace &&
    other.permissions == permissions &&
    other.createdOn == createdOn &&
    other.userId == userId &&
    other.toBeDeleted == toBeDeleted &&
    _deepEquality.equals(other.teams, teams) &&
    other.roleUid == roleUid &&
    other.highestRoleUid == highestRoleUid;

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
    (toBeDeleted.hashCode) +
    (teams.hashCode) +
    (roleUid == null ? 0 : roleUid!.hashCode) +
    (highestRoleUid == null ? 0 : highestRoleUid!.hashCode);

  @override
  String toString() => 'ListWorkspaceUsersWithMemberData[id=$id, name=$name, email=$email, workspace=$workspace, permissions=$permissions, createdOn=$createdOn, userId=$userId, toBeDeleted=$toBeDeleted, teams=$teams, roleUid=$roleUid, highestRoleUid=$highestRoleUid]';

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
      json[r'teams'] = this.teams;
    if (this.roleUid != null) {
      json[r'role_uid'] = this.roleUid;
    } else {
      json[r'role_uid'] = null;
    }
    if (this.highestRoleUid != null) {
      json[r'highest_role_uid'] = this.highestRoleUid;
    } else {
      json[r'highest_role_uid'] = null;
    }
    return json;
  }

  /// Returns a new [ListWorkspaceUsersWithMemberData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListWorkspaceUsersWithMemberData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListWorkspaceUsersWithMemberData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListWorkspaceUsersWithMemberData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListWorkspaceUsersWithMemberData(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        workspace: mapValueOfType<int>(json, r'workspace')!,
        permissions: mapValueOfType<String>(json, r'permissions'),
        createdOn: mapDateTime(json, r'created_on', r'')!,
        userId: mapValueOfType<int>(json, r'user_id')!,
        toBeDeleted: mapValueOfType<bool>(json, r'to_be_deleted')!,
        teams: WorkspaceUserEnterpriseTeam.listFromJson(json[r'teams']),
        roleUid: mapValueOfType<String>(json, r'role_uid'),
        highestRoleUid: mapValueOfType<String>(json, r'highest_role_uid'),
      );
    }
    return null;
  }

  static List<ListWorkspaceUsersWithMemberData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListWorkspaceUsersWithMemberData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListWorkspaceUsersWithMemberData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListWorkspaceUsersWithMemberData> mapFromJson(dynamic json) {
    final map = <String, ListWorkspaceUsersWithMemberData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListWorkspaceUsersWithMemberData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListWorkspaceUsersWithMemberData-objects as value to a dart map
  static Map<String, List<ListWorkspaceUsersWithMemberData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListWorkspaceUsersWithMemberData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListWorkspaceUsersWithMemberData.listFromJson(entry.value, growable: growable,);
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

