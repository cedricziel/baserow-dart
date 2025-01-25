//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `h:mm` - hours:minutes * `h:mm:ss` - hours:minutes:seconds * `h:mm:ss.s` - hours:minutes:seconds:deciseconds * `h:mm:ss.ss` - hours:minutes:seconds:centiseconds * `h:mm:ss.sss` - hours:minutes:seconds:milliseconds * `d h` - days:hours * `d h:mm` - days:hours:minutes * `d h:mm:ss` - days:hours:minutes:seconds * `d h mm` - days:hours:minutes:with_spaces * `d h mm ss` - days:hours:minutes:seconds:with_spaces
class DurationFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const DurationFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const hColonMm = DurationFormatEnum._(r'h:mm');
  static const hColonMmColonSs = DurationFormatEnum._(r'h:mm:ss');
  static const hColonMmColonSsPeriodS = DurationFormatEnum._(r'h:mm:ss.s');
  static const hColonMmColonSsPeriodSs = DurationFormatEnum._(r'h:mm:ss.ss');
  static const hColonMmColonSsPeriodSss = DurationFormatEnum._(r'h:mm:ss.sss');
  static const dH = DurationFormatEnum._(r'd h');
  static const dHColonMm = DurationFormatEnum._(r'd h:mm');
  static const dHColonMmColonSs = DurationFormatEnum._(r'd h:mm:ss');
  static const dHMm = DurationFormatEnum._(r'd h mm');
  static const dHMmSs = DurationFormatEnum._(r'd h mm ss');

  /// List of all possible values in this [enum][DurationFormatEnum].
  static const values = <DurationFormatEnum>[
    hColonMm,
    hColonMmColonSs,
    hColonMmColonSsPeriodS,
    hColonMmColonSsPeriodSs,
    hColonMmColonSsPeriodSss,
    dH,
    dHColonMm,
    dHColonMmColonSs,
    dHMm,
    dHMmSs,
  ];

  static DurationFormatEnum? fromJson(dynamic value) => DurationFormatEnumTypeTransformer().decode(value);

  static List<DurationFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DurationFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DurationFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DurationFormatEnum] to String,
/// and [decode] dynamic data back to [DurationFormatEnum].
class DurationFormatEnumTypeTransformer {
  factory DurationFormatEnumTypeTransformer() => _instance ??= const DurationFormatEnumTypeTransformer._();

  const DurationFormatEnumTypeTransformer._();

  String encode(DurationFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DurationFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DurationFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'h:mm': return DurationFormatEnum.hColonMm;
        case r'h:mm:ss': return DurationFormatEnum.hColonMmColonSs;
        case r'h:mm:ss.s': return DurationFormatEnum.hColonMmColonSsPeriodS;
        case r'h:mm:ss.ss': return DurationFormatEnum.hColonMmColonSsPeriodSs;
        case r'h:mm:ss.sss': return DurationFormatEnum.hColonMmColonSsPeriodSss;
        case r'd h': return DurationFormatEnum.dH;
        case r'd h:mm': return DurationFormatEnum.dHColonMm;
        case r'd h:mm:ss': return DurationFormatEnum.dHColonMmColonSs;
        case r'd h mm': return DurationFormatEnum.dHMm;
        case r'd h mm ss': return DurationFormatEnum.dHMmSs;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DurationFormatEnumTypeTransformer] instance.
  static DurationFormatEnumTypeTransformer? _instance;
}

