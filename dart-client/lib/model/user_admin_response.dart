//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UserAdminResponse {
  /// Returns a new [UserAdminResponse] instance.
  UserAdminResponse({
    required this.id,
    required this.username,
    required this.name,
    this.workspaces = const [],
    this.lastLogin,
    this.dateJoined,
    this.isActive,
    this.isStaff,
  });

  int id;

  String username;

  String name;

  List<UserAdminWorkspaces> workspaces;

  DateTime? lastLogin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateJoined;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAdminResponse &&
    other.id == id &&
    other.username == username &&
    other.name == name &&
    _deepEquality.equals(other.workspaces, workspaces) &&
    other.lastLogin == lastLogin &&
    other.dateJoined == dateJoined &&
    other.isActive == isActive &&
    other.isStaff == isStaff;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (username.hashCode) +
    (name.hashCode) +
    (workspaces.hashCode) +
    (lastLogin == null ? 0 : lastLogin!.hashCode) +
    (dateJoined == null ? 0 : dateJoined!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (isStaff == null ? 0 : isStaff!.hashCode);

  @override
  String toString() => 'UserAdminResponse[id=$id, username=$username, name=$name, workspaces=$workspaces, lastLogin=$lastLogin, dateJoined=$dateJoined, isActive=$isActive, isStaff=$isStaff]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'username'] = this.username;
      json[r'name'] = this.name;
      json[r'workspaces'] = this.workspaces;
    if (this.lastLogin != null) {
      json[r'last_login'] = this.lastLogin!.toUtc().toIso8601String();
    } else {
      json[r'last_login'] = null;
    }
    if (this.dateJoined != null) {
      json[r'date_joined'] = this.dateJoined!.toUtc().toIso8601String();
    } else {
      json[r'date_joined'] = null;
    }
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
    return json;
  }

  /// Returns a new [UserAdminResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAdminResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAdminResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAdminResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAdminResponse(
        id: mapValueOfType<int>(json, r'id')!,
        username: mapValueOfType<String>(json, r'username')!,
        name: mapValueOfType<String>(json, r'name')!,
        workspaces: UserAdminWorkspaces.listFromJson(json[r'workspaces']),
        lastLogin: mapDateTime(json, r'last_login', r''),
        dateJoined: mapDateTime(json, r'date_joined', r''),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        isStaff: mapValueOfType<bool>(json, r'is_staff'),
      );
    }
    return null;
  }

  static List<UserAdminResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAdminResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAdminResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAdminResponse> mapFromJson(dynamic json) {
    final map = <String, UserAdminResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAdminResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAdminResponse-objects as value to a dart map
  static Map<String, List<UserAdminResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAdminResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAdminResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'username',
    'name',
    'workspaces',
  };
}

