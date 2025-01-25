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
class PageBackgroundModeEnum {
  /// Instantiate a new enum with the provided [value].
  const PageBackgroundModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tile = PageBackgroundModeEnum._(r'tile');
  static const fill = PageBackgroundModeEnum._(r'fill');
  static const fit = PageBackgroundModeEnum._(r'fit');

  /// List of all possible values in this [enum][PageBackgroundModeEnum].
  static const values = <PageBackgroundModeEnum>[
    tile,
    fill,
    fit,
  ];

  static PageBackgroundModeEnum? fromJson(dynamic value) => PageBackgroundModeEnumTypeTransformer().decode(value);

  static List<PageBackgroundModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PageBackgroundModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PageBackgroundModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PageBackgroundModeEnum] to String,
/// and [decode] dynamic data back to [PageBackgroundModeEnum].
class PageBackgroundModeEnumTypeTransformer {
  factory PageBackgroundModeEnumTypeTransformer() => _instance ??= const PageBackgroundModeEnumTypeTransformer._();

  const PageBackgroundModeEnumTypeTransformer._();

  String encode(PageBackgroundModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PageBackgroundModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PageBackgroundModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tile': return PageBackgroundModeEnum.tile;
        case r'fill': return PageBackgroundModeEnum.fill;
        case r'fit': return PageBackgroundModeEnum.fit;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PageBackgroundModeEnumTypeTransformer] instance.
  static PageBackgroundModeEnumTypeTransformer? _instance;
}

