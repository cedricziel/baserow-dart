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
class OrderEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = OrderEnum._(r'ASC');
  static const DESC = OrderEnum._(r'DESC');

  /// List of all possible values in this [enum][OrderEnum].
  static const values = <OrderEnum>[
    ASC,
    DESC,
  ];

  static OrderEnum? fromJson(dynamic value) => OrderEnumTypeTransformer().decode(value);

  static List<OrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderEnum] to String,
/// and [decode] dynamic data back to [OrderEnum].
class OrderEnumTypeTransformer {
  factory OrderEnumTypeTransformer() => _instance ??= const OrderEnumTypeTransformer._();

  const OrderEnumTypeTransformer._();

  String encode(OrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return OrderEnum.ASC;
        case r'DESC': return OrderEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderEnumTypeTransformer] instance.
  static OrderEnumTypeTransformer? _instance;
}

