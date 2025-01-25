//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenObtainPairWithUser {
  /// Returns a new [TokenObtainPairWithUser] instance.
  TokenObtainPairWithUser({
    this.email,
    this.username,
    required this.password,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Deprecated. Use `email` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenObtainPairWithUser &&
    other.email == email &&
    other.username == username &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (password.hashCode);

  @override
  String toString() => 'TokenObtainPairWithUser[email=$email, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
      json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [TokenObtainPairWithUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenObtainPairWithUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenObtainPairWithUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenObtainPairWithUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenObtainPairWithUser(
        email: mapValueOfType<String>(json, r'email'),
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<TokenObtainPairWithUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenObtainPairWithUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenObtainPairWithUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenObtainPairWithUser> mapFromJson(dynamic json) {
    final map = <String, TokenObtainPairWithUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenObtainPairWithUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenObtainPairWithUser-objects as value to a dart map
  static Map<String, List<TokenObtainPairWithUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenObtainPairWithUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenObtainPairWithUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'password',
  };
}

