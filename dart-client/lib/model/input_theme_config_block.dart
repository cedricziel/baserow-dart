//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class InputThemeConfigBlock {
  /// Returns a new [InputThemeConfigBlock] instance.
  InputThemeConfigBlock({
    this.labelFontFamily,
    this.labelTextColor,
    this.labelFontSize,
    this.inputFontFamily,
    this.inputFontSize,
    this.inputTextColor,
    this.inputBackgroundColor,
    this.inputBorderColor,
    this.inputBorderSize,
    this.inputBorderRadius,
    this.inputVerticalPadding,
    this.inputHorizontalPadding,
  });

  /// The font family of the label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? labelFontFamily;

  /// The text color of the label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? labelTextColor;

  /// The font size of the label
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? labelFontSize;

  /// The font family of the input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inputFontFamily;

  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputFontSize;

  /// The text color of the input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inputTextColor;

  /// The background color of the input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inputBackgroundColor;

  /// The color of the input border
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inputBorderColor;

  /// Input border size
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputBorderSize;

  /// Input border radius
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputBorderRadius;

  /// Input vertical padding
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputVerticalPadding;

  /// Input horizontal padding
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? inputHorizontalPadding;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputThemeConfigBlock &&
    other.labelFontFamily == labelFontFamily &&
    other.labelTextColor == labelTextColor &&
    other.labelFontSize == labelFontSize &&
    other.inputFontFamily == inputFontFamily &&
    other.inputFontSize == inputFontSize &&
    other.inputTextColor == inputTextColor &&
    other.inputBackgroundColor == inputBackgroundColor &&
    other.inputBorderColor == inputBorderColor &&
    other.inputBorderSize == inputBorderSize &&
    other.inputBorderRadius == inputBorderRadius &&
    other.inputVerticalPadding == inputVerticalPadding &&
    other.inputHorizontalPadding == inputHorizontalPadding;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labelFontFamily == null ? 0 : labelFontFamily!.hashCode) +
    (labelTextColor == null ? 0 : labelTextColor!.hashCode) +
    (labelFontSize == null ? 0 : labelFontSize!.hashCode) +
    (inputFontFamily == null ? 0 : inputFontFamily!.hashCode) +
    (inputFontSize == null ? 0 : inputFontSize!.hashCode) +
    (inputTextColor == null ? 0 : inputTextColor!.hashCode) +
    (inputBackgroundColor == null ? 0 : inputBackgroundColor!.hashCode) +
    (inputBorderColor == null ? 0 : inputBorderColor!.hashCode) +
    (inputBorderSize == null ? 0 : inputBorderSize!.hashCode) +
    (inputBorderRadius == null ? 0 : inputBorderRadius!.hashCode) +
    (inputVerticalPadding == null ? 0 : inputVerticalPadding!.hashCode) +
    (inputHorizontalPadding == null ? 0 : inputHorizontalPadding!.hashCode);

  @override
  String toString() => 'InputThemeConfigBlock[labelFontFamily=$labelFontFamily, labelTextColor=$labelTextColor, labelFontSize=$labelFontSize, inputFontFamily=$inputFontFamily, inputFontSize=$inputFontSize, inputTextColor=$inputTextColor, inputBackgroundColor=$inputBackgroundColor, inputBorderColor=$inputBorderColor, inputBorderSize=$inputBorderSize, inputBorderRadius=$inputBorderRadius, inputVerticalPadding=$inputVerticalPadding, inputHorizontalPadding=$inputHorizontalPadding]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.labelFontFamily != null) {
      json[r'label_font_family'] = this.labelFontFamily;
    } else {
      json[r'label_font_family'] = null;
    }
    if (this.labelTextColor != null) {
      json[r'label_text_color'] = this.labelTextColor;
    } else {
      json[r'label_text_color'] = null;
    }
    if (this.labelFontSize != null) {
      json[r'label_font_size'] = this.labelFontSize;
    } else {
      json[r'label_font_size'] = null;
    }
    if (this.inputFontFamily != null) {
      json[r'input_font_family'] = this.inputFontFamily;
    } else {
      json[r'input_font_family'] = null;
    }
    if (this.inputFontSize != null) {
      json[r'input_font_size'] = this.inputFontSize;
    } else {
      json[r'input_font_size'] = null;
    }
    if (this.inputTextColor != null) {
      json[r'input_text_color'] = this.inputTextColor;
    } else {
      json[r'input_text_color'] = null;
    }
    if (this.inputBackgroundColor != null) {
      json[r'input_background_color'] = this.inputBackgroundColor;
    } else {
      json[r'input_background_color'] = null;
    }
    if (this.inputBorderColor != null) {
      json[r'input_border_color'] = this.inputBorderColor;
    } else {
      json[r'input_border_color'] = null;
    }
    if (this.inputBorderSize != null) {
      json[r'input_border_size'] = this.inputBorderSize;
    } else {
      json[r'input_border_size'] = null;
    }
    if (this.inputBorderRadius != null) {
      json[r'input_border_radius'] = this.inputBorderRadius;
    } else {
      json[r'input_border_radius'] = null;
    }
    if (this.inputVerticalPadding != null) {
      json[r'input_vertical_padding'] = this.inputVerticalPadding;
    } else {
      json[r'input_vertical_padding'] = null;
    }
    if (this.inputHorizontalPadding != null) {
      json[r'input_horizontal_padding'] = this.inputHorizontalPadding;
    } else {
      json[r'input_horizontal_padding'] = null;
    }
    return json;
  }

  /// Returns a new [InputThemeConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputThemeConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InputThemeConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InputThemeConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InputThemeConfigBlock(
        labelFontFamily: mapValueOfType<String>(json, r'label_font_family'),
        labelTextColor: mapValueOfType<String>(json, r'label_text_color'),
        labelFontSize: mapValueOfType<int>(json, r'label_font_size'),
        inputFontFamily: mapValueOfType<String>(json, r'input_font_family'),
        inputFontSize: mapValueOfType<int>(json, r'input_font_size'),
        inputTextColor: mapValueOfType<String>(json, r'input_text_color'),
        inputBackgroundColor: mapValueOfType<String>(json, r'input_background_color'),
        inputBorderColor: mapValueOfType<String>(json, r'input_border_color'),
        inputBorderSize: mapValueOfType<int>(json, r'input_border_size'),
        inputBorderRadius: mapValueOfType<int>(json, r'input_border_radius'),
        inputVerticalPadding: mapValueOfType<int>(json, r'input_vertical_padding'),
        inputHorizontalPadding: mapValueOfType<int>(json, r'input_horizontal_padding'),
      );
    }
    return null;
  }

  static List<InputThemeConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputThemeConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputThemeConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InputThemeConfigBlock> mapFromJson(dynamic json) {
    final map = <String, InputThemeConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InputThemeConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InputThemeConfigBlock-objects as value to a dart map
  static Map<String, List<InputThemeConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InputThemeConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InputThemeConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

