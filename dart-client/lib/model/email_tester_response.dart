//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class EmailTesterResponse {
  /// Returns a new [EmailTesterResponse] instance.
  EmailTesterResponse({
    required this.succeeded,
    this.errorStack,
    this.errorType,
    this.error,
  });

  /// Whether or not the test email was sent successfully.
  bool succeeded;

  /// The full stack trace and error message if the test email failed.
  String? errorStack;

  /// The type of error that occurred if the test email failed.
  String? errorType;

  /// A short message describing the error that occured if the test email failed
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailTesterResponse &&
    other.succeeded == succeeded &&
    other.errorStack == errorStack &&
    other.errorType == errorType &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (succeeded.hashCode) +
    (errorStack == null ? 0 : errorStack!.hashCode) +
    (errorType == null ? 0 : errorType!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'EmailTesterResponse[succeeded=$succeeded, errorStack=$errorStack, errorType=$errorType, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'succeeded'] = this.succeeded;
    if (this.errorStack != null) {
      json[r'error_stack'] = this.errorStack;
    } else {
      json[r'error_stack'] = null;
    }
    if (this.errorType != null) {
      json[r'error_type'] = this.errorType;
    } else {
      json[r'error_type'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [EmailTesterResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailTesterResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailTesterResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailTesterResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailTesterResponse(
        succeeded: mapValueOfType<bool>(json, r'succeeded')!,
        errorStack: mapValueOfType<String>(json, r'error_stack'),
        errorType: mapValueOfType<String>(json, r'error_type'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<EmailTesterResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailTesterResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailTesterResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailTesterResponse> mapFromJson(dynamic json) {
    final map = <String, EmailTesterResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailTesterResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailTesterResponse-objects as value to a dart map
  static Map<String, List<EmailTesterResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailTesterResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailTesterResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'succeeded',
  };
}

