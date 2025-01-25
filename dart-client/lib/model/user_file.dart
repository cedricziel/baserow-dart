//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UserFile {
  /// Returns a new [UserFile] instance.
  UserFile({
    required this.size,
    this.mimeType,
    this.isImage,
    this.imageWidth,
    this.imageHeight,
    required this.uploadedAt,
    required this.url,
    this.thumbnails = const {},
    required this.name,
    required this.originalName,
  });

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int size;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mimeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isImage;

  /// Minimum value: 0
  /// Maximum value: 32767
  int? imageWidth;

  /// Minimum value: 0
  /// Maximum value: 32767
  int? imageHeight;

  DateTime uploadedAt;

  String url;

  Map<String, Object> thumbnails;

  String name;

  String originalName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserFile &&
    other.size == size &&
    other.mimeType == mimeType &&
    other.isImage == isImage &&
    other.imageWidth == imageWidth &&
    other.imageHeight == imageHeight &&
    other.uploadedAt == uploadedAt &&
    other.url == url &&
    _deepEquality.equals(other.thumbnails, thumbnails) &&
    other.name == name &&
    other.originalName == originalName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (size.hashCode) +
    (mimeType == null ? 0 : mimeType!.hashCode) +
    (isImage == null ? 0 : isImage!.hashCode) +
    (imageWidth == null ? 0 : imageWidth!.hashCode) +
    (imageHeight == null ? 0 : imageHeight!.hashCode) +
    (uploadedAt.hashCode) +
    (url.hashCode) +
    (thumbnails.hashCode) +
    (name.hashCode) +
    (originalName.hashCode);

  @override
  String toString() => 'UserFile[size=$size, mimeType=$mimeType, isImage=$isImage, imageWidth=$imageWidth, imageHeight=$imageHeight, uploadedAt=$uploadedAt, url=$url, thumbnails=$thumbnails, name=$name, originalName=$originalName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'size'] = this.size;
    if (this.mimeType != null) {
      json[r'mime_type'] = this.mimeType;
    } else {
      json[r'mime_type'] = null;
    }
    if (this.isImage != null) {
      json[r'is_image'] = this.isImage;
    } else {
      json[r'is_image'] = null;
    }
    if (this.imageWidth != null) {
      json[r'image_width'] = this.imageWidth;
    } else {
      json[r'image_width'] = null;
    }
    if (this.imageHeight != null) {
      json[r'image_height'] = this.imageHeight;
    } else {
      json[r'image_height'] = null;
    }
      json[r'uploaded_at'] = this.uploadedAt.toUtc().toIso8601String();
      json[r'url'] = this.url;
      json[r'thumbnails'] = this.thumbnails;
      json[r'name'] = this.name;
      json[r'original_name'] = this.originalName;
    return json;
  }

  /// Returns a new [UserFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserFile[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserFile[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserFile(
        size: mapValueOfType<int>(json, r'size')!,
        mimeType: mapValueOfType<String>(json, r'mime_type'),
        isImage: mapValueOfType<bool>(json, r'is_image'),
        imageWidth: mapValueOfType<int>(json, r'image_width'),
        imageHeight: mapValueOfType<int>(json, r'image_height'),
        uploadedAt: mapDateTime(json, r'uploaded_at', r'')!,
        url: mapValueOfType<String>(json, r'url')!,
        thumbnails: mapCastOfType<String, Object>(json, r'thumbnails')!,
        name: mapValueOfType<String>(json, r'name')!,
        originalName: mapValueOfType<String>(json, r'original_name')!,
      );
    }
    return null;
  }

  static List<UserFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserFile> mapFromJson(dynamic json) {
    final map = <String, UserFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserFile-objects as value to a dart map
  static Map<String, List<UserFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'size',
    'uploaded_at',
    'url',
    'thumbnails',
    'name',
    'original_name',
  };
}

