//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class NullEnum {
  /// Instantiate a new enum with the provided [value].
  const NullEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;


  /// List of all possible values in this [enum][NullEnum].
  static const values = <NullEnum>[
  ];

  static NullEnum? fromJson(dynamic value) => NullEnumTypeTransformer().decode(value);

  static List<NullEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NullEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NullEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NullEnum] to String,
/// and [decode] dynamic data back to [NullEnum].
class NullEnumTypeTransformer {
  factory NullEnumTypeTransformer() => _instance ??= const NullEnumTypeTransformer._();

  const NullEnumTypeTransformer._();

  String encode(NullEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NullEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NullEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NullEnumTypeTransformer] instance.
  static NullEnumTypeTransformer? _instance;
}

