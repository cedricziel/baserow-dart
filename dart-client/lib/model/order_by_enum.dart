//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `ASC` - Ascending * `DESC` - Descending
class OrderByEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = OrderByEnum._(r'ASC');
  static const DESC = OrderByEnum._(r'DESC');

  /// List of all possible values in this [enum][OrderByEnum].
  static const values = <OrderByEnum>[
    ASC,
    DESC,
  ];

  static OrderByEnum? fromJson(dynamic value) => OrderByEnumTypeTransformer().decode(value);

  static List<OrderByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderByEnum] to String,
/// and [decode] dynamic data back to [OrderByEnum].
class OrderByEnumTypeTransformer {
  factory OrderByEnumTypeTransformer() => _instance ??= const OrderByEnumTypeTransformer._();

  const OrderByEnumTypeTransformer._();

  String encode(OrderByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return OrderByEnum.ASC;
        case r'DESC': return OrderByEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderByEnumTypeTransformer] instance.
  static OrderByEnumTypeTransformer? _instance;
}

