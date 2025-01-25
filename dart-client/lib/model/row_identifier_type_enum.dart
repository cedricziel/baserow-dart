//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `id` - Id * `count` - Count
class RowIdentifierTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RowIdentifierTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const id = RowIdentifierTypeEnum._(r'id');
  static const count = RowIdentifierTypeEnum._(r'count');

  /// List of all possible values in this [enum][RowIdentifierTypeEnum].
  static const values = <RowIdentifierTypeEnum>[
    id,
    count,
  ];

  static RowIdentifierTypeEnum? fromJson(dynamic value) => RowIdentifierTypeEnumTypeTransformer().decode(value);

  static List<RowIdentifierTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowIdentifierTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowIdentifierTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RowIdentifierTypeEnum] to String,
/// and [decode] dynamic data back to [RowIdentifierTypeEnum].
class RowIdentifierTypeEnumTypeTransformer {
  factory RowIdentifierTypeEnumTypeTransformer() => _instance ??= const RowIdentifierTypeEnumTypeTransformer._();

  const RowIdentifierTypeEnumTypeTransformer._();

  String encode(RowIdentifierTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RowIdentifierTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RowIdentifierTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'id': return RowIdentifierTypeEnum.id;
        case r'count': return RowIdentifierTypeEnum.count;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RowIdentifierTypeEnumTypeTransformer] instance.
  static RowIdentifierTypeEnumTypeTransformer? _instance;
}

