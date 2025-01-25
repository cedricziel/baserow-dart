//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UserAdminCreate {
  /// Returns a new [UserAdminCreate] instance.
  UserAdminCreate({
    required this.username,
    required this.name,
    this.isActive,
    this.isStaff,
    required this.password,
  });

  String username;

  String name;

  /// Designates whether this user should be treated as active. Set this to false instead of deleting accounts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  /// Designates whether this user is an admin and has access to all workspaces and Baserow's admin areas. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStaff;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAdminCreate &&
    other.username == username &&
    other.name == name &&
    other.isActive == isActive &&
    other.isStaff == isStaff &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (name.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (isStaff == null ? 0 : isStaff!.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'UserAdminCreate[username=$username, name=$name, isActive=$isActive, isStaff=$isStaff, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'name'] = this.name;
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.isStaff != null) {
      json[r'is_staff'] = this.isStaff;
    } else {
      json[r'is_staff'] = null;
    }
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [UserAdminCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAdminCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAdminCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAdminCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAdminCreate(
        username: mapValueOfType<String>(json, r'username')!,
        name: mapValueOfType<String>(json, r'name')!,
        isActive: mapValueOfType<bool>(json, r'is_active'),
        isStaff: mapValueOfType<bool>(json, r'is_staff'),
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<UserAdminCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAdminCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAdminCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAdminCreate> mapFromJson(dynamic json) {
    final map = <String, UserAdminCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAdminCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAdminCreate-objects as value to a dart map
  static Map<String, List<UserAdminCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAdminCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAdminCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'name',
    'password',
  };
}

