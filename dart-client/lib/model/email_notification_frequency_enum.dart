//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `instant` - instant * `daily` - daily * `weekly` - weekly * `never` - never
class EmailNotificationFrequencyEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailNotificationFrequencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instant = EmailNotificationFrequencyEnum._(r'instant');
  static const daily = EmailNotificationFrequencyEnum._(r'daily');
  static const weekly = EmailNotificationFrequencyEnum._(r'weekly');
  static const never = EmailNotificationFrequencyEnum._(r'never');

  /// List of all possible values in this [enum][EmailNotificationFrequencyEnum].
  static const values = <EmailNotificationFrequencyEnum>[
    instant,
    daily,
    weekly,
    never,
  ];

  static EmailNotificationFrequencyEnum? fromJson(dynamic value) => EmailNotificationFrequencyEnumTypeTransformer().decode(value);

  static List<EmailNotificationFrequencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailNotificationFrequencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailNotificationFrequencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailNotificationFrequencyEnum] to String,
/// and [decode] dynamic data back to [EmailNotificationFrequencyEnum].
class EmailNotificationFrequencyEnumTypeTransformer {
  factory EmailNotificationFrequencyEnumTypeTransformer() => _instance ??= const EmailNotificationFrequencyEnumTypeTransformer._();

  const EmailNotificationFrequencyEnumTypeTransformer._();

  String encode(EmailNotificationFrequencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailNotificationFrequencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailNotificationFrequencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instant': return EmailNotificationFrequencyEnum.instant;
        case r'daily': return EmailNotificationFrequencyEnum.daily;
        case r'weekly': return EmailNotificationFrequencyEnum.weekly;
        case r'never': return EmailNotificationFrequencyEnum.never;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailNotificationFrequencyEnumTypeTransformer] instance.
  static EmailNotificationFrequencyEnumTypeTransformer? _instance;
}

