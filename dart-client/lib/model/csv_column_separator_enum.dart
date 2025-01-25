//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `,` - , * `;` - ; * `|` - | * `tab` -   * `record_separator` -  * `unit_separator` - 
class CsvColumnSeparatorEnum {
  /// Instantiate a new enum with the provided [value].
  const CsvColumnSeparatorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const comma = CsvColumnSeparatorEnum._(r',');
  static const semicolon = CsvColumnSeparatorEnum._(r';');
  static const pipe = CsvColumnSeparatorEnum._(r'|');
  static const tab = CsvColumnSeparatorEnum._(r'tab');
  static const recordSeparator = CsvColumnSeparatorEnum._(r'record_separator');
  static const unitSeparator = CsvColumnSeparatorEnum._(r'unit_separator');

  /// List of all possible values in this [enum][CsvColumnSeparatorEnum].
  static const values = <CsvColumnSeparatorEnum>[
    comma,
    semicolon,
    pipe,
    tab,
    recordSeparator,
    unitSeparator,
  ];

  static CsvColumnSeparatorEnum? fromJson(dynamic value) => CsvColumnSeparatorEnumTypeTransformer().decode(value);

  static List<CsvColumnSeparatorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CsvColumnSeparatorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CsvColumnSeparatorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CsvColumnSeparatorEnum] to String,
/// and [decode] dynamic data back to [CsvColumnSeparatorEnum].
class CsvColumnSeparatorEnumTypeTransformer {
  factory CsvColumnSeparatorEnumTypeTransformer() => _instance ??= const CsvColumnSeparatorEnumTypeTransformer._();

  const CsvColumnSeparatorEnumTypeTransformer._();

  String encode(CsvColumnSeparatorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CsvColumnSeparatorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CsvColumnSeparatorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r',': return CsvColumnSeparatorEnum.comma;
        case r';': return CsvColumnSeparatorEnum.semicolon;
        case r'|': return CsvColumnSeparatorEnum.pipe;
        case r'tab': return CsvColumnSeparatorEnum.tab;
        case r'record_separator': return CsvColumnSeparatorEnum.recordSeparator;
        case r'unit_separator': return CsvColumnSeparatorEnum.unitSeparator;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CsvColumnSeparatorEnumTypeTransformer] instance.
  static CsvColumnSeparatorEnumTypeTransformer? _instance;
}

