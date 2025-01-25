//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FileFieldResponse {
  /// Returns a new [FileFieldResponse] instance.
  FileFieldResponse({
    required this.url,
    this.thumbnails = const {},
    required this.visibleName,
    required this.name,
    required this.size,
    required this.mimeType,
    required this.isImage,
    required this.imageWidth,
    required this.imageHeight,
    required this.uploadedAt,
  });

  String url;

  Map<String, Object> thumbnails;

  String visibleName;

  String name;

  int size;

  String mimeType;

  bool isImage;

  int imageWidth;

  int imageHeight;

  DateTime uploadedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileFieldResponse &&
    other.url == url &&
    _deepEquality.equals(other.thumbnails, thumbnails) &&
    other.visibleName == visibleName &&
    other.name == name &&
    other.size == size &&
    other.mimeType == mimeType &&
    other.isImage == isImage &&
    other.imageWidth == imageWidth &&
    other.imageHeight == imageHeight &&
    other.uploadedAt == uploadedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (thumbnails.hashCode) +
    (visibleName.hashCode) +
    (name.hashCode) +
    (size.hashCode) +
    (mimeType.hashCode) +
    (isImage.hashCode) +
    (imageWidth.hashCode) +
    (imageHeight.hashCode) +
    (uploadedAt.hashCode);

  @override
  String toString() => 'FileFieldResponse[url=$url, thumbnails=$thumbnails, visibleName=$visibleName, name=$name, size=$size, mimeType=$mimeType, isImage=$isImage, imageWidth=$imageWidth, imageHeight=$imageHeight, uploadedAt=$uploadedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'thumbnails'] = this.thumbnails;
      json[r'visible_name'] = this.visibleName;
      json[r'name'] = this.name;
      json[r'size'] = this.size;
      json[r'mime_type'] = this.mimeType;
      json[r'is_image'] = this.isImage;
      json[r'image_width'] = this.imageWidth;
      json[r'image_height'] = this.imageHeight;
      json[r'uploaded_at'] = this.uploadedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [FileFieldResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileFieldResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileFieldResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileFieldResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileFieldResponse(
        url: mapValueOfType<String>(json, r'url')!,
        thumbnails: mapCastOfType<String, Object>(json, r'thumbnails')!,
        visibleName: mapValueOfType<String>(json, r'visible_name')!,
        name: mapValueOfType<String>(json, r'name')!,
        size: mapValueOfType<int>(json, r'size')!,
        mimeType: mapValueOfType<String>(json, r'mime_type')!,
        isImage: mapValueOfType<bool>(json, r'is_image')!,
        imageWidth: mapValueOfType<int>(json, r'image_width')!,
        imageHeight: mapValueOfType<int>(json, r'image_height')!,
        uploadedAt: mapDateTime(json, r'uploaded_at', r'')!,
      );
    }
    return null;
  }

  static List<FileFieldResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileFieldResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileFieldResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileFieldResponse> mapFromJson(dynamic json) {
    final map = <String, FileFieldResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileFieldResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileFieldResponse-objects as value to a dart map
  static Map<String, List<FileFieldResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileFieldResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileFieldResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'thumbnails',
    'visible_name',
    'name',
    'size',
    'mime_type',
    'is_image',
    'image_width',
    'image_height',
    'uploaded_at',
  };
}

