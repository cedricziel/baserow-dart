//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `left_border_color` - left_border_color * `background_color` - background_color
class Type9c4Enum {
  /// Instantiate a new enum with the provided [value].
  const Type9c4Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const leftBorderColor = Type9c4Enum._(r'left_border_color');
  static const backgroundColor = Type9c4Enum._(r'background_color');

  /// List of all possible values in this [enum][Type9c4Enum].
  static const values = <Type9c4Enum>[
    leftBorderColor,
    backgroundColor,
  ];

  static Type9c4Enum? fromJson(dynamic value) => Type9c4EnumTypeTransformer().decode(value);

  static List<Type9c4Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type9c4Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type9c4Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type9c4Enum] to String,
/// and [decode] dynamic data back to [Type9c4Enum].
class Type9c4EnumTypeTransformer {
  factory Type9c4EnumTypeTransformer() => _instance ??= const Type9c4EnumTypeTransformer._();

  const Type9c4EnumTypeTransformer._();

  String encode(Type9c4Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type9c4Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type9c4Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'left_border_color': return Type9c4Enum.leftBorderColor;
        case r'background_color': return Type9c4Enum.backgroundColor;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type9c4EnumTypeTransformer] instance.
  static Type9c4EnumTypeTransformer? _instance;
}

