//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `empty_count` - empty_count * `not_empty_count` - not_empty_count * `unique_count` - unique_count * `min` - min * `max` - max * `sum` - sum * `average` - average * `median` - median * `decile` - decile * `variance` - variance * `std_dev` - std_dev
class AggregationRawTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AggregationRawTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const emptyCount = AggregationRawTypeEnum._(r'empty_count');
  static const notEmptyCount = AggregationRawTypeEnum._(r'not_empty_count');
  static const uniqueCount = AggregationRawTypeEnum._(r'unique_count');
  static const min = AggregationRawTypeEnum._(r'min');
  static const max = AggregationRawTypeEnum._(r'max');
  static const sum = AggregationRawTypeEnum._(r'sum');
  static const average = AggregationRawTypeEnum._(r'average');
  static const median = AggregationRawTypeEnum._(r'median');
  static const decile = AggregationRawTypeEnum._(r'decile');
  static const variance = AggregationRawTypeEnum._(r'variance');
  static const stdDev = AggregationRawTypeEnum._(r'std_dev');

  /// List of all possible values in this [enum][AggregationRawTypeEnum].
  static const values = <AggregationRawTypeEnum>[
    emptyCount,
    notEmptyCount,
    uniqueCount,
    min,
    max,
    sum,
    average,
    median,
    decile,
    variance,
    stdDev,
  ];

  static AggregationRawTypeEnum? fromJson(dynamic value) => AggregationRawTypeEnumTypeTransformer().decode(value);

  static List<AggregationRawTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AggregationRawTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AggregationRawTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AggregationRawTypeEnum] to String,
/// and [decode] dynamic data back to [AggregationRawTypeEnum].
class AggregationRawTypeEnumTypeTransformer {
  factory AggregationRawTypeEnumTypeTransformer() => _instance ??= const AggregationRawTypeEnumTypeTransformer._();

  const AggregationRawTypeEnumTypeTransformer._();

  String encode(AggregationRawTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AggregationRawTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AggregationRawTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'empty_count': return AggregationRawTypeEnum.emptyCount;
        case r'not_empty_count': return AggregationRawTypeEnum.notEmptyCount;
        case r'unique_count': return AggregationRawTypeEnum.uniqueCount;
        case r'min': return AggregationRawTypeEnum.min;
        case r'max': return AggregationRawTypeEnum.max;
        case r'sum': return AggregationRawTypeEnum.sum;
        case r'average': return AggregationRawTypeEnum.average;
        case r'median': return AggregationRawTypeEnum.median;
        case r'decile': return AggregationRawTypeEnum.decile;
        case r'variance': return AggregationRawTypeEnum.variance;
        case r'std_dev': return AggregationRawTypeEnum.stdDev;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AggregationRawTypeEnumTypeTransformer] instance.
  static AggregationRawTypeEnumTypeTransformer? _instance;
}

