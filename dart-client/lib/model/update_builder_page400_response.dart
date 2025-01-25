//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UpdateBuilderPage400Response {
  /// Returns a new [UpdateBuilderPage400Response] instance.
  UpdateBuilderPage400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  UpdateBuilderPage400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateBuilderPage400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'UpdateBuilderPage400Response[error=$error, detail=$detail]';

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

  /// Returns a new [UpdateBuilderPage400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateBuilderPage400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateBuilderPage400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateBuilderPage400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateBuilderPage400Response(
        error: UpdateBuilderPage400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<UpdateBuilderPage400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateBuilderPage400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBuilderPage400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateBuilderPage400Response> mapFromJson(dynamic json) {
    final map = <String, UpdateBuilderPage400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateBuilderPage400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateBuilderPage400Response-objects as value to a dart map
  static Map<String, List<UpdateBuilderPage400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateBuilderPage400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateBuilderPage400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class UpdateBuilderPage400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateBuilderPage400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_REQUEST_BODY_VALIDATION = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');
  static const ERROR_PAGE_NAME_NOT_UNIQUE = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_PAGE_NAME_NOT_UNIQUE');
  static const ERROR_PAGE_PATH_NOT_UNIQUE = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_PAGE_PATH_NOT_UNIQUE');
  static const ERROR_PATH_PARAM_NOT_IN_PATH = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_PATH_PARAM_NOT_IN_PATH');
  static const ERROR_PATH_PARAM_NOT_DEFINED = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_PATH_PARAM_NOT_DEFINED');
  static const ERROR_SHARED_PAGE_READ_ONLY = UpdateBuilderPage400ResponseErrorEnum._(r'ERROR_SHARED_PAGE_READ_ONLY');

  /// List of all possible values in this [enum][UpdateBuilderPage400ResponseErrorEnum].
  static const values = <UpdateBuilderPage400ResponseErrorEnum>[
    ERROR_REQUEST_BODY_VALIDATION,
    ERROR_PAGE_NAME_NOT_UNIQUE,
    ERROR_PAGE_PATH_NOT_UNIQUE,
    ERROR_PATH_PARAM_NOT_IN_PATH,
    ERROR_PATH_PARAM_NOT_DEFINED,
    ERROR_SHARED_PAGE_READ_ONLY,
  ];

  static UpdateBuilderPage400ResponseErrorEnum? fromJson(dynamic value) => UpdateBuilderPage400ResponseErrorEnumTypeTransformer().decode(value);

  static List<UpdateBuilderPage400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateBuilderPage400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBuilderPage400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateBuilderPage400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [UpdateBuilderPage400ResponseErrorEnum].
class UpdateBuilderPage400ResponseErrorEnumTypeTransformer {
  factory UpdateBuilderPage400ResponseErrorEnumTypeTransformer() => _instance ??= const UpdateBuilderPage400ResponseErrorEnumTypeTransformer._();

  const UpdateBuilderPage400ResponseErrorEnumTypeTransformer._();

  String encode(UpdateBuilderPage400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateBuilderPage400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateBuilderPage400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_REQUEST_BODY_VALIDATION': return UpdateBuilderPage400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        case r'ERROR_PAGE_NAME_NOT_UNIQUE': return UpdateBuilderPage400ResponseErrorEnum.ERROR_PAGE_NAME_NOT_UNIQUE;
        case r'ERROR_PAGE_PATH_NOT_UNIQUE': return UpdateBuilderPage400ResponseErrorEnum.ERROR_PAGE_PATH_NOT_UNIQUE;
        case r'ERROR_PATH_PARAM_NOT_IN_PATH': return UpdateBuilderPage400ResponseErrorEnum.ERROR_PATH_PARAM_NOT_IN_PATH;
        case r'ERROR_PATH_PARAM_NOT_DEFINED': return UpdateBuilderPage400ResponseErrorEnum.ERROR_PATH_PARAM_NOT_DEFINED;
        case r'ERROR_SHARED_PAGE_READ_ONLY': return UpdateBuilderPage400ResponseErrorEnum.ERROR_SHARED_PAGE_READ_ONLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateBuilderPage400ResponseErrorEnumTypeTransformer] instance.
  static UpdateBuilderPage400ResponseErrorEnumTypeTransformer? _instance;
}


