//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderBuilderWorkflowActions404Response {
  /// Returns a new [OrderBuilderWorkflowActions404Response] instance.
  OrderBuilderWorkflowActions404Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  OrderBuilderWorkflowActions404ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderBuilderWorkflowActions404Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'OrderBuilderWorkflowActions404Response[error=$error, detail=$detail]';

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

  /// Returns a new [OrderBuilderWorkflowActions404Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderBuilderWorkflowActions404Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderBuilderWorkflowActions404Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderBuilderWorkflowActions404Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderBuilderWorkflowActions404Response(
        error: OrderBuilderWorkflowActions404ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<OrderBuilderWorkflowActions404Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBuilderWorkflowActions404Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBuilderWorkflowActions404Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderBuilderWorkflowActions404Response> mapFromJson(dynamic json) {
    final map = <String, OrderBuilderWorkflowActions404Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderBuilderWorkflowActions404Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderBuilderWorkflowActions404Response-objects as value to a dart map
  static Map<String, List<OrderBuilderWorkflowActions404Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderBuilderWorkflowActions404Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderBuilderWorkflowActions404Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class OrderBuilderWorkflowActions404ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const OrderBuilderWorkflowActions404ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_PAGE_DOES_NOT_EXIST = OrderBuilderWorkflowActions404ResponseErrorEnum._(r'ERROR_PAGE_DOES_NOT_EXIST');
  static const ERROR_WORKFLOW_ACTION_DOES_NOT_EXIST = OrderBuilderWorkflowActions404ResponseErrorEnum._(r'ERROR_WORKFLOW_ACTION_DOES_NOT_EXIST');
  static const ERROR_WORKFLOW_ACTION_NOT_IN_ELEMENT = OrderBuilderWorkflowActions404ResponseErrorEnum._(r'ERROR_WORKFLOW_ACTION_NOT_IN_ELEMENT');

  /// List of all possible values in this [enum][OrderBuilderWorkflowActions404ResponseErrorEnum].
  static const values = <OrderBuilderWorkflowActions404ResponseErrorEnum>[
    ERROR_PAGE_DOES_NOT_EXIST,
    ERROR_WORKFLOW_ACTION_DOES_NOT_EXIST,
    ERROR_WORKFLOW_ACTION_NOT_IN_ELEMENT,
  ];

  static OrderBuilderWorkflowActions404ResponseErrorEnum? fromJson(dynamic value) => OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer().decode(value);

  static List<OrderBuilderWorkflowActions404ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderBuilderWorkflowActions404ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderBuilderWorkflowActions404ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrderBuilderWorkflowActions404ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [OrderBuilderWorkflowActions404ResponseErrorEnum].
class OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer {
  factory OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer() => _instance ??= const OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer._();

  const OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer._();

  String encode(OrderBuilderWorkflowActions404ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrderBuilderWorkflowActions404ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrderBuilderWorkflowActions404ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_PAGE_DOES_NOT_EXIST': return OrderBuilderWorkflowActions404ResponseErrorEnum.ERROR_PAGE_DOES_NOT_EXIST;
        case r'ERROR_WORKFLOW_ACTION_DOES_NOT_EXIST': return OrderBuilderWorkflowActions404ResponseErrorEnum.ERROR_WORKFLOW_ACTION_DOES_NOT_EXIST;
        case r'ERROR_WORKFLOW_ACTION_NOT_IN_ELEMENT': return OrderBuilderWorkflowActions404ResponseErrorEnum.ERROR_WORKFLOW_ACTION_NOT_IN_ELEMENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer] instance.
  static OrderBuilderWorkflowActions404ResponseErrorEnumTypeTransformer? _instance;
}


