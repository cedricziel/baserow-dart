//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GetDatabaseTableViewFilter404Response {
  /// Returns a new [GetDatabaseTableViewFilter404Response] instance.
  GetDatabaseTableViewFilter404Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  GetDatabaseTableViewFilter404ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDatabaseTableViewFilter404Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'GetDatabaseTableViewFilter404Response[error=$error, detail=$detail]';

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

  /// Returns a new [GetDatabaseTableViewFilter404Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDatabaseTableViewFilter404Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDatabaseTableViewFilter404Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDatabaseTableViewFilter404Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDatabaseTableViewFilter404Response(
        error: GetDatabaseTableViewFilter404ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<GetDatabaseTableViewFilter404Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDatabaseTableViewFilter404Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDatabaseTableViewFilter404Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDatabaseTableViewFilter404Response> mapFromJson(dynamic json) {
    final map = <String, GetDatabaseTableViewFilter404Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDatabaseTableViewFilter404Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDatabaseTableViewFilter404Response-objects as value to a dart map
  static Map<String, List<GetDatabaseTableViewFilter404Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDatabaseTableViewFilter404Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDatabaseTableViewFilter404Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class GetDatabaseTableViewFilter404ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const GetDatabaseTableViewFilter404ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_VIEW_FILTER_DOES_NOT_EXIST = GetDatabaseTableViewFilter404ResponseErrorEnum._(r'ERROR_VIEW_FILTER_DOES_NOT_EXIST');

  /// List of all possible values in this [enum][GetDatabaseTableViewFilter404ResponseErrorEnum].
  static const values = <GetDatabaseTableViewFilter404ResponseErrorEnum>[
    ERROR_VIEW_FILTER_DOES_NOT_EXIST,
  ];

  static GetDatabaseTableViewFilter404ResponseErrorEnum? fromJson(dynamic value) => GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer().decode(value);

  static List<GetDatabaseTableViewFilter404ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDatabaseTableViewFilter404ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDatabaseTableViewFilter404ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetDatabaseTableViewFilter404ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [GetDatabaseTableViewFilter404ResponseErrorEnum].
class GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer {
  factory GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer() => _instance ??= const GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer._();

  const GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer._();

  String encode(GetDatabaseTableViewFilter404ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetDatabaseTableViewFilter404ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetDatabaseTableViewFilter404ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_VIEW_FILTER_DOES_NOT_EXIST': return GetDatabaseTableViewFilter404ResponseErrorEnum.ERROR_VIEW_FILTER_DOES_NOT_EXIST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer] instance.
  static GetDatabaseTableViewFilter404ResponseErrorEnumTypeTransformer? _instance;
}


