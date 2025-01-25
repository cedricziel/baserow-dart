//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `csv` - csv * `json` - json * `xml` - xml * `excel` - excel
class ExporterTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExporterTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const csv = ExporterTypeEnum._(r'csv');
  static const json = ExporterTypeEnum._(r'json');
  static const xml = ExporterTypeEnum._(r'xml');
  static const excel = ExporterTypeEnum._(r'excel');

  /// List of all possible values in this [enum][ExporterTypeEnum].
  static const values = <ExporterTypeEnum>[
    csv,
    json,
    xml,
    excel,
  ];

  static ExporterTypeEnum? fromJson(dynamic value) => ExporterTypeEnumTypeTransformer().decode(value);

  static List<ExporterTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExporterTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExporterTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExporterTypeEnum] to String,
/// and [decode] dynamic data back to [ExporterTypeEnum].
class ExporterTypeEnumTypeTransformer {
  factory ExporterTypeEnumTypeTransformer() => _instance ??= const ExporterTypeEnumTypeTransformer._();

  const ExporterTypeEnumTypeTransformer._();

  String encode(ExporterTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExporterTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExporterTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'csv': return ExporterTypeEnum.csv;
        case r'json': return ExporterTypeEnum.json;
        case r'xml': return ExporterTypeEnum.xml;
        case r'excel': return ExporterTypeEnum.excel;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExporterTypeEnumTypeTransformer] instance.
  static ExporterTypeEnumTypeTransformer? _instance;
}

