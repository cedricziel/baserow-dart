//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ChangePasswordBodyValidation {
  /// Returns a new [ChangePasswordBodyValidation] instance.
  ChangePasswordBodyValidation({
    required this.oldPassword,
    required this.newPassword,
  });

  String oldPassword;

  String newPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangePasswordBodyValidation &&
    other.oldPassword == oldPassword &&
    other.newPassword == newPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (oldPassword.hashCode) +
    (newPassword.hashCode);

  @override
  String toString() => 'ChangePasswordBodyValidation[oldPassword=$oldPassword, newPassword=$newPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'old_password'] = this.oldPassword;
      json[r'new_password'] = this.newPassword;
    return json;
  }

  /// Returns a new [ChangePasswordBodyValidation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePasswordBodyValidation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangePasswordBodyValidation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangePasswordBodyValidation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePasswordBodyValidation(
        oldPassword: mapValueOfType<String>(json, r'old_password')!,
        newPassword: mapValueOfType<String>(json, r'new_password')!,
      );
    }
    return null;
  }

  static List<ChangePasswordBodyValidation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangePasswordBodyValidation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePasswordBodyValidation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePasswordBodyValidation> mapFromJson(dynamic json) {
    final map = <String, ChangePasswordBodyValidation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePasswordBodyValidation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePasswordBodyValidation-objects as value to a dart map
  static Map<String, List<ChangePasswordBodyValidation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangePasswordBodyValidation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangePasswordBodyValidation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'old_password',
    'new_password',
  };
}

