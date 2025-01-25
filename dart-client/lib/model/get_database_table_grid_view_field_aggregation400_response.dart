//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GetDatabaseTableGridViewFieldAggregation400Response {
  /// Returns a new [GetDatabaseTableGridViewFieldAggregation400Response] instance.
  GetDatabaseTableGridViewFieldAggregation400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDatabaseTableGridViewFieldAggregation400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'GetDatabaseTableGridViewFieldAggregation400Response[error=$error, detail=$detail]';

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

  /// Returns a new [GetDatabaseTableGridViewFieldAggregation400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDatabaseTableGridViewFieldAggregation400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDatabaseTableGridViewFieldAggregation400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDatabaseTableGridViewFieldAggregation400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDatabaseTableGridViewFieldAggregation400Response(
        error: GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<GetDatabaseTableGridViewFieldAggregation400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDatabaseTableGridViewFieldAggregation400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDatabaseTableGridViewFieldAggregation400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDatabaseTableGridViewFieldAggregation400Response> mapFromJson(dynamic json) {
    final map = <String, GetDatabaseTableGridViewFieldAggregation400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDatabaseTableGridViewFieldAggregation400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDatabaseTableGridViewFieldAggregation400Response-objects as value to a dart map
  static Map<String, List<GetDatabaseTableGridViewFieldAggregation400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDatabaseTableGridViewFieldAggregation400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDatabaseTableGridViewFieldAggregation400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_AGGREGATION_TYPE_DOES_NOT_EXIST = GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum._(r'ERROR_AGGREGATION_TYPE_DOES_NOT_EXIST');
  static const ERROR_FIELD_NOT_IN_TABLE = GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum._(r'ERROR_FIELD_NOT_IN_TABLE');

  /// List of all possible values in this [enum][GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum].
  static const values = <GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_AGGREGATION_TYPE_DOES_NOT_EXIST,
    ERROR_FIELD_NOT_IN_TABLE,
  ];

  static GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum? fromJson(dynamic value) => GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer().decode(value);

  static List<GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum].
class GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer {
  factory GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer() => _instance ??= const GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer._();

  const GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer._();

  String encode(GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_AGGREGATION_TYPE_DOES_NOT_EXIST': return GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.ERROR_AGGREGATION_TYPE_DOES_NOT_EXIST;
        case r'ERROR_FIELD_NOT_IN_TABLE': return GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnum.ERROR_FIELD_NOT_IN_TABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer] instance.
  static GetDatabaseTableGridViewFieldAggregation400ResponseErrorEnumTypeTransformer? _instance;
}


