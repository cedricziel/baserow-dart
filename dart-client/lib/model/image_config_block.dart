//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ImageConfigBlock {
  /// Returns a new [ImageConfigBlock] instance.
  ImageConfigBlock({
    this.image,
  });

  /// Styles overrides for image
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageThemeConfigBlock? image;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageConfigBlock &&
    other.image == image;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (image == null ? 0 : image!.hashCode);

  @override
  String toString() => 'ImageConfigBlock[image=$image]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    return json;
  }

  /// Returns a new [ImageConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageConfigBlock(
        image: ImageThemeConfigBlock.fromJson(json[r'image']),
      );
    }
    return null;
  }

  static List<ImageConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageConfigBlock> mapFromJson(dynamic json) {
    final map = <String, ImageConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageConfigBlock-objects as value to a dart map
  static Map<String, List<ImageConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

