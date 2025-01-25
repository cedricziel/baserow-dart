//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `cover` - Cover * `contain` - Contain * `full-width` - Full Width
class ImageConstraintEnum {
  /// Instantiate a new enum with the provided [value].
  const ImageConstraintEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cover = ImageConstraintEnum._(r'cover');
  static const contain = ImageConstraintEnum._(r'contain');
  static const fullWidth = ImageConstraintEnum._(r'full-width');

  /// List of all possible values in this [enum][ImageConstraintEnum].
  static const values = <ImageConstraintEnum>[
    cover,
    contain,
    fullWidth,
  ];

  static ImageConstraintEnum? fromJson(dynamic value) => ImageConstraintEnumTypeTransformer().decode(value);

  static List<ImageConstraintEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageConstraintEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageConstraintEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImageConstraintEnum] to String,
/// and [decode] dynamic data back to [ImageConstraintEnum].
class ImageConstraintEnumTypeTransformer {
  factory ImageConstraintEnumTypeTransformer() => _instance ??= const ImageConstraintEnumTypeTransformer._();

  const ImageConstraintEnumTypeTransformer._();

  String encode(ImageConstraintEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImageConstraintEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImageConstraintEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cover': return ImageConstraintEnum.cover;
        case r'contain': return ImageConstraintEnum.contain;
        case r'full-width': return ImageConstraintEnum.fullWidth;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImageConstraintEnumTypeTransformer] instance.
  static ImageConstraintEnumTypeTransformer? _instance;
}

