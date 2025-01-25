//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AdminImpersonateUser200ResponseUser {
  /// Returns a new [AdminImpersonateUser200ResponseUser] instance.
  AdminImpersonateUser200ResponseUser({
    this.firstName,
    this.username,
    this.language,
  });

  /// The first name of related user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// The username of the related user. This is always an email address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  /// An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminImpersonateUser200ResponseUser &&
    other.firstName == firstName &&
    other.username == username &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (language == null ? 0 : language!.hashCode);

  @override
  String toString() => 'AdminImpersonateUser200ResponseUser[firstName=$firstName, username=$username, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    return json;
  }

  /// Returns a new [AdminImpersonateUser200ResponseUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminImpersonateUser200ResponseUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminImpersonateUser200ResponseUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminImpersonateUser200ResponseUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminImpersonateUser200ResponseUser(
        firstName: mapValueOfType<String>(json, r'first_name'),
        username: mapValueOfType<String>(json, r'username'),
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<AdminImpersonateUser200ResponseUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminImpersonateUser200ResponseUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminImpersonateUser200ResponseUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminImpersonateUser200ResponseUser> mapFromJson(dynamic json) {
    final map = <String, AdminImpersonateUser200ResponseUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminImpersonateUser200ResponseUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminImpersonateUser200ResponseUser-objects as value to a dart map
  static Map<String, List<AdminImpersonateUser200ResponseUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminImpersonateUser200ResponseUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminImpersonateUser200ResponseUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

