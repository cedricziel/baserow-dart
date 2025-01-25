//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ImageThemeConfigBlock {
  /// Returns a new [ImageThemeConfigBlock] instance.
  ImageThemeConfigBlock({
    this.imageAlignment,
    this.imageMaxWidth,
    this.imageMaxHeight,
    this.imageConstraint,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TableCellAlignmentEnum? imageAlignment;

  /// The max-width for this image element.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imageMaxWidth;

  /// The image max height
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? imageMaxHeight;

  /// The image constraint to apply to this image  * `cover` - Cover * `contain` - Contain * `full-width` - Full Width
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageConstraintEnum? imageConstraint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageThemeConfigBlock &&
    other.imageAlignment == imageAlignment &&
    other.imageMaxWidth == imageMaxWidth &&
    other.imageMaxHeight == imageMaxHeight &&
    other.imageConstraint == imageConstraint;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (imageAlignment == null ? 0 : imageAlignment!.hashCode) +
    (imageMaxWidth == null ? 0 : imageMaxWidth!.hashCode) +
    (imageMaxHeight == null ? 0 : imageMaxHeight!.hashCode) +
    (imageConstraint == null ? 0 : imageConstraint!.hashCode);

  @override
  String toString() => 'ImageThemeConfigBlock[imageAlignment=$imageAlignment, imageMaxWidth=$imageMaxWidth, imageMaxHeight=$imageMaxHeight, imageConstraint=$imageConstraint]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imageAlignment != null) {
      json[r'image_alignment'] = this.imageAlignment;
    } else {
      json[r'image_alignment'] = null;
    }
    if (this.imageMaxWidth != null) {
      json[r'image_max_width'] = this.imageMaxWidth;
    } else {
      json[r'image_max_width'] = null;
    }
    if (this.imageMaxHeight != null) {
      json[r'image_max_height'] = this.imageMaxHeight;
    } else {
      json[r'image_max_height'] = null;
    }
    if (this.imageConstraint != null) {
      json[r'image_constraint'] = this.imageConstraint;
    } else {
      json[r'image_constraint'] = null;
    }
    return json;
  }

  /// Returns a new [ImageThemeConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageThemeConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageThemeConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageThemeConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageThemeConfigBlock(
        imageAlignment: TableCellAlignmentEnum.fromJson(json[r'image_alignment']),
        imageMaxWidth: mapValueOfType<int>(json, r'image_max_width'),
        imageMaxHeight: mapValueOfType<int>(json, r'image_max_height'),
        imageConstraint: ImageConstraintEnum.fromJson(json[r'image_constraint']),
      );
    }
    return null;
  }

  static List<ImageThemeConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageThemeConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageThemeConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageThemeConfigBlock> mapFromJson(dynamic json) {
    final map = <String, ImageThemeConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageThemeConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageThemeConfigBlock-objects as value to a dart map
  static Map<String, List<ImageThemeConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageThemeConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageThemeConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

