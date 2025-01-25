//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `link` - Link * `button` - Button
class VariantEnum {
  /// Instantiate a new enum with the provided [value].
  const VariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const link = VariantEnum._(r'link');
  static const button = VariantEnum._(r'button');

  /// List of all possible values in this [enum][VariantEnum].
  static const values = <VariantEnum>[
    link,
    button,
  ];

  static VariantEnum? fromJson(dynamic value) => VariantEnumTypeTransformer().decode(value);

  static List<VariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VariantEnum] to String,
/// and [decode] dynamic data back to [VariantEnum].
class VariantEnumTypeTransformer {
  factory VariantEnumTypeTransformer() => _instance ??= const VariantEnumTypeTransformer._();

  const VariantEnumTypeTransformer._();

  String encode(VariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'link': return VariantEnum.link;
        case r'button': return VariantEnum.button;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VariantEnumTypeTransformer] instance.
  static VariantEnumTypeTransformer? _instance;
}

