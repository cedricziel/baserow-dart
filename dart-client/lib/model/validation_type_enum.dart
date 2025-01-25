//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `any` - Any * `email` - Email * `integer` - Integer
class ValidationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ValidationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const any = ValidationTypeEnum._(r'any');
  static const email = ValidationTypeEnum._(r'email');
  static const integer = ValidationTypeEnum._(r'integer');

  /// List of all possible values in this [enum][ValidationTypeEnum].
  static const values = <ValidationTypeEnum>[
    any,
    email,
    integer,
  ];

  static ValidationTypeEnum? fromJson(dynamic value) => ValidationTypeEnumTypeTransformer().decode(value);

  static List<ValidationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ValidationTypeEnum] to String,
/// and [decode] dynamic data back to [ValidationTypeEnum].
class ValidationTypeEnumTypeTransformer {
  factory ValidationTypeEnumTypeTransformer() => _instance ??= const ValidationTypeEnumTypeTransformer._();

  const ValidationTypeEnumTypeTransformer._();

  String encode(ValidationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ValidationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ValidationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'any': return ValidationTypeEnum.any;
        case r'email': return ValidationTypeEnum.email;
        case r'integer': return ValidationTypeEnum.integer;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ValidationTypeEnumTypeTransformer] instance.
  static ValidationTypeEnumTypeTransformer? _instance;
}

