//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SubjectUser {
  /// Returns a new [SubjectUser] instance.
  SubjectUser({
    required this.id,
    required this.username,
    required this.firstName,
    required this.email,
  });

  int id;

  /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
  String username;

  String firstName;

  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubjectUser &&
    other.id == id &&
    other.username == username &&
    other.firstName == firstName &&
    other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (username.hashCode) +
    (firstName.hashCode) +
    (email.hashCode);

  @override
  String toString() => 'SubjectUser[id=$id, username=$username, firstName=$firstName, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'username'] = this.username;
      json[r'first_name'] = this.firstName;
      json[r'email'] = this.email;
    return json;
  }

  /// Returns a new [SubjectUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubjectUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubjectUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubjectUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubjectUser(
        id: mapValueOfType<int>(json, r'id')!,
        username: mapValueOfType<String>(json, r'username')!,
        firstName: mapValueOfType<String>(json, r'first_name')!,
        email: mapValueOfType<String>(json, r'email')!,
      );
    }
    return null;
  }

  static List<SubjectUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubjectUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubjectUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubjectUser> mapFromJson(dynamic json) {
    final map = <String, SubjectUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubjectUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubjectUser-objects as value to a dart map
  static Map<String, List<SubjectUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubjectUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubjectUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'username',
    'first_name',
    'email',
  };
}

