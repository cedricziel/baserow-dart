//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `MESSAGE` - Message * `REDIRECT` - Redirect
class SubmitActionEnum {
  /// Instantiate a new enum with the provided [value].
  const SubmitActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MESSAGE = SubmitActionEnum._(r'MESSAGE');
  static const REDIRECT = SubmitActionEnum._(r'REDIRECT');

  /// List of all possible values in this [enum][SubmitActionEnum].
  static const values = <SubmitActionEnum>[
    MESSAGE,
    REDIRECT,
  ];

  static SubmitActionEnum? fromJson(dynamic value) => SubmitActionEnumTypeTransformer().decode(value);

  static List<SubmitActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmitActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmitActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubmitActionEnum] to String,
/// and [decode] dynamic data back to [SubmitActionEnum].
class SubmitActionEnumTypeTransformer {
  factory SubmitActionEnumTypeTransformer() => _instance ??= const SubmitActionEnumTypeTransformer._();

  const SubmitActionEnumTypeTransformer._();

  String encode(SubmitActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubmitActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubmitActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MESSAGE': return SubmitActionEnum.MESSAGE;
        case r'REDIRECT': return SubmitActionEnum.REDIRECT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubmitActionEnumTypeTransformer] instance.
  static SubmitActionEnumTypeTransformer? _instance;
}

