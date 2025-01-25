//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenVerifyWithUser {
  /// Returns a new [TokenVerifyWithUser] instance.
  TokenVerifyWithUser({
    this.token,
    required this.refreshToken,
  });

  /// Deprecated. Use `refresh_token` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  String refreshToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenVerifyWithUser &&
    other.token == token &&
    other.refreshToken == refreshToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token == null ? 0 : token!.hashCode) +
    (refreshToken.hashCode);

  @override
  String toString() => 'TokenVerifyWithUser[token=$token, refreshToken=$refreshToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
      json[r'refresh_token'] = this.refreshToken;
    return json;
  }

  /// Returns a new [TokenVerifyWithUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenVerifyWithUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenVerifyWithUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenVerifyWithUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenVerifyWithUser(
        token: mapValueOfType<String>(json, r'token'),
        refreshToken: mapValueOfType<String>(json, r'refresh_token')!,
      );
    }
    return null;
  }

  static List<TokenVerifyWithUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenVerifyWithUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenVerifyWithUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenVerifyWithUser> mapFromJson(dynamic json) {
    final map = <String, TokenVerifyWithUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenVerifyWithUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenVerifyWithUser-objects as value to a dart map
  static Map<String, List<TokenVerifyWithUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenVerifyWithUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenVerifyWithUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refresh_token',
  };
}

