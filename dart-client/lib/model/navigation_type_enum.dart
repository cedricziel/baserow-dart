//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `page` - Page * `custom` - Custom
class NavigationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NavigationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const page = NavigationTypeEnum._(r'page');
  static const custom = NavigationTypeEnum._(r'custom');

  /// List of all possible values in this [enum][NavigationTypeEnum].
  static const values = <NavigationTypeEnum>[
    page,
    custom,
  ];

  static NavigationTypeEnum? fromJson(dynamic value) => NavigationTypeEnumTypeTransformer().decode(value);

  static List<NavigationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NavigationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NavigationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NavigationTypeEnum] to String,
/// and [decode] dynamic data back to [NavigationTypeEnum].
class NavigationTypeEnumTypeTransformer {
  factory NavigationTypeEnumTypeTransformer() => _instance ??= const NavigationTypeEnumTypeTransformer._();

  const NavigationTypeEnumTypeTransformer._();

  String encode(NavigationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NavigationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NavigationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'page': return NavigationTypeEnum.page;
        case r'custom': return NavigationTypeEnum.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NavigationTypeEnumTypeTransformer] instance.
  static NavigationTypeEnumTypeTransformer? _instance;
}

