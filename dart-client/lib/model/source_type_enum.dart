//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `url` - Url * `embed` - Embed
class SourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const url = SourceTypeEnum._(r'url');
  static const embed = SourceTypeEnum._(r'embed');

  /// List of all possible values in this [enum][SourceTypeEnum].
  static const values = <SourceTypeEnum>[
    url,
    embed,
  ];

  static SourceTypeEnum? fromJson(dynamic value) => SourceTypeEnumTypeTransformer().decode(value);

  static List<SourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SourceTypeEnum] to String,
/// and [decode] dynamic data back to [SourceTypeEnum].
class SourceTypeEnumTypeTransformer {
  factory SourceTypeEnumTypeTransformer() => _instance ??= const SourceTypeEnumTypeTransformer._();

  const SourceTypeEnumTypeTransformer._();

  String encode(SourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'url': return SourceTypeEnum.url;
        case r'embed': return SourceTypeEnum.embed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SourceTypeEnumTypeTransformer] instance.
  static SourceTypeEnumTypeTransformer? _instance;
}

