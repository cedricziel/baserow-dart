//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LinkThemeConfigBlock {
  /// Returns a new [LinkThemeConfigBlock] instance.
  LinkThemeConfigBlock({
    this.linkFontFamily,
    this.linkFontSize,
    this.linkTextAlignment,
    this.linkTextColor,
    this.linkHoverTextColor,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkFontFamily;

  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? linkFontSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TableCellAlignmentEnum? linkTextAlignment;

  /// The text color of links
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkTextColor;

  /// The hover color of links when hovered
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? linkHoverTextColor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkThemeConfigBlock &&
    other.linkFontFamily == linkFontFamily &&
    other.linkFontSize == linkFontSize &&
    other.linkTextAlignment == linkTextAlignment &&
    other.linkTextColor == linkTextColor &&
    other.linkHoverTextColor == linkHoverTextColor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (linkFontFamily == null ? 0 : linkFontFamily!.hashCode) +
    (linkFontSize == null ? 0 : linkFontSize!.hashCode) +
    (linkTextAlignment == null ? 0 : linkTextAlignment!.hashCode) +
    (linkTextColor == null ? 0 : linkTextColor!.hashCode) +
    (linkHoverTextColor == null ? 0 : linkHoverTextColor!.hashCode);

  @override
  String toString() => 'LinkThemeConfigBlock[linkFontFamily=$linkFontFamily, linkFontSize=$linkFontSize, linkTextAlignment=$linkTextAlignment, linkTextColor=$linkTextColor, linkHoverTextColor=$linkHoverTextColor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.linkFontFamily != null) {
      json[r'link_font_family'] = this.linkFontFamily;
    } else {
      json[r'link_font_family'] = null;
    }
    if (this.linkFontSize != null) {
      json[r'link_font_size'] = this.linkFontSize;
    } else {
      json[r'link_font_size'] = null;
    }
    if (this.linkTextAlignment != null) {
      json[r'link_text_alignment'] = this.linkTextAlignment;
    } else {
      json[r'link_text_alignment'] = null;
    }
    if (this.linkTextColor != null) {
      json[r'link_text_color'] = this.linkTextColor;
    } else {
      json[r'link_text_color'] = null;
    }
    if (this.linkHoverTextColor != null) {
      json[r'link_hover_text_color'] = this.linkHoverTextColor;
    } else {
      json[r'link_hover_text_color'] = null;
    }
    return json;
  }

  /// Returns a new [LinkThemeConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkThemeConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkThemeConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkThemeConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkThemeConfigBlock(
        linkFontFamily: mapValueOfType<String>(json, r'link_font_family'),
        linkFontSize: mapValueOfType<int>(json, r'link_font_size'),
        linkTextAlignment: TableCellAlignmentEnum.fromJson(json[r'link_text_alignment']),
        linkTextColor: mapValueOfType<String>(json, r'link_text_color'),
        linkHoverTextColor: mapValueOfType<String>(json, r'link_hover_text_color'),
      );
    }
    return null;
  }

  static List<LinkThemeConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkThemeConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkThemeConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkThemeConfigBlock> mapFromJson(dynamic json) {
    final map = <String, LinkThemeConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkThemeConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkThemeConfigBlock-objects as value to a dart map
  static Map<String, List<LinkThemeConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkThemeConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkThemeConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

