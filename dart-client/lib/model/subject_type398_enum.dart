//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `auth.User` - auth.User * `anonymous` - anonymous * `user_source.user` - user_source.user * `core.Token` - core.Token * `baserow_enterprise.Team` - baserow_enterprise.Team
class SubjectType398Enum {
  /// Instantiate a new enum with the provided [value].
  const SubjectType398Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const authPeriodUser = SubjectType398Enum._(r'auth.User');
  static const anonymous = SubjectType398Enum._(r'anonymous');
  static const userSourcePeriodUser = SubjectType398Enum._(r'user_source.user');
  static const corePeriodToken = SubjectType398Enum._(r'core.Token');
  static const baserowEnterprisePeriodTeam = SubjectType398Enum._(r'baserow_enterprise.Team');

  /// List of all possible values in this [enum][SubjectType398Enum].
  static const values = <SubjectType398Enum>[
    authPeriodUser,
    anonymous,
    userSourcePeriodUser,
    corePeriodToken,
    baserowEnterprisePeriodTeam,
  ];

  static SubjectType398Enum? fromJson(dynamic value) => SubjectType398EnumTypeTransformer().decode(value);

  static List<SubjectType398Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubjectType398Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubjectType398Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubjectType398Enum] to String,
/// and [decode] dynamic data back to [SubjectType398Enum].
class SubjectType398EnumTypeTransformer {
  factory SubjectType398EnumTypeTransformer() => _instance ??= const SubjectType398EnumTypeTransformer._();

  const SubjectType398EnumTypeTransformer._();

  String encode(SubjectType398Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubjectType398Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubjectType398Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'auth.User': return SubjectType398Enum.authPeriodUser;
        case r'anonymous': return SubjectType398Enum.anonymous;
        case r'user_source.user': return SubjectType398Enum.userSourcePeriodUser;
        case r'core.Token': return SubjectType398Enum.corePeriodToken;
        case r'baserow_enterprise.Team': return SubjectType398Enum.baserowEnterprisePeriodTeam;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubjectType398EnumTypeTransformer] instance.
  static SubjectType398EnumTypeTransformer? _instance;
}

