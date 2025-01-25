//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `none` - None * `color` - Color * `image` - Image
class StyleBackgroundEnum {
  /// Instantiate a new enum with the provided [value].
  const StyleBackgroundEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = StyleBackgroundEnum._(r'none');
  static const color = StyleBackgroundEnum._(r'color');
  static const image = StyleBackgroundEnum._(r'image');

  /// List of all possible values in this [enum][StyleBackgroundEnum].
  static const values = <StyleBackgroundEnum>[
    none,
    color,
    image,
  ];

  static StyleBackgroundEnum? fromJson(dynamic value) => StyleBackgroundEnumTypeTransformer().decode(value);

  static List<StyleBackgroundEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StyleBackgroundEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StyleBackgroundEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StyleBackgroundEnum] to String,
/// and [decode] dynamic data back to [StyleBackgroundEnum].
class StyleBackgroundEnumTypeTransformer {
  factory StyleBackgroundEnumTypeTransformer() => _instance ??= const StyleBackgroundEnumTypeTransformer._();

  const StyleBackgroundEnumTypeTransformer._();

  String encode(StyleBackgroundEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StyleBackgroundEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StyleBackgroundEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none': return StyleBackgroundEnum.none;
        case r'color': return StyleBackgroundEnum.color;
        case r'image': return StyleBackgroundEnum.image;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StyleBackgroundEnumTypeTransformer] instance.
  static StyleBackgroundEnumTypeTransformer? _instance;
}

