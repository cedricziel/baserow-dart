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
class DateTimeFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const DateTimeFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n24 = DateTimeFormatEnum._(r'24');
  static const n12 = DateTimeFormatEnum._(r'12');

  /// List of all possible values in this [enum][DateTimeFormatEnum].
  static const values = <DateTimeFormatEnum>[
    n24,
    n12,
  ];

  static DateTimeFormatEnum? fromJson(dynamic value) => DateTimeFormatEnumTypeTransformer().decode(value);

  static List<DateTimeFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateTimeFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateTimeFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DateTimeFormatEnum] to String,
/// and [decode] dynamic data back to [DateTimeFormatEnum].
class DateTimeFormatEnumTypeTransformer {
  factory DateTimeFormatEnumTypeTransformer() => _instance ??= const DateTimeFormatEnumTypeTransformer._();

  const DateTimeFormatEnumTypeTransformer._();

  String encode(DateTimeFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DateTimeFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DateTimeFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'24': return DateTimeFormatEnum.n24;
        case r'12': return DateTimeFormatEnum.n12;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DateTimeFormatEnumTypeTransformer] instance.
  static DateTimeFormatEnumTypeTransformer? _instance;
}

