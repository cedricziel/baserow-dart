//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `no_verification` - no_verification * `recommended` - recommended * `enforced` - enforced
class EmailVerificationEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailVerificationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const noVerification = EmailVerificationEnum._(r'no_verification');
  static const recommended = EmailVerificationEnum._(r'recommended');
  static const enforced = EmailVerificationEnum._(r'enforced');

  /// List of all possible values in this [enum][EmailVerificationEnum].
  static const values = <EmailVerificationEnum>[
    noVerification,
    recommended,
    enforced,
  ];

  static EmailVerificationEnum? fromJson(dynamic value) => EmailVerificationEnumTypeTransformer().decode(value);

  static List<EmailVerificationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailVerificationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailVerificationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailVerificationEnum] to String,
/// and [decode] dynamic data back to [EmailVerificationEnum].
class EmailVerificationEnumTypeTransformer {
  factory EmailVerificationEnumTypeTransformer() => _instance ??= const EmailVerificationEnumTypeTransformer._();

  const EmailVerificationEnumTypeTransformer._();

  String encode(EmailVerificationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailVerificationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailVerificationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'no_verification': return EmailVerificationEnum.noVerification;
        case r'recommended': return EmailVerificationEnum.recommended;
        case r'enforced': return EmailVerificationEnum.enforced;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailVerificationEnumTypeTransformer] instance.
  static EmailVerificationEnumTypeTransformer? _instance;
}

