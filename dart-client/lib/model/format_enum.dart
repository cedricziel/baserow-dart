//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `plain` - Plain * `markdown` - Markdown
class FormatEnum {
  /// Instantiate a new enum with the provided [value].
  const FormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const plain = FormatEnum._(r'plain');
  static const markdown = FormatEnum._(r'markdown');

  /// List of all possible values in this [enum][FormatEnum].
  static const values = <FormatEnum>[
    plain,
    markdown,
  ];

  static FormatEnum? fromJson(dynamic value) => FormatEnumTypeTransformer().decode(value);

  static List<FormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FormatEnum] to String,
/// and [decode] dynamic data back to [FormatEnum].
class FormatEnumTypeTransformer {
  factory FormatEnumTypeTransformer() => _instance ??= const FormatEnumTypeTransformer._();

  const FormatEnumTypeTransformer._();

  String encode(FormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'plain': return FormatEnum.plain;
        case r'markdown': return FormatEnum.markdown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FormatEnumTypeTransformer] instance.
  static FormatEnumTypeTransformer? _instance;
}

