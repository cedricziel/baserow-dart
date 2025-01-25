//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `full` - Full * `full-width` - Full Width * `normal` - Normal * `medium` - Medium * `small` - Small
class StyleWidthEnum {
  /// Instantiate a new enum with the provided [value].
  const StyleWidthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const full = StyleWidthEnum._(r'full');
  static const fullWidth = StyleWidthEnum._(r'full-width');
  static const normal = StyleWidthEnum._(r'normal');
  static const medium = StyleWidthEnum._(r'medium');
  static const small = StyleWidthEnum._(r'small');

  /// List of all possible values in this [enum][StyleWidthEnum].
  static const values = <StyleWidthEnum>[
    full,
    fullWidth,
    normal,
    medium,
    small,
  ];

  static StyleWidthEnum? fromJson(dynamic value) => StyleWidthEnumTypeTransformer().decode(value);

  static List<StyleWidthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StyleWidthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StyleWidthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StyleWidthEnum] to String,
/// and [decode] dynamic data back to [StyleWidthEnum].
class StyleWidthEnumTypeTransformer {
  factory StyleWidthEnumTypeTransformer() => _instance ??= const StyleWidthEnumTypeTransformer._();

  const StyleWidthEnumTypeTransformer._();

  String encode(StyleWidthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StyleWidthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StyleWidthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'full': return StyleWidthEnum.full;
        case r'full-width': return StyleWidthEnum.fullWidth;
        case r'normal': return StyleWidthEnum.normal;
        case r'medium': return StyleWidthEnum.medium;
        case r'small': return StyleWidthEnum.small;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StyleWidthEnumTypeTransformer] instance.
  static StyleWidthEnumTypeTransformer? _instance;
}

