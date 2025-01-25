//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `auto` - Auto * `full` - Full
class ButtonWidthEnum {
  /// Instantiate a new enum with the provided [value].
  const ButtonWidthEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const auto = ButtonWidthEnum._(r'auto');
  static const full = ButtonWidthEnum._(r'full');

  /// List of all possible values in this [enum][ButtonWidthEnum].
  static const values = <ButtonWidthEnum>[
    auto,
    full,
  ];

  static ButtonWidthEnum? fromJson(dynamic value) => ButtonWidthEnumTypeTransformer().decode(value);

  static List<ButtonWidthEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ButtonWidthEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ButtonWidthEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ButtonWidthEnum] to String,
/// and [decode] dynamic data back to [ButtonWidthEnum].
class ButtonWidthEnumTypeTransformer {
  factory ButtonWidthEnumTypeTransformer() => _instance ??= const ButtonWidthEnumTypeTransformer._();

  const ButtonWidthEnumTypeTransformer._();

  String encode(ButtonWidthEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ButtonWidthEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ButtonWidthEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'auto': return ButtonWidthEnum.auto;
        case r'full': return ButtonWidthEnum.full;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ButtonWidthEnumTypeTransformer] instance.
  static ButtonWidthEnumTypeTransformer? _instance;
}

