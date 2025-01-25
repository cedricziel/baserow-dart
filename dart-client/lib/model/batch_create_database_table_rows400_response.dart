//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class BatchCreateDatabaseTableRows400Response {
  /// Returns a new [BatchCreateDatabaseTableRows400Response] instance.
  BatchCreateDatabaseTableRows400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  BatchCreateDatabaseTableRows400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchCreateDatabaseTableRows400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'BatchCreateDatabaseTableRows400Response[error=$error, detail=$detail]';

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

  /// Returns a new [BatchCreateDatabaseTableRows400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BatchCreateDatabaseTableRows400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BatchCreateDatabaseTableRows400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BatchCreateDatabaseTableRows400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BatchCreateDatabaseTableRows400Response(
        error: BatchCreateDatabaseTableRows400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<BatchCreateDatabaseTableRows400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchCreateDatabaseTableRows400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchCreateDatabaseTableRows400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BatchCreateDatabaseTableRows400Response> mapFromJson(dynamic json) {
    final map = <String, BatchCreateDatabaseTableRows400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BatchCreateDatabaseTableRows400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BatchCreateDatabaseTableRows400Response-objects as value to a dart map
  static Map<String, List<BatchCreateDatabaseTableRows400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BatchCreateDatabaseTableRows400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BatchCreateDatabaseTableRows400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class BatchCreateDatabaseTableRows400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const BatchCreateDatabaseTableRows400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = BatchCreateDatabaseTableRows400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_REQUEST_BODY_VALIDATION = BatchCreateDatabaseTableRows400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');
  static const ERROR_ROW_IDS_NOT_UNIQUE = BatchCreateDatabaseTableRows400ResponseErrorEnum._(r'ERROR_ROW_IDS_NOT_UNIQUE');
  static const ERROR_REQUEST_BODY_VALIDATION2 = BatchCreateDatabaseTableRows400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');

  /// List of all possible values in this [enum][BatchCreateDatabaseTableRows400ResponseErrorEnum].
  static const values = <BatchCreateDatabaseTableRows400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_REQUEST_BODY_VALIDATION,
    ERROR_ROW_IDS_NOT_UNIQUE,
    ERROR_REQUEST_BODY_VALIDATION2,
  ];

  static BatchCreateDatabaseTableRows400ResponseErrorEnum? fromJson(dynamic value) => BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer().decode(value);

  static List<BatchCreateDatabaseTableRows400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BatchCreateDatabaseTableRows400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BatchCreateDatabaseTableRows400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BatchCreateDatabaseTableRows400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [BatchCreateDatabaseTableRows400ResponseErrorEnum].
class BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer {
  factory BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer() => _instance ??= const BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer._();

  const BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer._();

  String encode(BatchCreateDatabaseTableRows400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BatchCreateDatabaseTableRows400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BatchCreateDatabaseTableRows400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return BatchCreateDatabaseTableRows400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_REQUEST_BODY_VALIDATION': return BatchCreateDatabaseTableRows400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        case r'ERROR_ROW_IDS_NOT_UNIQUE': return BatchCreateDatabaseTableRows400ResponseErrorEnum.ERROR_ROW_IDS_NOT_UNIQUE;
        case r'ERROR_REQUEST_BODY_VALIDATION': return BatchCreateDatabaseTableRows400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer] instance.
  static BatchCreateDatabaseTableRows400ResponseErrorEnumTypeTransformer? _instance;
}


