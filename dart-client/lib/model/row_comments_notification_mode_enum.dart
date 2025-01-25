//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `all` - all * `mentions` - mentions
class RowCommentsNotificationModeEnum {
  /// Instantiate a new enum with the provided [value].
  const RowCommentsNotificationModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = RowCommentsNotificationModeEnum._(r'all');
  static const mentions = RowCommentsNotificationModeEnum._(r'mentions');

  /// List of all possible values in this [enum][RowCommentsNotificationModeEnum].
  static const values = <RowCommentsNotificationModeEnum>[
    all,
    mentions,
  ];

  static RowCommentsNotificationModeEnum? fromJson(dynamic value) => RowCommentsNotificationModeEnumTypeTransformer().decode(value);

  static List<RowCommentsNotificationModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowCommentsNotificationModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowCommentsNotificationModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RowCommentsNotificationModeEnum] to String,
/// and [decode] dynamic data back to [RowCommentsNotificationModeEnum].
class RowCommentsNotificationModeEnumTypeTransformer {
  factory RowCommentsNotificationModeEnumTypeTransformer() => _instance ??= const RowCommentsNotificationModeEnumTypeTransformer._();

  const RowCommentsNotificationModeEnumTypeTransformer._();

  String encode(RowCommentsNotificationModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RowCommentsNotificationModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RowCommentsNotificationModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return RowCommentsNotificationModeEnum.all;
        case r'mentions': return RowCommentsNotificationModeEnum.mentions;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RowCommentsNotificationModeEnumTypeTransformer] instance.
  static RowCommentsNotificationModeEnumTypeTransformer? _instance;
}

