//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `invalid` - invalid * `text` - text * `char` - char * `button` - button * `link` - link * `date_interval` - date_interval * `duration` - duration * `date` - date * `boolean` - boolean * `number` - number * `single_select` - single_select * `multiple_select` - multiple_select * `single_file` - single_file * `url` - url
class ArrayFormulaTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ArrayFormulaTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalid = ArrayFormulaTypeEnum._(r'invalid');
  static const text = ArrayFormulaTypeEnum._(r'text');
  static const char = ArrayFormulaTypeEnum._(r'char');
  static const button = ArrayFormulaTypeEnum._(r'button');
  static const link = ArrayFormulaTypeEnum._(r'link');
  static const dateInterval = ArrayFormulaTypeEnum._(r'date_interval');
  static const duration = ArrayFormulaTypeEnum._(r'duration');
  static const date = ArrayFormulaTypeEnum._(r'date');
  static const boolean = ArrayFormulaTypeEnum._(r'boolean');
  static const number = ArrayFormulaTypeEnum._(r'number');
  static const singleSelect = ArrayFormulaTypeEnum._(r'single_select');
  static const multipleSelect = ArrayFormulaTypeEnum._(r'multiple_select');
  static const singleFile = ArrayFormulaTypeEnum._(r'single_file');
  static const url = ArrayFormulaTypeEnum._(r'url');

  /// List of all possible values in this [enum][ArrayFormulaTypeEnum].
  static const values = <ArrayFormulaTypeEnum>[
    invalid,
    text,
    char,
    button,
    link,
    dateInterval,
    duration,
    date,
    boolean,
    number,
    singleSelect,
    multipleSelect,
    singleFile,
    url,
  ];

  static ArrayFormulaTypeEnum? fromJson(dynamic value) => ArrayFormulaTypeEnumTypeTransformer().decode(value);

  static List<ArrayFormulaTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArrayFormulaTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArrayFormulaTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ArrayFormulaTypeEnum] to String,
/// and [decode] dynamic data back to [ArrayFormulaTypeEnum].
class ArrayFormulaTypeEnumTypeTransformer {
  factory ArrayFormulaTypeEnumTypeTransformer() => _instance ??= const ArrayFormulaTypeEnumTypeTransformer._();

  const ArrayFormulaTypeEnumTypeTransformer._();

  String encode(ArrayFormulaTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ArrayFormulaTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ArrayFormulaTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'invalid': return ArrayFormulaTypeEnum.invalid;
        case r'text': return ArrayFormulaTypeEnum.text;
        case r'char': return ArrayFormulaTypeEnum.char;
        case r'button': return ArrayFormulaTypeEnum.button;
        case r'link': return ArrayFormulaTypeEnum.link;
        case r'date_interval': return ArrayFormulaTypeEnum.dateInterval;
        case r'duration': return ArrayFormulaTypeEnum.duration;
        case r'date': return ArrayFormulaTypeEnum.date;
        case r'boolean': return ArrayFormulaTypeEnum.boolean;
        case r'number': return ArrayFormulaTypeEnum.number;
        case r'single_select': return ArrayFormulaTypeEnum.singleSelect;
        case r'multiple_select': return ArrayFormulaTypeEnum.multipleSelect;
        case r'single_file': return ArrayFormulaTypeEnum.singleFile;
        case r'url': return ArrayFormulaTypeEnum.url;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ArrayFormulaTypeEnumTypeTransformer] instance.
  static ArrayFormulaTypeEnumTypeTransformer? _instance;
}

