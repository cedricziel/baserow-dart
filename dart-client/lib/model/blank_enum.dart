//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class BlankEnum {
  /// Instantiate a new enum with the provided [value].
  const BlankEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const empty = BlankEnum._(r'');

  /// List of all possible values in this [enum][BlankEnum].
  static const values = <BlankEnum>[
    empty,
  ];

  static BlankEnum? fromJson(dynamic value) => BlankEnumTypeTransformer().decode(value);

  static List<BlankEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlankEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlankEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlankEnum] to String,
/// and [decode] dynamic data back to [BlankEnum].
class BlankEnumTypeTransformer {
  factory BlankEnumTypeTransformer() => _instance ??= const BlankEnumTypeTransformer._();

  const BlankEnumTypeTransformer._();

  String encode(BlankEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BlankEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlankEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'': return BlankEnum.empty;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlankEnumTypeTransformer] instance.
  static BlankEnumTypeTransformer? _instance;
}

