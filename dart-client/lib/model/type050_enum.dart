//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `local_baserow` - local_baserow
class Type050Enum {
  /// Instantiate a new enum with the provided [value].
  const Type050Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const localBaserow = Type050Enum._(r'local_baserow');

  /// List of all possible values in this [enum][Type050Enum].
  static const values = <Type050Enum>[
    localBaserow,
  ];

  static Type050Enum? fromJson(dynamic value) => Type050EnumTypeTransformer().decode(value);

  static List<Type050Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type050Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type050Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type050Enum] to String,
/// and [decode] dynamic data back to [Type050Enum].
class Type050EnumTypeTransformer {
  factory Type050EnumTypeTransformer() => _instance ??= const Type050EnumTypeTransformer._();

  const Type050EnumTypeTransformer._();

  String encode(Type050Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type050Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type050Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'local_baserow': return Type050Enum.localBaserow;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type050EnumTypeTransformer] instance.
  static Type050EnumTypeTransformer? _instance;
}

