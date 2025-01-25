//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenRefreshWithUser {
  /// Returns a new [TokenRefreshWithUser] instance.
  TokenRefreshWithUser({
    required this.access,
    this.refreshToken,
    this.token,
  });

  String access;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  /// Deprecated. Use `refresh_token` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshWithUser &&
    other.access == access &&
    other.refreshToken == refreshToken &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (access.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'TokenRefreshWithUser[access=$access, refreshToken=$refreshToken, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'access'] = this.access;
    if (this.refreshToken != null) {
      json[r'refresh_token'] = this.refreshToken;
    } else {
      json[r'refresh_token'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [TokenRefreshWithUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRefreshWithUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenRefreshWithUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenRefreshWithUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenRefreshWithUser(
        access: mapValueOfType<String>(json, r'access')!,
        refreshToken: mapValueOfType<String>(json, r'refresh_token'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<TokenRefreshWithUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenRefreshWithUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRefreshWithUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenRefreshWithUser> mapFromJson(dynamic json) {
    final map = <String, TokenRefreshWithUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenRefreshWithUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenRefreshWithUser-objects as value to a dart map
  static Map<String, List<TokenRefreshWithUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenRefreshWithUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenRefreshWithUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'access',
  };
}

