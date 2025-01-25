//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `` -  * `single_select_color` - single_select_color * `conditional_color` - conditional_color
class ValueProviderTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ValueProviderTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const singleSelectColor = ValueProviderTypeEnum._(r'single_select_color');
  static const conditionalColor = ValueProviderTypeEnum._(r'conditional_color');

  /// List of all possible values in this [enum][ValueProviderTypeEnum].
  static const values = <ValueProviderTypeEnum>[
    singleSelectColor,
    conditionalColor,
  ];

  static ValueProviderTypeEnum? fromJson(dynamic value) => ValueProviderTypeEnumTypeTransformer().decode(value);

  static List<ValueProviderTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValueProviderTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValueProviderTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValueProviderTypeEnum] to String,
/// and [decode] dynamic data back to [ValueProviderTypeEnum].
class ValueProviderTypeEnumTypeTransformer {
  factory ValueProviderTypeEnumTypeTransformer() => _instance ??= const ValueProviderTypeEnumTypeTransformer._();

  const ValueProviderTypeEnumTypeTransformer._();

  String encode(ValueProviderTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValueProviderTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValueProviderTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'single_select_color': return ValueProviderTypeEnum.singleSelectColor;
        case r'conditional_color': return ValueProviderTypeEnum.conditionalColor;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValueProviderTypeEnumTypeTransformer] instance.
  static ValueProviderTypeEnumTypeTransformer? _instance;
}

