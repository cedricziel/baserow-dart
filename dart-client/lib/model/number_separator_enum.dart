//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `` - No formatting * `SPACE_COMMA` - Space, comma * `SPACE_PERIOD` - Space, period * `COMMA_PERIOD` - Comma, period * `PERIOD_COMMA` - Period, comma
class NumberSeparatorEnum {
  /// Instantiate a new enum with the provided [value].
  const NumberSeparatorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SPACE_COMMA = NumberSeparatorEnum._(r'SPACE_COMMA');
  static const SPACE_PERIOD = NumberSeparatorEnum._(r'SPACE_PERIOD');
  static const COMMA_PERIOD = NumberSeparatorEnum._(r'COMMA_PERIOD');
  static const PERIOD_COMMA = NumberSeparatorEnum._(r'PERIOD_COMMA');

  /// List of all possible values in this [enum][NumberSeparatorEnum].
  static const values = <NumberSeparatorEnum>[
    SPACE_COMMA,
    SPACE_PERIOD,
    COMMA_PERIOD,
    PERIOD_COMMA,
  ];

  static NumberSeparatorEnum? fromJson(dynamic value) => NumberSeparatorEnumTypeTransformer().decode(value);

  static List<NumberSeparatorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NumberSeparatorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumberSeparatorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NumberSeparatorEnum] to String,
/// and [decode] dynamic data back to [NumberSeparatorEnum].
class NumberSeparatorEnumTypeTransformer {
  factory NumberSeparatorEnumTypeTransformer() => _instance ??= const NumberSeparatorEnumTypeTransformer._();

  const NumberSeparatorEnumTypeTransformer._();

  String encode(NumberSeparatorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NumberSeparatorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NumberSeparatorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SPACE_COMMA': return NumberSeparatorEnum.SPACE_COMMA;
        case r'SPACE_PERIOD': return NumberSeparatorEnum.SPACE_PERIOD;
        case r'COMMA_PERIOD': return NumberSeparatorEnum.COMMA_PERIOD;
        case r'PERIOD_COMMA': return NumberSeparatorEnum.PERIOD_COMMA;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NumberSeparatorEnumTypeTransformer] instance.
  static NumberSeparatorEnumTypeTransformer? _instance;
}

