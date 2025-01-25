//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `disable` - disable * `allow` - allow * `prefer` - prefer * `require` - require * `verify-ca` - verify-ca * `verify-full` - verify-full
class PostgresqlSslmodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PostgresqlSslmodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const disable = PostgresqlSslmodeEnum._(r'disable');
  static const allow = PostgresqlSslmodeEnum._(r'allow');
  static const prefer = PostgresqlSslmodeEnum._(r'prefer');
  static const require = PostgresqlSslmodeEnum._(r'require');
  static const verifyCa = PostgresqlSslmodeEnum._(r'verify-ca');
  static const verifyFull = PostgresqlSslmodeEnum._(r'verify-full');

  /// List of all possible values in this [enum][PostgresqlSslmodeEnum].
  static const values = <PostgresqlSslmodeEnum>[
    disable,
    allow,
    prefer,
    require,
    verifyCa,
    verifyFull,
  ];

  static PostgresqlSslmodeEnum? fromJson(dynamic value) => PostgresqlSslmodeEnumTypeTransformer().decode(value);

  static List<PostgresqlSslmodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostgresqlSslmodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostgresqlSslmodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostgresqlSslmodeEnum] to String,
/// and [decode] dynamic data back to [PostgresqlSslmodeEnum].
class PostgresqlSslmodeEnumTypeTransformer {
  factory PostgresqlSslmodeEnumTypeTransformer() => _instance ??= const PostgresqlSslmodeEnumTypeTransformer._();

  const PostgresqlSslmodeEnumTypeTransformer._();

  String encode(PostgresqlSslmodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostgresqlSslmodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostgresqlSslmodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'disable': return PostgresqlSslmodeEnum.disable;
        case r'allow': return PostgresqlSslmodeEnum.allow;
        case r'prefer': return PostgresqlSslmodeEnum.prefer;
        case r'require': return PostgresqlSslmodeEnum.require;
        case r'verify-ca': return PostgresqlSslmodeEnum.verifyCa;
        case r'verify-full': return PostgresqlSslmodeEnum.verifyFull;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostgresqlSslmodeEnumTypeTransformer] instance.
  static PostgresqlSslmodeEnumTypeTransformer? _instance;
}

