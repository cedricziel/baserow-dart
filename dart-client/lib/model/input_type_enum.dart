//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `text` - Text * `password` - Password
class InputTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InputTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const text = InputTypeEnum._(r'text');
  static const password = InputTypeEnum._(r'password');

  /// List of all possible values in this [enum][InputTypeEnum].
  static const values = <InputTypeEnum>[
    text,
    password,
  ];

  static InputTypeEnum? fromJson(dynamic value) => InputTypeEnumTypeTransformer().decode(value);

  static List<InputTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InputTypeEnum] to String,
/// and [decode] dynamic data back to [InputTypeEnum].
class InputTypeEnumTypeTransformer {
  factory InputTypeEnumTypeTransformer() => _instance ??= const InputTypeEnumTypeTransformer._();

  const InputTypeEnumTypeTransformer._();

  String encode(InputTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InputTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InputTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text': return InputTypeEnum.text;
        case r'password': return InputTypeEnum.password;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InputTypeEnumTypeTransformer] instance.
  static InputTypeEnumTypeTransformer? _instance;
}

