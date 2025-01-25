//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UserWorkspaceInvitation {
  /// Returns a new [UserWorkspaceInvitation] instance.
  UserWorkspaceInvitation({
    required this.id,
    required this.invitedBy,
    required this.workspace,
    required this.email,
    required this.message,
    required this.createdOn,
    required this.emailExists,
  });

  int id;

  String invitedBy;

  String workspace;

  /// The email address of the user that the invitation is meant for. Only a user with that email address can accept it.
  String email;

  /// An optional message that the invitor can provide. This will be visible to the receiver of the invitation.
  String message;

  DateTime createdOn;

  bool emailExists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserWorkspaceInvitation &&
    other.id == id &&
    other.invitedBy == invitedBy &&
    other.workspace == workspace &&
    other.email == email &&
    other.message == message &&
    other.createdOn == createdOn &&
    other.emailExists == emailExists;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (invitedBy.hashCode) +
    (workspace.hashCode) +
    (email.hashCode) +
    (message.hashCode) +
    (createdOn.hashCode) +
    (emailExists.hashCode);

  @override
  String toString() => 'UserWorkspaceInvitation[id=$id, invitedBy=$invitedBy, workspace=$workspace, email=$email, message=$message, createdOn=$createdOn, emailExists=$emailExists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'invited_by'] = this.invitedBy;
      json[r'workspace'] = this.workspace;
      json[r'email'] = this.email;
      json[r'message'] = this.message;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'email_exists'] = this.emailExists;
    return json;
  }

  /// Returns a new [UserWorkspaceInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserWorkspaceInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserWorkspaceInvitation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserWorkspaceInvitation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserWorkspaceInvitation(
        id: mapValueOfType<int>(json, r'id')!,
        invitedBy: mapValueOfType<String>(json, r'invited_by')!,
        workspace: mapValueOfType<String>(json, r'workspace')!,
        email: mapValueOfType<String>(json, r'email')!,
        message: mapValueOfType<String>(json, r'message')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        emailExists: mapValueOfType<bool>(json, r'email_exists')!,
      );
    }
    return null;
  }

  static List<UserWorkspaceInvitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserWorkspaceInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserWorkspaceInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserWorkspaceInvitation> mapFromJson(dynamic json) {
    final map = <String, UserWorkspaceInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserWorkspaceInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserWorkspaceInvitation-objects as value to a dart map
  static Map<String, List<UserWorkspaceInvitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserWorkspaceInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserWorkspaceInvitation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'invited_by',
    'workspace',
    'email',
    'message',
    'created_on',
    'email_exists',
  };
}

