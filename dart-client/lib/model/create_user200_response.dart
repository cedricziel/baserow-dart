//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateUser200Response {
  /// Returns a new [CreateUser200Response] instance.
  CreateUser200Response({
    this.user,
    this.token,
    this.accessToken,
    this.refreshToken,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AdminImpersonateUser200ResponseUser? user;

  /// Deprecated. Use the `access_token` instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  /// 'access_token' can be used to authorize for other endpoints that require authorization. This token will be valid for 10 minutes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// 'refresh_token' can be used to get a new valid 'access_token'. This token will be valid for 168 hours.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUser200Response &&
    other.user == user &&
    other.token == token &&
    other.accessToken == accessToken &&
    other.refreshToken == refreshToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (user == null ? 0 : user!.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode);

  @override
  String toString() => 'CreateUser200Response[user=$user, token=$token, accessToken=$accessToken, refreshToken=$refreshToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    if (this.accessToken != null) {
      json[r'access_token'] = this.accessToken;
    } else {
      json[r'access_token'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refresh_token'] = this.refreshToken;
    } else {
      json[r'refresh_token'] = null;
    }
    return json;
  }

  /// Returns a new [CreateUser200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUser200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUser200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUser200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUser200Response(
        user: AdminImpersonateUser200ResponseUser.fromJson(json[r'user']),
        token: mapValueOfType<String>(json, r'token'),
        accessToken: mapValueOfType<String>(json, r'access_token'),
        refreshToken: mapValueOfType<String>(json, r'refresh_token'),
      );
    }
    return null;
  }

  static List<CreateUser200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUser200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUser200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUser200Response> mapFromJson(dynamic json) {
    final map = <String, CreateUser200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUser200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUser200Response-objects as value to a dart map
  static Map<String, List<CreateUser200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUser200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUser200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

