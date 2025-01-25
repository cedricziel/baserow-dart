//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUserAdminUpdate {
  /// Returns a new [PatchedUserAdminUpdate] instance.
  PatchedUserAdminUpdate({
    this.username,
    this.name,
    this.isActive,
    this.isStaff,
    this.password,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUserAdminUpdate &&
    other.username == username &&
    other.name == name &&
    other.isActive == isActive &&
    other.isStaff == isStaff &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username == null ? 0 : username!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (isStaff == null ? 0 : isStaff!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'PatchedUserAdminUpdate[username=$username, name=$name, isActive=$isActive, isStaff=$isStaff, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUserAdminUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUserAdminUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUserAdminUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUserAdminUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUserAdminUpdate(
        username: mapValueOfType<String>(json, r'username'),
        name: mapValueOfType<String>(json, r'name'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        isStaff: mapValueOfType<bool>(json, r'is_staff'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<PatchedUserAdminUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUserAdminUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUserAdminUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUserAdminUpdate> mapFromJson(dynamic json) {
    final map = <String, PatchedUserAdminUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUserAdminUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUserAdminUpdate-objects as value to a dart map
  static Map<String, List<PatchedUserAdminUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUserAdminUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUserAdminUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

