//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicFormView {
  /// Returns a new [PublicFormView] instance.
  PublicFormView({
    this.title,
    this.description,
    this.mode,
    this.coverImage,
    this.logoImage,
    this.submitText,
    this.fields = const [],
    this.showLogo,
  });

  /// The title that is displayed at the beginning of the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The description that is displayed at the beginning of the form.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Configurable mode of the form.  * `form` - form * `survey` - survey
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Mode51eEnum? mode;

  /// The user file cover image that is displayed at the top of the form.
  UserFile? coverImage;

  /// The user file logo image that is displayed at the top of the form.
  UserFile? logoImage;

  /// The text displayed on the submit button.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? submitText;

  List<PublicFormViewFieldOptions> fields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showLogo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicFormView &&
    other.title == title &&
    other.description == description &&
    other.mode == mode &&
    other.coverImage == coverImage &&
    other.logoImage == logoImage &&
    other.submitText == submitText &&
    _deepEquality.equals(other.fields, fields) &&
    other.showLogo == showLogo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (coverImage == null ? 0 : coverImage!.hashCode) +
    (logoImage == null ? 0 : logoImage!.hashCode) +
    (submitText == null ? 0 : submitText!.hashCode) +
    (fields.hashCode) +
    (showLogo == null ? 0 : showLogo!.hashCode);

  @override
  String toString() => 'PublicFormView[title=$title, description=$description, mode=$mode, coverImage=$coverImage, logoImage=$logoImage, submitText=$submitText, fields=$fields, showLogo=$showLogo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
    if (this.coverImage != null) {
      json[r'cover_image'] = this.coverImage;
    } else {
      json[r'cover_image'] = null;
    }
    if (this.logoImage != null) {
      json[r'logo_image'] = this.logoImage;
    } else {
      json[r'logo_image'] = null;
    }
    if (this.submitText != null) {
      json[r'submit_text'] = this.submitText;
    } else {
      json[r'submit_text'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.showLogo != null) {
      json[r'show_logo'] = this.showLogo;
    } else {
      json[r'show_logo'] = null;
    }
    return json;
  }

  /// Returns a new [PublicFormView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicFormView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicFormView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicFormView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicFormView(
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        mode: Mode51eEnum.fromJson(json[r'mode']),
        coverImage: UserFile.fromJson(json[r'cover_image']),
        logoImage: UserFile.fromJson(json[r'logo_image']),
        submitText: mapValueOfType<String>(json, r'submit_text'),
        fields: PublicFormViewFieldOptions.listFromJson(json[r'fields']),
        showLogo: mapValueOfType<bool>(json, r'show_logo'),
      );
    }
    return null;
  }

  static List<PublicFormView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicFormView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicFormView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicFormView> mapFromJson(dynamic json) {
    final map = <String, PublicFormView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicFormView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicFormView-objects as value to a dart map
  static Map<String, List<PublicFormView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicFormView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicFormView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fields',
  };
}

