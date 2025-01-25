//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateWorkspaceInvitation {
  /// Returns a new [CreateWorkspaceInvitation] instance.
  CreateWorkspaceInvitation({
    required this.email,
    this.permissions,
    this.message,
    required this.baseUrl,
  });

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

  /// The base URL where the user can publicly accept his invitation.The accept token is going to be appended to the base_url (base_url '/token').
  String baseUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWorkspaceInvitation &&
    other.email == email &&
    other.permissions == permissions &&
    other.message == message &&
    other.baseUrl == baseUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (baseUrl.hashCode);

  @override
  String toString() => 'CreateWorkspaceInvitation[email=$email, permissions=$permissions, message=$message, baseUrl=$baseUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'base_url'] = this.baseUrl;
    return json;
  }

  /// Returns a new [CreateWorkspaceInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWorkspaceInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateWorkspaceInvitation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateWorkspaceInvitation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateWorkspaceInvitation(
        email: mapValueOfType<String>(json, r'email')!,
        permissions: mapValueOfType<String>(json, r'permissions'),
        message: mapValueOfType<String>(json, r'message'),
        baseUrl: mapValueOfType<String>(json, r'base_url')!,
      );
    }
    return null;
  }

  static List<CreateWorkspaceInvitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWorkspaceInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWorkspaceInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWorkspaceInvitation> mapFromJson(dynamic json) {
    final map = <String, CreateWorkspaceInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWorkspaceInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWorkspaceInvitation-objects as value to a dart map
  static Map<String, List<CreateWorkspaceInvitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWorkspaceInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWorkspaceInvitation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'base_url',
  };
}

