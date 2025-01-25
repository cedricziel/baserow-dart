//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GetTableDataSyncTypeProperties400Response {
  /// Returns a new [GetTableDataSyncTypeProperties400Response] instance.
  GetTableDataSyncTypeProperties400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  GetTableDataSyncTypeProperties400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetTableDataSyncTypeProperties400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'GetTableDataSyncTypeProperties400Response[error=$error, detail=$detail]';

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

  /// Returns a new [GetTableDataSyncTypeProperties400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetTableDataSyncTypeProperties400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetTableDataSyncTypeProperties400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetTableDataSyncTypeProperties400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetTableDataSyncTypeProperties400Response(
        error: GetTableDataSyncTypeProperties400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<GetTableDataSyncTypeProperties400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetTableDataSyncTypeProperties400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetTableDataSyncTypeProperties400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetTableDataSyncTypeProperties400Response> mapFromJson(dynamic json) {
    final map = <String, GetTableDataSyncTypeProperties400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetTableDataSyncTypeProperties400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetTableDataSyncTypeProperties400Response-objects as value to a dart map
  static Map<String, List<GetTableDataSyncTypeProperties400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetTableDataSyncTypeProperties400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetTableDataSyncTypeProperties400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class GetTableDataSyncTypeProperties400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const GetTableDataSyncTypeProperties400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_SYNC_ERROR = GetTableDataSyncTypeProperties400ResponseErrorEnum._(r'ERROR_SYNC_ERROR');
  static const ERROR_REQUEST_BODY_VALIDATION = GetTableDataSyncTypeProperties400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');

  /// List of all possible values in this [enum][GetTableDataSyncTypeProperties400ResponseErrorEnum].
  static const values = <GetTableDataSyncTypeProperties400ResponseErrorEnum>[
    ERROR_SYNC_ERROR,
    ERROR_REQUEST_BODY_VALIDATION,
  ];

  static GetTableDataSyncTypeProperties400ResponseErrorEnum? fromJson(dynamic value) => GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer().decode(value);

  static List<GetTableDataSyncTypeProperties400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetTableDataSyncTypeProperties400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetTableDataSyncTypeProperties400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetTableDataSyncTypeProperties400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [GetTableDataSyncTypeProperties400ResponseErrorEnum].
class GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer {
  factory GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer() => _instance ??= const GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer._();

  const GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer._();

  String encode(GetTableDataSyncTypeProperties400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetTableDataSyncTypeProperties400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetTableDataSyncTypeProperties400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_SYNC_ERROR': return GetTableDataSyncTypeProperties400ResponseErrorEnum.ERROR_SYNC_ERROR;
        case r'ERROR_REQUEST_BODY_VALIDATION': return GetTableDataSyncTypeProperties400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer] instance.
  static GetTableDataSyncTypeProperties400ResponseErrorEnumTypeTransformer? _instance;
}


