//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FormViewSubmitted {
  /// Returns a new [FormViewSubmitted] instance.
  FormViewSubmitted({
    this.submitAction,
    this.submitActionMessage,
    this.submitActionRedirectUrl,
    required this.rowId,
  });

  /// The action that must be performed after the visitor has filled out the form.  * `MESSAGE` - Message * `REDIRECT` - Redirect
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SubmitActionEnum? submitAction;

  /// If the `submit_action` is MESSAGE, then this message will be shown to the visitor after submitting the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitActionMessage;

  /// If the `submit_action` is REDIRECT,then the visitors will be redirected to the this URL after submitting the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitActionRedirectUrl;

  int rowId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FormViewSubmitted &&
    other.submitAction == submitAction &&
    other.submitActionMessage == submitActionMessage &&
    other.submitActionRedirectUrl == submitActionRedirectUrl &&
    other.rowId == rowId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (submitAction == null ? 0 : submitAction!.hashCode) +
    (submitActionMessage == null ? 0 : submitActionMessage!.hashCode) +
    (submitActionRedirectUrl == null ? 0 : submitActionRedirectUrl!.hashCode) +
    (rowId.hashCode);

  @override
  String toString() => 'FormViewSubmitted[submitAction=$submitAction, submitActionMessage=$submitActionMessage, submitActionRedirectUrl=$submitActionRedirectUrl, rowId=$rowId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.submitAction != null) {
      json[r'submit_action'] = this.submitAction;
    } else {
      json[r'submit_action'] = null;
    }
    if (this.submitActionMessage != null) {
      json[r'submit_action_message'] = this.submitActionMessage;
    } else {
      json[r'submit_action_message'] = null;
    }
    if (this.submitActionRedirectUrl != null) {
      json[r'submit_action_redirect_url'] = this.submitActionRedirectUrl;
    } else {
      json[r'submit_action_redirect_url'] = null;
    }
      json[r'row_id'] = this.rowId;
    return json;
  }

  /// Returns a new [FormViewSubmitted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FormViewSubmitted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FormViewSubmitted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FormViewSubmitted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FormViewSubmitted(
        submitAction: SubmitActionEnum.fromJson(json[r'submit_action']),
        submitActionMessage: mapValueOfType<String>(json, r'submit_action_message'),
        submitActionRedirectUrl: mapValueOfType<String>(json, r'submit_action_redirect_url'),
        rowId: mapValueOfType<int>(json, r'row_id')!,
      );
    }
    return null;
  }

  static List<FormViewSubmitted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormViewSubmitted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormViewSubmitted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FormViewSubmitted> mapFromJson(dynamic json) {
    final map = <String, FormViewSubmitted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FormViewSubmitted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FormViewSubmitted-objects as value to a dart map
  static Map<String, List<FormViewSubmitted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FormViewSubmitted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FormViewSubmitted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'row_id',
  };
}

