//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `database` - database * `builder` - builder
class Type8b0Enum {
  /// Instantiate a new enum with the provided [value].
  const Type8b0Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const database = Type8b0Enum._(r'database');
  static const builder = Type8b0Enum._(r'builder');

  /// List of all possible values in this [enum][Type8b0Enum].
  static const values = <Type8b0Enum>[
    database,
    builder,
  ];

  static Type8b0Enum? fromJson(dynamic value) => Type8b0EnumTypeTransformer().decode(value);

  static List<Type8b0Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type8b0Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type8b0Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type8b0Enum] to String,
/// and [decode] dynamic data back to [Type8b0Enum].
class Type8b0EnumTypeTransformer {
  factory Type8b0EnumTypeTransformer() => _instance ??= const Type8b0EnumTypeTransformer._();

  const Type8b0EnumTypeTransformer._();

  String encode(Type8b0Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type8b0Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type8b0Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'database': return Type8b0Enum.database;
        case r'builder': return Type8b0Enum.builder;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type8b0EnumTypeTransformer] instance.
  static Type8b0EnumTypeTransformer? _instance;
}

