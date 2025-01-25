//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `invalid` - invalid * `text` - text * `char` - char * `button` - button * `link` - link * `date_interval` - date_interval * `duration` - duration * `date` - date * `boolean` - boolean * `number` - number * `array` - array * `single_select` - single_select * `multiple_select` - multiple_select * `single_file` - single_file * `url` - url
class FormulaTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FormulaTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalid = FormulaTypeEnum._(r'invalid');
  static const text = FormulaTypeEnum._(r'text');
  static const char = FormulaTypeEnum._(r'char');
  static const button = FormulaTypeEnum._(r'button');
  static const link = FormulaTypeEnum._(r'link');
  static const dateInterval = FormulaTypeEnum._(r'date_interval');
  static const duration = FormulaTypeEnum._(r'duration');
  static const date = FormulaTypeEnum._(r'date');
  static const boolean = FormulaTypeEnum._(r'boolean');
  static const number = FormulaTypeEnum._(r'number');
  static const array = FormulaTypeEnum._(r'array');
  static const singleSelect = FormulaTypeEnum._(r'single_select');
  static const multipleSelect = FormulaTypeEnum._(r'multiple_select');
  static const singleFile = FormulaTypeEnum._(r'single_file');
  static const url = FormulaTypeEnum._(r'url');

  /// List of all possible values in this [enum][FormulaTypeEnum].
  static const values = <FormulaTypeEnum>[
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
    array,
    singleSelect,
    multipleSelect,
    singleFile,
    url,
  ];

  static FormulaTypeEnum? fromJson(dynamic value) => FormulaTypeEnumTypeTransformer().decode(value);

  static List<FormulaTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormulaTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormulaTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FormulaTypeEnum] to String,
/// and [decode] dynamic data back to [FormulaTypeEnum].
class FormulaTypeEnumTypeTransformer {
  factory FormulaTypeEnumTypeTransformer() => _instance ??= const FormulaTypeEnumTypeTransformer._();

  const FormulaTypeEnumTypeTransformer._();

  String encode(FormulaTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FormulaTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormulaTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'invalid': return FormulaTypeEnum.invalid;
        case r'text': return FormulaTypeEnum.text;
        case r'char': return FormulaTypeEnum.char;
        case r'button': return FormulaTypeEnum.button;
        case r'link': return FormulaTypeEnum.link;
        case r'date_interval': return FormulaTypeEnum.dateInterval;
        case r'duration': return FormulaTypeEnum.duration;
        case r'date': return FormulaTypeEnum.date;
        case r'boolean': return FormulaTypeEnum.boolean;
        case r'number': return FormulaTypeEnum.number;
        case r'array': return FormulaTypeEnum.array;
        case r'single_select': return FormulaTypeEnum.singleSelect;
        case r'multiple_select': return FormulaTypeEnum.multipleSelect;
        case r'single_file': return FormulaTypeEnum.singleFile;
        case r'url': return FormulaTypeEnum.url;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormulaTypeEnumTypeTransformer] instance.
  static FormulaTypeEnumTypeTransformer? _instance;
}

