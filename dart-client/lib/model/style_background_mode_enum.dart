//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `tile` - Tile * `fill` - Fill * `fit` - Fit
class StyleBackgroundModeEnum {
  /// Instantiate a new enum with the provided [value].
  const StyleBackgroundModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tile = StyleBackgroundModeEnum._(r'tile');
  static const fill = StyleBackgroundModeEnum._(r'fill');
  static const fit = StyleBackgroundModeEnum._(r'fit');

  /// List of all possible values in this [enum][StyleBackgroundModeEnum].
  static const values = <StyleBackgroundModeEnum>[
    tile,
    fill,
    fit,
  ];

  static StyleBackgroundModeEnum? fromJson(dynamic value) => StyleBackgroundModeEnumTypeTransformer().decode(value);

  static List<StyleBackgroundModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StyleBackgroundModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StyleBackgroundModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StyleBackgroundModeEnum] to String,
/// and [decode] dynamic data back to [StyleBackgroundModeEnum].
class StyleBackgroundModeEnumTypeTransformer {
  factory StyleBackgroundModeEnumTypeTransformer() => _instance ??= const StyleBackgroundModeEnumTypeTransformer._();

  const StyleBackgroundModeEnumTypeTransformer._();

  String encode(StyleBackgroundModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StyleBackgroundModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StyleBackgroundModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tile': return StyleBackgroundModeEnum.tile;
        case r'fill': return StyleBackgroundModeEnum.fill;
        case r'fit': return StyleBackgroundModeEnum.fit;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StyleBackgroundModeEnumTypeTransformer] instance.
  static StyleBackgroundModeEnumTypeTransformer? _instance;
}

