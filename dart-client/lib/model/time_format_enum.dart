//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `24` - 24 hour * `12` - 12 hour
class TimeFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const TimeFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n24 = TimeFormatEnum._(r'24');
  static const n12 = TimeFormatEnum._(r'12');

  /// List of all possible values in this [enum][TimeFormatEnum].
  static const values = <TimeFormatEnum>[
    n24,
    n12,
  ];

  static TimeFormatEnum? fromJson(dynamic value) => TimeFormatEnumTypeTransformer().decode(value);

  static List<TimeFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TimeFormatEnum] to String,
/// and [decode] dynamic data back to [TimeFormatEnum].
class TimeFormatEnumTypeTransformer {
  factory TimeFormatEnumTypeTransformer() => _instance ??= const TimeFormatEnumTypeTransformer._();

  const TimeFormatEnumTypeTransformer._();

  String encode(TimeFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TimeFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TimeFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'24': return TimeFormatEnum.n24;
        case r'12': return TimeFormatEnum.n12;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TimeFormatEnumTypeTransformer] instance.
  static TimeFormatEnumTypeTransformer? _instance;
}

