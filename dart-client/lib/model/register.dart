//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Register {
  /// Returns a new [Register] instance.
  Register({
    required this.name,
    required this.email,
    required this.password,
    this.language = 'en',
    this.authenticate = false,
    this.workspaceInvitationToken,
    this.templateId,
  });

  String name;

  /// The email address is also going to be the username.
  String email;

  String password;

  /// An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  String language;

  /// Indicates whether an authentication JWT should be generated and be included in the response.
  bool authenticate;

  /// If provided and valid, the user accepts the workspace invitation and will have access to the workspace after signing up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceInvitationToken;

  /// The id of the template that must be installed after creating the account. This only works if the `workspace_invitation_token` param is not provided.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? templateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Register &&
    other.name == name &&
    other.email == email &&
    other.password == password &&
    other.language == language &&
    other.authenticate == authenticate &&
    other.workspaceInvitationToken == workspaceInvitationToken &&
    other.templateId == templateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (email.hashCode) +
    (password.hashCode) +
    (language.hashCode) +
    (authenticate.hashCode) +
    (workspaceInvitationToken == null ? 0 : workspaceInvitationToken!.hashCode) +
    (templateId == null ? 0 : templateId!.hashCode);

  @override
  String toString() => 'Register[name=$name, email=$email, password=$password, language=$language, authenticate=$authenticate, workspaceInvitationToken=$workspaceInvitationToken, templateId=$templateId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'password'] = this.password;
      json[r'language'] = this.language;
      json[r'authenticate'] = this.authenticate;
    if (this.workspaceInvitationToken != null) {
      json[r'workspace_invitation_token'] = this.workspaceInvitationToken;
    } else {
      json[r'workspace_invitation_token'] = null;
    }
    if (this.templateId != null) {
      json[r'template_id'] = this.templateId;
    } else {
      json[r'template_id'] = null;
    }
    return json;
  }

  /// Returns a new [Register] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Register? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Register[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Register[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Register(
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        password: mapValueOfType<String>(json, r'password')!,
        language: mapValueOfType<String>(json, r'language') ?? 'en',
        authenticate: mapValueOfType<bool>(json, r'authenticate') ?? false,
        workspaceInvitationToken: mapValueOfType<String>(json, r'workspace_invitation_token'),
        templateId: mapValueOfType<int>(json, r'template_id'),
      );
    }
    return null;
  }

  static List<Register> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Register>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Register.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Register> mapFromJson(dynamic json) {
    final map = <String, Register>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Register.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Register-objects as value to a dart map
  static Map<String, List<Register>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Register>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Register.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'email',
    'password',
  };
}

