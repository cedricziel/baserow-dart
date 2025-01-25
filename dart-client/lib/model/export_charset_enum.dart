//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `utf-8` - utf-8 * `iso-8859-6` - iso-8859-6 * `windows-1256` - windows-1256 * `iso-8859-4` - iso-8859-4 * `windows-1257` - windows-1257 * `iso-8859-14` - iso-8859-14 * `iso-8859-2` - iso-8859-2 * `windows-1250` - windows-1250 * `gbk` - gbk * `gb18030` - gb18030 * `big5` - big5 * `koi8-r` - koi8-r * `koi8-u` - koi8-u * `iso-8859-5` - iso-8859-5 * `windows-1251` - windows-1251 * `x-mac-cyrillic` - mac-cyrillic * `iso-8859-7` - iso-8859-7 * `windows-1253` - windows-1253 * `iso-8859-8` - iso-8859-8 * `windows-1255` - windows-1255 * `euc-jp` - euc-jp * `iso-2022-jp` - iso-2022-jp * `shift-jis` - shift-jis * `euc-kr` - euc-kr * `macintosh` - macintosh * `iso-8859-10` - iso-8859-10 * `iso-8859-16` - iso-8859-16 * `windows-874` - cp874 * `windows-1254` - windows-1254 * `windows-1258` - windows-1258 * `iso-8859-1` - iso-8859-1 * `windows-1252` - windows-1252 * `iso-8859-3` - iso-8859-3
class ExportCharsetEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportCharsetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const utf8 = ExportCharsetEnum._(r'utf-8');
  static const iso88596 = ExportCharsetEnum._(r'iso-8859-6');
  static const windows1256 = ExportCharsetEnum._(r'windows-1256');
  static const iso88594 = ExportCharsetEnum._(r'iso-8859-4');
  static const windows1257 = ExportCharsetEnum._(r'windows-1257');
  static const iso885914 = ExportCharsetEnum._(r'iso-8859-14');
  static const iso88592 = ExportCharsetEnum._(r'iso-8859-2');
  static const windows1250 = ExportCharsetEnum._(r'windows-1250');
  static const gbk = ExportCharsetEnum._(r'gbk');
  static const gb18030 = ExportCharsetEnum._(r'gb18030');
  static const big5 = ExportCharsetEnum._(r'big5');
  static const koi8R = ExportCharsetEnum._(r'koi8-r');
  static const koi8U = ExportCharsetEnum._(r'koi8-u');
  static const iso88595 = ExportCharsetEnum._(r'iso-8859-5');
  static const windows1251 = ExportCharsetEnum._(r'windows-1251');
  static const xMacCyrillic = ExportCharsetEnum._(r'x-mac-cyrillic');
  static const iso88597 = ExportCharsetEnum._(r'iso-8859-7');
  static const windows1253 = ExportCharsetEnum._(r'windows-1253');
  static const iso88598 = ExportCharsetEnum._(r'iso-8859-8');
  static const windows1255 = ExportCharsetEnum._(r'windows-1255');
  static const eucJp = ExportCharsetEnum._(r'euc-jp');
  static const iso2022Jp = ExportCharsetEnum._(r'iso-2022-jp');
  static const shiftJis = ExportCharsetEnum._(r'shift-jis');
  static const eucKr = ExportCharsetEnum._(r'euc-kr');
  static const macintosh = ExportCharsetEnum._(r'macintosh');
  static const iso885910 = ExportCharsetEnum._(r'iso-8859-10');
  static const iso885916 = ExportCharsetEnum._(r'iso-8859-16');
  static const windows874 = ExportCharsetEnum._(r'windows-874');
  static const windows1254 = ExportCharsetEnum._(r'windows-1254');
  static const windows1258 = ExportCharsetEnum._(r'windows-1258');
  static const iso88591 = ExportCharsetEnum._(r'iso-8859-1');
  static const windows1252 = ExportCharsetEnum._(r'windows-1252');
  static const iso88593 = ExportCharsetEnum._(r'iso-8859-3');

  /// List of all possible values in this [enum][ExportCharsetEnum].
  static const values = <ExportCharsetEnum>[
    utf8,
    iso88596,
    windows1256,
    iso88594,
    windows1257,
    iso885914,
    iso88592,
    windows1250,
    gbk,
    gb18030,
    big5,
    koi8R,
    koi8U,
    iso88595,
    windows1251,
    xMacCyrillic,
    iso88597,
    windows1253,
    iso88598,
    windows1255,
    eucJp,
    iso2022Jp,
    shiftJis,
    eucKr,
    macintosh,
    iso885910,
    iso885916,
    windows874,
    windows1254,
    windows1258,
    iso88591,
    windows1252,
    iso88593,
  ];

  static ExportCharsetEnum? fromJson(dynamic value) => ExportCharsetEnumTypeTransformer().decode(value);

  static List<ExportCharsetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportCharsetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportCharsetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportCharsetEnum] to String,
/// and [decode] dynamic data back to [ExportCharsetEnum].
class ExportCharsetEnumTypeTransformer {
  factory ExportCharsetEnumTypeTransformer() => _instance ??= const ExportCharsetEnumTypeTransformer._();

  const ExportCharsetEnumTypeTransformer._();

  String encode(ExportCharsetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportCharsetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportCharsetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'utf-8': return ExportCharsetEnum.utf8;
        case r'iso-8859-6': return ExportCharsetEnum.iso88596;
        case r'windows-1256': return ExportCharsetEnum.windows1256;
        case r'iso-8859-4': return ExportCharsetEnum.iso88594;
        case r'windows-1257': return ExportCharsetEnum.windows1257;
        case r'iso-8859-14': return ExportCharsetEnum.iso885914;
        case r'iso-8859-2': return ExportCharsetEnum.iso88592;
        case r'windows-1250': return ExportCharsetEnum.windows1250;
        case r'gbk': return ExportCharsetEnum.gbk;
        case r'gb18030': return ExportCharsetEnum.gb18030;
        case r'big5': return ExportCharsetEnum.big5;
        case r'koi8-r': return ExportCharsetEnum.koi8R;
        case r'koi8-u': return ExportCharsetEnum.koi8U;
        case r'iso-8859-5': return ExportCharsetEnum.iso88595;
        case r'windows-1251': return ExportCharsetEnum.windows1251;
        case r'x-mac-cyrillic': return ExportCharsetEnum.xMacCyrillic;
        case r'iso-8859-7': return ExportCharsetEnum.iso88597;
        case r'windows-1253': return ExportCharsetEnum.windows1253;
        case r'iso-8859-8': return ExportCharsetEnum.iso88598;
        case r'windows-1255': return ExportCharsetEnum.windows1255;
        case r'euc-jp': return ExportCharsetEnum.eucJp;
        case r'iso-2022-jp': return ExportCharsetEnum.iso2022Jp;
        case r'shift-jis': return ExportCharsetEnum.shiftJis;
        case r'euc-kr': return ExportCharsetEnum.eucKr;
        case r'macintosh': return ExportCharsetEnum.macintosh;
        case r'iso-8859-10': return ExportCharsetEnum.iso885910;
        case r'iso-8859-16': return ExportCharsetEnum.iso885916;
        case r'windows-874': return ExportCharsetEnum.windows874;
        case r'windows-1254': return ExportCharsetEnum.windows1254;
        case r'windows-1258': return ExportCharsetEnum.windows1258;
        case r'iso-8859-1': return ExportCharsetEnum.iso88591;
        case r'windows-1252': return ExportCharsetEnum.windows1252;
        case r'iso-8859-3': return ExportCharsetEnum.iso88593;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportCharsetEnumTypeTransformer] instance.
  static ExportCharsetEnumTypeTransformer? _instance;
}

