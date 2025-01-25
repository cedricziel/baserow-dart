//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenObtainPair {
  /// Returns a new [TokenObtainPair] instance.
  TokenObtainPair({
    required this.username,
    required this.password,
    required this.access,
    required this.refresh,
  });

  String username;

  String password;

  String access;

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenObtainPair &&
    other.username == username &&
    other.password == password &&
    other.access == access &&
    other.refresh == refresh;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (password.hashCode) +
    (access.hashCode) +
    (refresh.hashCode);

  @override
  String toString() => 'TokenObtainPair[username=$username, password=$password, access=$access, refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'password'] = this.password;
      json[r'access'] = this.access;
      json[r'refresh'] = this.refresh;
    return json;
  }

  /// Returns a new [TokenObtainPair] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenObtainPair? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenObtainPair[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenObtainPair[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenObtainPair(
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
        access: mapValueOfType<String>(json, r'access')!,
        refresh: mapValueOfType<String>(json, r'refresh')!,
      );
    }
    return null;
  }

  static List<TokenObtainPair> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenObtainPair>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenObtainPair.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenObtainPair> mapFromJson(dynamic json) {
    final map = <String, TokenObtainPair>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenObtainPair.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenObtainPair-objects as value to a dart map
  static Map<String, List<TokenObtainPair>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenObtainPair>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenObtainPair.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'password',
    'access',
    'refresh',
  };
}

