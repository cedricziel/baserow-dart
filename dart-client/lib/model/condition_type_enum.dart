//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `AND` - And * `OR` - Or
class ConditionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConditionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AND = ConditionTypeEnum._(r'AND');
  static const OR = ConditionTypeEnum._(r'OR');

  /// List of all possible values in this [enum][ConditionTypeEnum].
  static const values = <ConditionTypeEnum>[
    AND,
    OR,
  ];

  static ConditionTypeEnum? fromJson(dynamic value) => ConditionTypeEnumTypeTransformer().decode(value);

  static List<ConditionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConditionTypeEnum] to String,
/// and [decode] dynamic data back to [ConditionTypeEnum].
class ConditionTypeEnumTypeTransformer {
  factory ConditionTypeEnumTypeTransformer() => _instance ??= const ConditionTypeEnumTypeTransformer._();

  const ConditionTypeEnumTypeTransformer._();

  String encode(ConditionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConditionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConditionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AND': return ConditionTypeEnum.AND;
        case r'OR': return ConditionTypeEnum.OR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConditionTypeEnumTypeTransformer] instance.
  static ConditionTypeEnumTypeTransformer? _instance;
}

