//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TextElementCreateElement {
  /// Returns a new [TextElementCreateElement] instance.
  TextElementCreateElement({
    required this.order,
    this.beforeId,
    required this.type,
    this.parentElementId,
    this.placeInContainer,
    this.visibility = Visibility789Enum.all,
    this.styles,
    this.styleBorderTopColor,
    this.styleBorderTopSize,
    this.stylePaddingTop,
    this.styleMarginTop,
    this.styleBorderBottomColor,
    this.styleBorderBottomSize,
    this.stylePaddingBottom,
    this.styleMarginBottom,
    this.styleBorderLeftColor,
    this.styleBorderLeftSize,
    this.stylePaddingLeft,
    this.styleMarginLeft,
    this.styleBorderRightColor,
    this.styleBorderRightSize,
    this.stylePaddingRight,
    this.styleMarginRight,
    this.styleBackground,
    this.styleBackgroundColor,
    this.styleBackgroundFile,
    this.styleBackgroundMode,
    this.styleWidth,
    this.value = '',
    this.format = FormatEnum.plain,
  });

  /// Lowest first.
  double order;

  /// If provided, creates the element before the element with the given id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? beforeId;

  /// The type of the element.  * `heading` - heading * `text` - text * `link` - link * `image` - image * `input_text` - input_text * `column` - column * `button` - button * `table` - table * `repeat` - repeat * `record_selector` - record_selector * `form_container` - form_container * `choice` - choice * `checkbox` - checkbox * `iframe` - iframe * `datetime_picker` - datetime_picker * `header` - header * `footer` - footer * `auth_form` - auth_form
  TypeD53Enum type;

  /// If provided, creates the element as a child of the element with the given id.
  int? parentElementId;

  /// The place in the container.
  String? placeInContainer;

  Visibility789Enum visibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TypographyConfigBlock? styles;

  /// Top border color.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderTopColor;

  /// Pixel height of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderTopSize;

  /// Padding size of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingTop;

  /// Margin size of the top border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginTop;

  /// Bottom border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderBottomColor;

  /// Pixel height of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderBottomSize;

  /// Padding size of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingBottom;

  /// Margin size of the bottom border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginBottom;

  /// Left border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderLeftColor;

  /// Pixel height of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderLeftSize;

  /// Padding size of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingLeft;

  /// Margin size of the left border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginLeft;

  /// Right border color
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBorderRightColor;

  /// Pixel height of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleBorderRightSize;

  /// Padding size of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stylePaddingRight;

  /// Margin size of the right border.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? styleMarginRight;

  /// What type of background the element should have.  * `none` - None * `color` - Color * `image` - Image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleBackgroundEnum? styleBackground;

  /// The background color if `style_background` is color.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? styleBackgroundColor;

  /// The background image file
  UserFile? styleBackgroundFile;

  /// The mode of the background image  * `tile` - Tile * `fill` - Fill * `fit` - Fit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleBackgroundModeEnum? styleBackgroundMode;

  /// Indicates the width of the element.  * `full` - Full * `full-width` - Full Width * `normal` - Normal * `medium` - Medium * `small` - Small
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleWidthEnum? styleWidth;

  /// The value of the element. Must be a formula.
  String value;

  /// The format of the text  * `plain` - Plain * `markdown` - Markdown
  FormatEnum format;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TextElementCreateElement &&
    other.order == order &&
    other.beforeId == beforeId &&
    other.type == type &&
    other.parentElementId == parentElementId &&
    other.placeInContainer == placeInContainer &&
    other.visibility == visibility &&
    other.styles == styles &&
    other.styleBorderTopColor == styleBorderTopColor &&
    other.styleBorderTopSize == styleBorderTopSize &&
    other.stylePaddingTop == stylePaddingTop &&
    other.styleMarginTop == styleMarginTop &&
    other.styleBorderBottomColor == styleBorderBottomColor &&
    other.styleBorderBottomSize == styleBorderBottomSize &&
    other.stylePaddingBottom == stylePaddingBottom &&
    other.styleMarginBottom == styleMarginBottom &&
    other.styleBorderLeftColor == styleBorderLeftColor &&
    other.styleBorderLeftSize == styleBorderLeftSize &&
    other.stylePaddingLeft == stylePaddingLeft &&
    other.styleMarginLeft == styleMarginLeft &&
    other.styleBorderRightColor == styleBorderRightColor &&
    other.styleBorderRightSize == styleBorderRightSize &&
    other.stylePaddingRight == stylePaddingRight &&
    other.styleMarginRight == styleMarginRight &&
    other.styleBackground == styleBackground &&
    other.styleBackgroundColor == styleBackgroundColor &&
    other.styleBackgroundFile == styleBackgroundFile &&
    other.styleBackgroundMode == styleBackgroundMode &&
    other.styleWidth == styleWidth &&
    other.value == value &&
    other.format == format;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (order.hashCode) +
    (beforeId == null ? 0 : beforeId!.hashCode) +
    (type.hashCode) +
    (parentElementId == null ? 0 : parentElementId!.hashCode) +
    (placeInContainer == null ? 0 : placeInContainer!.hashCode) +
    (visibility.hashCode) +
    (styles == null ? 0 : styles!.hashCode) +
    (styleBorderTopColor == null ? 0 : styleBorderTopColor!.hashCode) +
    (styleBorderTopSize == null ? 0 : styleBorderTopSize!.hashCode) +
    (stylePaddingTop == null ? 0 : stylePaddingTop!.hashCode) +
    (styleMarginTop == null ? 0 : styleMarginTop!.hashCode) +
    (styleBorderBottomColor == null ? 0 : styleBorderBottomColor!.hashCode) +
    (styleBorderBottomSize == null ? 0 : styleBorderBottomSize!.hashCode) +
    (stylePaddingBottom == null ? 0 : stylePaddingBottom!.hashCode) +
    (styleMarginBottom == null ? 0 : styleMarginBottom!.hashCode) +
    (styleBorderLeftColor == null ? 0 : styleBorderLeftColor!.hashCode) +
    (styleBorderLeftSize == null ? 0 : styleBorderLeftSize!.hashCode) +
    (stylePaddingLeft == null ? 0 : stylePaddingLeft!.hashCode) +
    (styleMarginLeft == null ? 0 : styleMarginLeft!.hashCode) +
    (styleBorderRightColor == null ? 0 : styleBorderRightColor!.hashCode) +
    (styleBorderRightSize == null ? 0 : styleBorderRightSize!.hashCode) +
    (stylePaddingRight == null ? 0 : stylePaddingRight!.hashCode) +
    (styleMarginRight == null ? 0 : styleMarginRight!.hashCode) +
    (styleBackground == null ? 0 : styleBackground!.hashCode) +
    (styleBackgroundColor == null ? 0 : styleBackgroundColor!.hashCode) +
    (styleBackgroundFile == null ? 0 : styleBackgroundFile!.hashCode) +
    (styleBackgroundMode == null ? 0 : styleBackgroundMode!.hashCode) +
    (styleWidth == null ? 0 : styleWidth!.hashCode) +
    (value.hashCode) +
    (format.hashCode);

  @override
  String toString() => 'TextElementCreateElement[order=$order, beforeId=$beforeId, type=$type, parentElementId=$parentElementId, placeInContainer=$placeInContainer, visibility=$visibility, styles=$styles, styleBorderTopColor=$styleBorderTopColor, styleBorderTopSize=$styleBorderTopSize, stylePaddingTop=$stylePaddingTop, styleMarginTop=$styleMarginTop, styleBorderBottomColor=$styleBorderBottomColor, styleBorderBottomSize=$styleBorderBottomSize, stylePaddingBottom=$stylePaddingBottom, styleMarginBottom=$styleMarginBottom, styleBorderLeftColor=$styleBorderLeftColor, styleBorderLeftSize=$styleBorderLeftSize, stylePaddingLeft=$stylePaddingLeft, styleMarginLeft=$styleMarginLeft, styleBorderRightColor=$styleBorderRightColor, styleBorderRightSize=$styleBorderRightSize, stylePaddingRight=$stylePaddingRight, styleMarginRight=$styleMarginRight, styleBackground=$styleBackground, styleBackgroundColor=$styleBackgroundColor, styleBackgroundFile=$styleBackgroundFile, styleBackgroundMode=$styleBackgroundMode, styleWidth=$styleWidth, value=$value, format=$format]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'order'] = this.order;
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
    }
      json[r'type'] = this.type;
    if (this.parentElementId != null) {
      json[r'parent_element_id'] = this.parentElementId;
    } else {
      json[r'parent_element_id'] = null;
    }
    if (this.placeInContainer != null) {
      json[r'place_in_container'] = this.placeInContainer;
    } else {
      json[r'place_in_container'] = null;
    }
      json[r'visibility'] = this.visibility;
    if (this.styles != null) {
      json[r'styles'] = this.styles;
    } else {
      json[r'styles'] = null;
    }
    if (this.styleBorderTopColor != null) {
      json[r'style_border_top_color'] = this.styleBorderTopColor;
    } else {
      json[r'style_border_top_color'] = null;
    }
    if (this.styleBorderTopSize != null) {
      json[r'style_border_top_size'] = this.styleBorderTopSize;
    } else {
      json[r'style_border_top_size'] = null;
    }
    if (this.stylePaddingTop != null) {
      json[r'style_padding_top'] = this.stylePaddingTop;
    } else {
      json[r'style_padding_top'] = null;
    }
    if (this.styleMarginTop != null) {
      json[r'style_margin_top'] = this.styleMarginTop;
    } else {
      json[r'style_margin_top'] = null;
    }
    if (this.styleBorderBottomColor != null) {
      json[r'style_border_bottom_color'] = this.styleBorderBottomColor;
    } else {
      json[r'style_border_bottom_color'] = null;
    }
    if (this.styleBorderBottomSize != null) {
      json[r'style_border_bottom_size'] = this.styleBorderBottomSize;
    } else {
      json[r'style_border_bottom_size'] = null;
    }
    if (this.stylePaddingBottom != null) {
      json[r'style_padding_bottom'] = this.stylePaddingBottom;
    } else {
      json[r'style_padding_bottom'] = null;
    }
    if (this.styleMarginBottom != null) {
      json[r'style_margin_bottom'] = this.styleMarginBottom;
    } else {
      json[r'style_margin_bottom'] = null;
    }
    if (this.styleBorderLeftColor != null) {
      json[r'style_border_left_color'] = this.styleBorderLeftColor;
    } else {
      json[r'style_border_left_color'] = null;
    }
    if (this.styleBorderLeftSize != null) {
      json[r'style_border_left_size'] = this.styleBorderLeftSize;
    } else {
      json[r'style_border_left_size'] = null;
    }
    if (this.stylePaddingLeft != null) {
      json[r'style_padding_left'] = this.stylePaddingLeft;
    } else {
      json[r'style_padding_left'] = null;
    }
    if (this.styleMarginLeft != null) {
      json[r'style_margin_left'] = this.styleMarginLeft;
    } else {
      json[r'style_margin_left'] = null;
    }
    if (this.styleBorderRightColor != null) {
      json[r'style_border_right_color'] = this.styleBorderRightColor;
    } else {
      json[r'style_border_right_color'] = null;
    }
    if (this.styleBorderRightSize != null) {
      json[r'style_border_right_size'] = this.styleBorderRightSize;
    } else {
      json[r'style_border_right_size'] = null;
    }
    if (this.stylePaddingRight != null) {
      json[r'style_padding_right'] = this.stylePaddingRight;
    } else {
      json[r'style_padding_right'] = null;
    }
    if (this.styleMarginRight != null) {
      json[r'style_margin_right'] = this.styleMarginRight;
    } else {
      json[r'style_margin_right'] = null;
    }
    if (this.styleBackground != null) {
      json[r'style_background'] = this.styleBackground;
    } else {
      json[r'style_background'] = null;
    }
    if (this.styleBackgroundColor != null) {
      json[r'style_background_color'] = this.styleBackgroundColor;
    } else {
      json[r'style_background_color'] = null;
    }
    if (this.styleBackgroundFile != null) {
      json[r'style_background_file'] = this.styleBackgroundFile;
    } else {
      json[r'style_background_file'] = null;
    }
    if (this.styleBackgroundMode != null) {
      json[r'style_background_mode'] = this.styleBackgroundMode;
    } else {
      json[r'style_background_mode'] = null;
    }
    if (this.styleWidth != null) {
      json[r'style_width'] = this.styleWidth;
    } else {
      json[r'style_width'] = null;
    }
      json[r'value'] = this.value;
      json[r'format'] = this.format;
    return json;
  }

  /// Returns a new [TextElementCreateElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TextElementCreateElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TextElementCreateElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TextElementCreateElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TextElementCreateElement(
        order: mapValueOfType<double>(json, r'order')!,
        beforeId: mapValueOfType<int>(json, r'before_id'),
        type: TypeD53Enum.fromJson(json[r'type'])!,
        parentElementId: mapValueOfType<int>(json, r'parent_element_id'),
        placeInContainer: mapValueOfType<String>(json, r'place_in_container'),
        visibility: Visibility789Enum.fromJson(json[r'visibility']) ?? Visibility789Enum.all,
        styles: TypographyConfigBlock.fromJson(json[r'styles']),
        styleBorderTopColor: mapValueOfType<String>(json, r'style_border_top_color'),
        styleBorderTopSize: mapValueOfType<int>(json, r'style_border_top_size'),
        stylePaddingTop: mapValueOfType<int>(json, r'style_padding_top'),
        styleMarginTop: mapValueOfType<int>(json, r'style_margin_top'),
        styleBorderBottomColor: mapValueOfType<String>(json, r'style_border_bottom_color'),
        styleBorderBottomSize: mapValueOfType<int>(json, r'style_border_bottom_size'),
        stylePaddingBottom: mapValueOfType<int>(json, r'style_padding_bottom'),
        styleMarginBottom: mapValueOfType<int>(json, r'style_margin_bottom'),
        styleBorderLeftColor: mapValueOfType<String>(json, r'style_border_left_color'),
        styleBorderLeftSize: mapValueOfType<int>(json, r'style_border_left_size'),
        stylePaddingLeft: mapValueOfType<int>(json, r'style_padding_left'),
        styleMarginLeft: mapValueOfType<int>(json, r'style_margin_left'),
        styleBorderRightColor: mapValueOfType<String>(json, r'style_border_right_color'),
        styleBorderRightSize: mapValueOfType<int>(json, r'style_border_right_size'),
        stylePaddingRight: mapValueOfType<int>(json, r'style_padding_right'),
        styleMarginRight: mapValueOfType<int>(json, r'style_margin_right'),
        styleBackground: StyleBackgroundEnum.fromJson(json[r'style_background']),
        styleBackgroundColor: mapValueOfType<String>(json, r'style_background_color'),
        styleBackgroundFile: UserFile.fromJson(json[r'style_background_file']),
        styleBackgroundMode: StyleBackgroundModeEnum.fromJson(json[r'style_background_mode']),
        styleWidth: StyleWidthEnum.fromJson(json[r'style_width']),
        value: mapValueOfType<String>(json, r'value') ?? '',
        format: FormatEnum.fromJson(json[r'format']) ?? FormatEnum.plain,
      );
    }
    return null;
  }

  static List<TextElementCreateElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TextElementCreateElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TextElementCreateElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TextElementCreateElement> mapFromJson(dynamic json) {
    final map = <String, TextElementCreateElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TextElementCreateElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TextElementCreateElement-objects as value to a dart map
  static Map<String, List<TextElementCreateElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TextElementCreateElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TextElementCreateElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'order',
    'type',
  };
}

