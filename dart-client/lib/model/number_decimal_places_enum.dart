//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `0` - 1 * `1` - 1.0 * `2` - 1.00 * `3` - 1.000 * `4` - 1.0000 * `5` - 1.00000 * `6` - 1.000000 * `7` - 1.0000000 * `8` - 1.00000000 * `9` - 1.000000000 * `10` - 1.0000000000
class NumberDecimalPlacesEnum {
  /// Instantiate a new enum with the provided [value].
  const NumberDecimalPlacesEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = NumberDecimalPlacesEnum._(0);
  static const number1 = NumberDecimalPlacesEnum._(1);
  static const number2 = NumberDecimalPlacesEnum._(2);
  static const number3 = NumberDecimalPlacesEnum._(3);
  static const number4 = NumberDecimalPlacesEnum._(4);
  static const number5 = NumberDecimalPlacesEnum._(5);
  static const number6 = NumberDecimalPlacesEnum._(6);
  static const number7 = NumberDecimalPlacesEnum._(7);
  static const number8 = NumberDecimalPlacesEnum._(8);
  static const number9 = NumberDecimalPlacesEnum._(9);
  static const number10 = NumberDecimalPlacesEnum._(10);

  /// List of all possible values in this [enum][NumberDecimalPlacesEnum].
  static const values = <NumberDecimalPlacesEnum>[
    number0,
    number1,
    number2,
    number3,
    number4,
    number5,
    number6,
    number7,
    number8,
    number9,
    number10,
  ];

  static NumberDecimalPlacesEnum? fromJson(dynamic value) => NumberDecimalPlacesEnumTypeTransformer().decode(value);

  static List<NumberDecimalPlacesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NumberDecimalPlacesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumberDecimalPlacesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NumberDecimalPlacesEnum] to int,
/// and [decode] dynamic data back to [NumberDecimalPlacesEnum].
class NumberDecimalPlacesEnumTypeTransformer {
  factory NumberDecimalPlacesEnumTypeTransformer() => _instance ??= const NumberDecimalPlacesEnumTypeTransformer._();

  const NumberDecimalPlacesEnumTypeTransformer._();

  int encode(NumberDecimalPlacesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NumberDecimalPlacesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NumberDecimalPlacesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return NumberDecimalPlacesEnum.number0;
        case 1: return NumberDecimalPlacesEnum.number1;
        case 2: return NumberDecimalPlacesEnum.number2;
        case 3: return NumberDecimalPlacesEnum.number3;
        case 4: return NumberDecimalPlacesEnum.number4;
        case 5: return NumberDecimalPlacesEnum.number5;
        case 6: return NumberDecimalPlacesEnum.number6;
        case 7: return NumberDecimalPlacesEnum.number7;
        case 8: return NumberDecimalPlacesEnum.number8;
        case 9: return NumberDecimalPlacesEnum.number9;
        case 10: return NumberDecimalPlacesEnum.number10;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NumberDecimalPlacesEnumTypeTransformer] instance.
  static NumberDecimalPlacesEnumTypeTransformer? _instance;
}

