//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class WorkspaceInvitation {
  /// Returns a new [WorkspaceInvitation] instance.
  WorkspaceInvitation({
    required this.id,
    required this.workspace,
    required this.email,
    this.permissions,
    this.message,
    required this.createdOn,
  });

  int id;

  /// The workspace that the user will get access to once the invitation is accepted.
  int workspace;

  /// The email address of the user that the invitation is meant for. Only a user with that email address can accept it.
  String email;

  /// The permissions that the user is going to get within the workspace after accepting the invitation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? permissions;

  /// An optional message that the invitor can provide. This will be visible to the receiver of the invitation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  DateTime createdOn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceInvitation &&
    other.id == id &&
    other.workspace == workspace &&
    other.email == email &&
    other.permissions == permissions &&
    other.message == message &&
    other.createdOn == createdOn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (workspace.hashCode) +
    (email.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (createdOn.hashCode);

  @override
  String toString() => 'WorkspaceInvitation[id=$id, workspace=$workspace, email=$email, permissions=$permissions, message=$message, createdOn=$createdOn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'workspace'] = this.workspace;
      json[r'email'] = this.email;
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WorkspaceInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkspaceInvitation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkspaceInvitation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkspaceInvitation(
        id: mapValueOfType<int>(json, r'id')!,
        workspace: mapValueOfType<int>(json, r'workspace')!,
        email: mapValueOfType<String>(json, r'email')!,
        permissions: mapValueOfType<String>(json, r'permissions'),
        message: mapValueOfType<String>(json, r'message'),
        createdOn: mapDateTime(json, r'created_on', r'')!,
      );
    }
    return null;
  }

  static List<WorkspaceInvitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceInvitation> mapFromJson(dynamic json) {
    final map = <String, WorkspaceInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceInvitation-objects as value to a dart map
  static Map<String, List<WorkspaceInvitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceInvitation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'workspace',
    'email',
    'created_on',
  };
}

