//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `auth.User` - auth.User
class SubjectType0b2Enum {
  /// Instantiate a new enum with the provided [value].
  const SubjectType0b2Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const authPeriodUser = SubjectType0b2Enum._(r'auth.User');

  /// List of all possible values in this [enum][SubjectType0b2Enum].
  static const values = <SubjectType0b2Enum>[
    authPeriodUser,
  ];

  static SubjectType0b2Enum? fromJson(dynamic value) => SubjectType0b2EnumTypeTransformer().decode(value);

  static List<SubjectType0b2Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubjectType0b2Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubjectType0b2Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubjectType0b2Enum] to String,
/// and [decode] dynamic data back to [SubjectType0b2Enum].
class SubjectType0b2EnumTypeTransformer {
  factory SubjectType0b2EnumTypeTransformer() => _instance ??= const SubjectType0b2EnumTypeTransformer._();

  const SubjectType0b2EnumTypeTransformer._();

  String encode(SubjectType0b2Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubjectType0b2Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubjectType0b2Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'auth.User': return SubjectType0b2Enum.authPeriodUser;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubjectType0b2EnumTypeTransformer] instance.
  static SubjectType0b2EnumTypeTransformer? _instance;
}

