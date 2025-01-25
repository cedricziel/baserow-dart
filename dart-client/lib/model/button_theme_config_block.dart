//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ButtonThemeConfigBlock {
  /// Returns a new [ButtonThemeConfigBlock] instance.
  ButtonThemeConfigBlock({
    this.buttonFontFamily,
    this.buttonFontSize,
    this.buttonAlignment,
    this.buttonTextAlignment,
    this.buttonWidth,
    this.buttonBackgroundColor,
    this.buttonTextColor,
    this.buttonBorderColor,
    this.buttonBorderSize,
    this.buttonBorderRadius,
    this.buttonVerticalPadding,
    this.buttonHorizontalPadding,
    this.buttonHoverBackgroundColor,
    this.buttonHoverTextColor,
    this.buttonHoverBorderColor,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonFontFamily;

  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buttonFontSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TableCellAlignmentEnum? buttonAlignment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TableCellAlignmentEnum? buttonTextAlignment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ButtonWidthEnum? buttonWidth;

  /// The background color of buttons
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonBackgroundColor;

  /// The text color of buttons
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonTextColor;

  /// The border color of buttons
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonBorderColor;

  /// Button border size
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buttonBorderSize;

  /// Button border radius
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buttonBorderRadius;

  /// Button vertical padding
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buttonVerticalPadding;

  /// Button horizontal padding
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? buttonHorizontalPadding;

  /// The background color of buttons when hovered
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonHoverBackgroundColor;

  /// The text color of buttons when hovered
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonHoverTextColor;

  /// The border color of buttons when hovered
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buttonHoverBorderColor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ButtonThemeConfigBlock &&
    other.buttonFontFamily == buttonFontFamily &&
    other.buttonFontSize == buttonFontSize &&
    other.buttonAlignment == buttonAlignment &&
    other.buttonTextAlignment == buttonTextAlignment &&
    other.buttonWidth == buttonWidth &&
    other.buttonBackgroundColor == buttonBackgroundColor &&
    other.buttonTextColor == buttonTextColor &&
    other.buttonBorderColor == buttonBorderColor &&
    other.buttonBorderSize == buttonBorderSize &&
    other.buttonBorderRadius == buttonBorderRadius &&
    other.buttonVerticalPadding == buttonVerticalPadding &&
    other.buttonHorizontalPadding == buttonHorizontalPadding &&
    other.buttonHoverBackgroundColor == buttonHoverBackgroundColor &&
    other.buttonHoverTextColor == buttonHoverTextColor &&
    other.buttonHoverBorderColor == buttonHoverBorderColor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buttonFontFamily == null ? 0 : buttonFontFamily!.hashCode) +
    (buttonFontSize == null ? 0 : buttonFontSize!.hashCode) +
    (buttonAlignment == null ? 0 : buttonAlignment!.hashCode) +
    (buttonTextAlignment == null ? 0 : buttonTextAlignment!.hashCode) +
    (buttonWidth == null ? 0 : buttonWidth!.hashCode) +
    (buttonBackgroundColor == null ? 0 : buttonBackgroundColor!.hashCode) +
    (buttonTextColor == null ? 0 : buttonTextColor!.hashCode) +
    (buttonBorderColor == null ? 0 : buttonBorderColor!.hashCode) +
    (buttonBorderSize == null ? 0 : buttonBorderSize!.hashCode) +
    (buttonBorderRadius == null ? 0 : buttonBorderRadius!.hashCode) +
    (buttonVerticalPadding == null ? 0 : buttonVerticalPadding!.hashCode) +
    (buttonHorizontalPadding == null ? 0 : buttonHorizontalPadding!.hashCode) +
    (buttonHoverBackgroundColor == null ? 0 : buttonHoverBackgroundColor!.hashCode) +
    (buttonHoverTextColor == null ? 0 : buttonHoverTextColor!.hashCode) +
    (buttonHoverBorderColor == null ? 0 : buttonHoverBorderColor!.hashCode);

  @override
  String toString() => 'ButtonThemeConfigBlock[buttonFontFamily=$buttonFontFamily, buttonFontSize=$buttonFontSize, buttonAlignment=$buttonAlignment, buttonTextAlignment=$buttonTextAlignment, buttonWidth=$buttonWidth, buttonBackgroundColor=$buttonBackgroundColor, buttonTextColor=$buttonTextColor, buttonBorderColor=$buttonBorderColor, buttonBorderSize=$buttonBorderSize, buttonBorderRadius=$buttonBorderRadius, buttonVerticalPadding=$buttonVerticalPadding, buttonHorizontalPadding=$buttonHorizontalPadding, buttonHoverBackgroundColor=$buttonHoverBackgroundColor, buttonHoverTextColor=$buttonHoverTextColor, buttonHoverBorderColor=$buttonHoverBorderColor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.buttonFontFamily != null) {
      json[r'button_font_family'] = this.buttonFontFamily;
    } else {
      json[r'button_font_family'] = null;
    }
    if (this.buttonFontSize != null) {
      json[r'button_font_size'] = this.buttonFontSize;
    } else {
      json[r'button_font_size'] = null;
    }
    if (this.buttonAlignment != null) {
      json[r'button_alignment'] = this.buttonAlignment;
    } else {
      json[r'button_alignment'] = null;
    }
    if (this.buttonTextAlignment != null) {
      json[r'button_text_alignment'] = this.buttonTextAlignment;
    } else {
      json[r'button_text_alignment'] = null;
    }
    if (this.buttonWidth != null) {
      json[r'button_width'] = this.buttonWidth;
    } else {
      json[r'button_width'] = null;
    }
    if (this.buttonBackgroundColor != null) {
      json[r'button_background_color'] = this.buttonBackgroundColor;
    } else {
      json[r'button_background_color'] = null;
    }
    if (this.buttonTextColor != null) {
      json[r'button_text_color'] = this.buttonTextColor;
    } else {
      json[r'button_text_color'] = null;
    }
    if (this.buttonBorderColor != null) {
      json[r'button_border_color'] = this.buttonBorderColor;
    } else {
      json[r'button_border_color'] = null;
    }
    if (this.buttonBorderSize != null) {
      json[r'button_border_size'] = this.buttonBorderSize;
    } else {
      json[r'button_border_size'] = null;
    }
    if (this.buttonBorderRadius != null) {
      json[r'button_border_radius'] = this.buttonBorderRadius;
    } else {
      json[r'button_border_radius'] = null;
    }
    if (this.buttonVerticalPadding != null) {
      json[r'button_vertical_padding'] = this.buttonVerticalPadding;
    } else {
      json[r'button_vertical_padding'] = null;
    }
    if (this.buttonHorizontalPadding != null) {
      json[r'button_horizontal_padding'] = this.buttonHorizontalPadding;
    } else {
      json[r'button_horizontal_padding'] = null;
    }
    if (this.buttonHoverBackgroundColor != null) {
      json[r'button_hover_background_color'] = this.buttonHoverBackgroundColor;
    } else {
      json[r'button_hover_background_color'] = null;
    }
    if (this.buttonHoverTextColor != null) {
      json[r'button_hover_text_color'] = this.buttonHoverTextColor;
    } else {
      json[r'button_hover_text_color'] = null;
    }
    if (this.buttonHoverBorderColor != null) {
      json[r'button_hover_border_color'] = this.buttonHoverBorderColor;
    } else {
      json[r'button_hover_border_color'] = null;
    }
    return json;
  }

  /// Returns a new [ButtonThemeConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ButtonThemeConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ButtonThemeConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ButtonThemeConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ButtonThemeConfigBlock(
        buttonFontFamily: mapValueOfType<String>(json, r'button_font_family'),
        buttonFontSize: mapValueOfType<int>(json, r'button_font_size'),
        buttonAlignment: TableCellAlignmentEnum.fromJson(json[r'button_alignment']),
        buttonTextAlignment: TableCellAlignmentEnum.fromJson(json[r'button_text_alignment']),
        buttonWidth: ButtonWidthEnum.fromJson(json[r'button_width']),
        buttonBackgroundColor: mapValueOfType<String>(json, r'button_background_color'),
        buttonTextColor: mapValueOfType<String>(json, r'button_text_color'),
        buttonBorderColor: mapValueOfType<String>(json, r'button_border_color'),
        buttonBorderSize: mapValueOfType<int>(json, r'button_border_size'),
        buttonBorderRadius: mapValueOfType<int>(json, r'button_border_radius'),
        buttonVerticalPadding: mapValueOfType<int>(json, r'button_vertical_padding'),
        buttonHorizontalPadding: mapValueOfType<int>(json, r'button_horizontal_padding'),
        buttonHoverBackgroundColor: mapValueOfType<String>(json, r'button_hover_background_color'),
        buttonHoverTextColor: mapValueOfType<String>(json, r'button_hover_text_color'),
        buttonHoverBorderColor: mapValueOfType<String>(json, r'button_hover_border_color'),
      );
    }
    return null;
  }

  static List<ButtonThemeConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ButtonThemeConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ButtonThemeConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ButtonThemeConfigBlock> mapFromJson(dynamic json) {
    final map = <String, ButtonThemeConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ButtonThemeConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ButtonThemeConfigBlock-objects as value to a dart map
  static Map<String, List<ButtonThemeConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ButtonThemeConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ButtonThemeConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

