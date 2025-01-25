//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `allow_all` - Allow All * `allow_all_except` - Allow All Except * `disallow_all_except` - Disallow All Except
class RoleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RoleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const allowAll = RoleTypeEnum._(r'allow_all');
  static const allowAllExcept = RoleTypeEnum._(r'allow_all_except');
  static const disallowAllExcept = RoleTypeEnum._(r'disallow_all_except');

  /// List of all possible values in this [enum][RoleTypeEnum].
  static const values = <RoleTypeEnum>[
    allowAll,
    allowAllExcept,
    disallowAllExcept,
  ];

  static RoleTypeEnum? fromJson(dynamic value) => RoleTypeEnumTypeTransformer().decode(value);

  static List<RoleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RoleTypeEnum] to String,
/// and [decode] dynamic data back to [RoleTypeEnum].
class RoleTypeEnumTypeTransformer {
  factory RoleTypeEnumTypeTransformer() => _instance ??= const RoleTypeEnumTypeTransformer._();

  const RoleTypeEnumTypeTransformer._();

  String encode(RoleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RoleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RoleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'allow_all': return RoleTypeEnum.allowAll;
        case r'allow_all_except': return RoleTypeEnum.allowAllExcept;
        case r'disallow_all_except': return RoleTypeEnum.disallowAllExcept;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoleTypeEnumTypeTransformer] instance.
  static RoleTypeEnumTypeTransformer? _instance;
}

