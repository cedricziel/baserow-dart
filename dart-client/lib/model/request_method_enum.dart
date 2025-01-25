//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete
class RequestMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const RequestMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const POST = RequestMethodEnum._(r'POST');
  static const GET = RequestMethodEnum._(r'GET');
  static const PUT = RequestMethodEnum._(r'PUT');
  static const PATCH = RequestMethodEnum._(r'PATCH');
  static const DELETE = RequestMethodEnum._(r'DELETE');

  /// List of all possible values in this [enum][RequestMethodEnum].
  static const values = <RequestMethodEnum>[
    POST,
    GET,
    PUT,
    PATCH,
    DELETE,
  ];

  static RequestMethodEnum? fromJson(dynamic value) => RequestMethodEnumTypeTransformer().decode(value);

  static List<RequestMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RequestMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RequestMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RequestMethodEnum] to String,
/// and [decode] dynamic data back to [RequestMethodEnum].
class RequestMethodEnumTypeTransformer {
  factory RequestMethodEnumTypeTransformer() => _instance ??= const RequestMethodEnumTypeTransformer._();

  const RequestMethodEnumTypeTransformer._();

  String encode(RequestMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RequestMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RequestMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'POST': return RequestMethodEnum.POST;
        case r'GET': return RequestMethodEnum.GET;
        case r'PUT': return RequestMethodEnum.PUT;
        case r'PATCH': return RequestMethodEnum.PATCH;
        case r'DELETE': return RequestMethodEnum.DELETE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RequestMethodEnumTypeTransformer] instance.
  static RequestMethodEnumTypeTransformer? _instance;
}

