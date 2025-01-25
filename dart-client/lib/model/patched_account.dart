//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedAccount {
  /// Returns a new [PatchedAccount] instance.
  PatchedAccount({
    this.firstName,
    this.language,
    this.emailNotificationFrequency,
    this.completedOnboarding,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// An ISO 639 language code (with optional variant) selected by the user. Ex: en-GB.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// The maximum frequency at which the user wants to receive email notifications.  * `instant` - instant * `daily` - daily * `weekly` - weekly * `never` - never
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailNotificationFrequencyEnum? emailNotificationFrequency;

  /// Indicates whether the user has completed the onboarding.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? completedOnboarding;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedAccount &&
    other.firstName == firstName &&
    other.language == language &&
    other.emailNotificationFrequency == emailNotificationFrequency &&
    other.completedOnboarding == completedOnboarding;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (emailNotificationFrequency == null ? 0 : emailNotificationFrequency!.hashCode) +
    (completedOnboarding == null ? 0 : completedOnboarding!.hashCode);

  @override
  String toString() => 'PatchedAccount[firstName=$firstName, language=$language, emailNotificationFrequency=$emailNotificationFrequency, completedOnboarding=$completedOnboarding]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.emailNotificationFrequency != null) {
      json[r'email_notification_frequency'] = this.emailNotificationFrequency;
    } else {
      json[r'email_notification_frequency'] = null;
    }
    if (this.completedOnboarding != null) {
      json[r'completed_onboarding'] = this.completedOnboarding;
    } else {
      json[r'completed_onboarding'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedAccount(
        firstName: mapValueOfType<String>(json, r'first_name'),
        language: mapValueOfType<String>(json, r'language'),
        emailNotificationFrequency: EmailNotificationFrequencyEnum.fromJson(json[r'email_notification_frequency']),
        completedOnboarding: mapValueOfType<bool>(json, r'completed_onboarding'),
      );
    }
    return null;
  }

  static List<PatchedAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedAccount> mapFromJson(dynamic json) {
    final map = <String, PatchedAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedAccount-objects as value to a dart map
  static Map<String, List<PatchedAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

