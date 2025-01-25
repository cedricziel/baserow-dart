//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SendResetPasswordEmailBodyValidation {
  /// Returns a new [SendResetPasswordEmailBodyValidation] instance.
  SendResetPasswordEmailBodyValidation({
    required this.email,
    required this.baseUrl,
  });

  /// The email address of the user that has requested a password reset.
  String email;

  /// The base URL where the user can reset his password. The reset token is going to be appended to the base_url (base_url '/token').
  String baseUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendResetPasswordEmailBodyValidation &&
    other.email == email &&
    other.baseUrl == baseUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (baseUrl.hashCode);

  @override
  String toString() => 'SendResetPasswordEmailBodyValidation[email=$email, baseUrl=$baseUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'base_url'] = this.baseUrl;
    return json;
  }

  /// Returns a new [SendResetPasswordEmailBodyValidation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendResetPasswordEmailBodyValidation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendResetPasswordEmailBodyValidation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendResetPasswordEmailBodyValidation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendResetPasswordEmailBodyValidation(
        email: mapValueOfType<String>(json, r'email')!,
        baseUrl: mapValueOfType<String>(json, r'base_url')!,
      );
    }
    return null;
  }

  static List<SendResetPasswordEmailBodyValidation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendResetPasswordEmailBodyValidation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendResetPasswordEmailBodyValidation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendResetPasswordEmailBodyValidation> mapFromJson(dynamic json) {
    final map = <String, SendResetPasswordEmailBodyValidation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendResetPasswordEmailBodyValidation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendResetPasswordEmailBodyValidation-objects as value to a dart map
  static Map<String, List<SendResetPasswordEmailBodyValidation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendResetPasswordEmailBodyValidation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendResetPasswordEmailBodyValidation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'base_url',
  };
}

