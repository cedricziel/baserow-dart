//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `custom` - custom * `sub_domain` - sub_domain
class Type509Enum {
  /// Instantiate a new enum with the provided [value].
  const Type509Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const custom = Type509Enum._(r'custom');
  static const subDomain = Type509Enum._(r'sub_domain');

  /// List of all possible values in this [enum][Type509Enum].
  static const values = <Type509Enum>[
    custom,
    subDomain,
  ];

  static Type509Enum? fromJson(dynamic value) => Type509EnumTypeTransformer().decode(value);

  static List<Type509Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type509Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type509Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type509Enum] to String,
/// and [decode] dynamic data back to [Type509Enum].
class Type509EnumTypeTransformer {
  factory Type509EnumTypeTransformer() => _instance ??= const Type509EnumTypeTransformer._();

  const Type509EnumTypeTransformer._();

  String encode(Type509Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type509Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type509Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'custom': return Type509Enum.custom;
        case r'sub_domain': return Type509Enum.subDomain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type509EnumTypeTransformer] instance.
  static Type509EnumTypeTransformer? _instance;
}

