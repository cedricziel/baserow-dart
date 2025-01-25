//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `EU` - European (D/M/Y) * `US` - US (M/D/Y) * `ISO` - ISO (Y-M-D)
class DateFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const DateFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EU = DateFormatEnum._(r'EU');
  static const US = DateFormatEnum._(r'US');
  static const ISO = DateFormatEnum._(r'ISO');

  /// List of all possible values in this [enum][DateFormatEnum].
  static const values = <DateFormatEnum>[
    EU,
    US,
    ISO,
  ];

  static DateFormatEnum? fromJson(dynamic value) => DateFormatEnumTypeTransformer().decode(value);

  static List<DateFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DateFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DateFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DateFormatEnum] to String,
/// and [decode] dynamic data back to [DateFormatEnum].
class DateFormatEnumTypeTransformer {
  factory DateFormatEnumTypeTransformer() => _instance ??= const DateFormatEnumTypeTransformer._();

  const DateFormatEnumTypeTransformer._();

  String encode(DateFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DateFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DateFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EU': return DateFormatEnum.EU;
        case r'US': return DateFormatEnum.US;
        case r'ISO': return DateFormatEnum.ISO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DateFormatEnumTypeTransformer] instance.
  static DateFormatEnumTypeTransformer? _instance;
}

