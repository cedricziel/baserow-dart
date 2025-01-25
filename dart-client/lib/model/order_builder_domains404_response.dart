//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderBuilderDomains404Response {
  /// Returns a new [OrderBuilderDomains404Response] instance.
  OrderBuilderDomains404Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  OrderBuilderDomains404ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBuilderDomains404Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'OrderBuilderDomains404Response[error=$error, detail=$detail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.detail != null) {
      json[r'detail'] = this.detail;
    } else {
      json[r'detail'] = null;
    }
    return json;
  }

  /// Returns a new [OrderBuilderDomains404Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBuilderDomains404Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBuilderDomains404Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBuilderDomains404Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBuilderDomains404Response(
        error: OrderBuilderDomains404ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<OrderBuilderDomains404Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBuilderDomains404Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBuilderDomains404Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBuilderDomains404Response> mapFromJson(dynamic json) {
    final map = <String, OrderBuilderDomains404Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBuilderDomains404Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBuilderDomains404Response-objects as value to a dart map
  static Map<String, List<OrderBuilderDomains404Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBuilderDomains404Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBuilderDomains404Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class OrderBuilderDomains404ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderBuilderDomains404ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_APPLICATION_DOES_NOT_EXIST = OrderBuilderDomains404ResponseErrorEnum._(r'ERROR_APPLICATION_DOES_NOT_EXIST');
  static const ERROR_DOMAIN_DOES_NOT_EXIST = OrderBuilderDomains404ResponseErrorEnum._(r'ERROR_DOMAIN_DOES_NOT_EXIST');

  /// List of all possible values in this [enum][OrderBuilderDomains404ResponseErrorEnum].
  static const values = <OrderBuilderDomains404ResponseErrorEnum>[
    ERROR_APPLICATION_DOES_NOT_EXIST,
    ERROR_DOMAIN_DOES_NOT_EXIST,
  ];

  static OrderBuilderDomains404ResponseErrorEnum? fromJson(dynamic value) => OrderBuilderDomains404ResponseErrorEnumTypeTransformer().decode(value);

  static List<OrderBuilderDomains404ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBuilderDomains404ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBuilderDomains404ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderBuilderDomains404ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [OrderBuilderDomains404ResponseErrorEnum].
class OrderBuilderDomains404ResponseErrorEnumTypeTransformer {
  factory OrderBuilderDomains404ResponseErrorEnumTypeTransformer() => _instance ??= const OrderBuilderDomains404ResponseErrorEnumTypeTransformer._();

  const OrderBuilderDomains404ResponseErrorEnumTypeTransformer._();

  String encode(OrderBuilderDomains404ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderBuilderDomains404ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderBuilderDomains404ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_APPLICATION_DOES_NOT_EXIST': return OrderBuilderDomains404ResponseErrorEnum.ERROR_APPLICATION_DOES_NOT_EXIST;
        case r'ERROR_DOMAIN_DOES_NOT_EXIST': return OrderBuilderDomains404ResponseErrorEnum.ERROR_DOMAIN_DOES_NOT_EXIST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderBuilderDomains404ResponseErrorEnumTypeTransformer] instance.
  static OrderBuilderDomains404ResponseErrorEnumTypeTransformer? _instance;
}


