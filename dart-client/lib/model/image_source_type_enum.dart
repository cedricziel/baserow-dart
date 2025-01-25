//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `upload` - Upload * `url` - Url
class ImageSourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ImageSourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const upload = ImageSourceTypeEnum._(r'upload');
  static const url = ImageSourceTypeEnum._(r'url');

  /// List of all possible values in this [enum][ImageSourceTypeEnum].
  static const values = <ImageSourceTypeEnum>[
    upload,
    url,
  ];

  static ImageSourceTypeEnum? fromJson(dynamic value) => ImageSourceTypeEnumTypeTransformer().decode(value);

  static List<ImageSourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageSourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageSourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImageSourceTypeEnum] to String,
/// and [decode] dynamic data back to [ImageSourceTypeEnum].
class ImageSourceTypeEnumTypeTransformer {
  factory ImageSourceTypeEnumTypeTransformer() => _instance ??= const ImageSourceTypeEnumTypeTransformer._();

  const ImageSourceTypeEnumTypeTransformer._();

  String encode(ImageSourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImageSourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImageSourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'upload': return ImageSourceTypeEnum.upload;
        case r'url': return ImageSourceTypeEnum.url;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImageSourceTypeEnumTypeTransformer] instance.
  static ImageSourceTypeEnumTypeTransformer? _instance;
}

