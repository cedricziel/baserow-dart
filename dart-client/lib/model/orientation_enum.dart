//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `vertical` - Vertical * `horizontal` - Horizontal
class OrientationEnum {
  /// Instantiate a new enum with the provided [value].
  const OrientationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vertical = OrientationEnum._(r'vertical');
  static const horizontal = OrientationEnum._(r'horizontal');

  /// List of all possible values in this [enum][OrientationEnum].
  static const values = <OrientationEnum>[
    vertical,
    horizontal,
  ];

  static OrientationEnum? fromJson(dynamic value) => OrientationEnumTypeTransformer().decode(value);

  static List<OrientationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrientationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrientationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrientationEnum] to String,
/// and [decode] dynamic data back to [OrientationEnum].
class OrientationEnumTypeTransformer {
  factory OrientationEnumTypeTransformer() => _instance ??= const OrientationEnumTypeTransformer._();

  const OrientationEnumTypeTransformer._();

  String encode(OrientationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrientationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrientationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'vertical': return OrientationEnum.vertical;
        case r'horizontal': return OrientationEnum.horizontal;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrientationEnumTypeTransformer] instance.
  static OrientationEnumTypeTransformer? _instance;
}

