//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `day` - Day * `week` - Week * `month` - Month * `year` - Year
class TimescaleEnum {
  /// Instantiate a new enum with the provided [value].
  const TimescaleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const day = TimescaleEnum._(r'day');
  static const week = TimescaleEnum._(r'week');
  static const month = TimescaleEnum._(r'month');
  static const year = TimescaleEnum._(r'year');

  /// List of all possible values in this [enum][TimescaleEnum].
  static const values = <TimescaleEnum>[
    day,
    week,
    month,
    year,
  ];

  static TimescaleEnum? fromJson(dynamic value) => TimescaleEnumTypeTransformer().decode(value);

  static List<TimescaleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimescaleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimescaleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TimescaleEnum] to String,
/// and [decode] dynamic data back to [TimescaleEnum].
class TimescaleEnumTypeTransformer {
  factory TimescaleEnumTypeTransformer() => _instance ??= const TimescaleEnumTypeTransformer._();

  const TimescaleEnumTypeTransformer._();

  String encode(TimescaleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TimescaleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimescaleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'day': return TimescaleEnum.day;
        case r'week': return TimescaleEnum.week;
        case r'month': return TimescaleEnum.month;
        case r'year': return TimescaleEnum.year;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimescaleEnumTypeTransformer] instance.
  static TimescaleEnumTypeTransformer? _instance;
}

