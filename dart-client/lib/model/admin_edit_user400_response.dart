//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AdminEditUser400Response {
  /// Returns a new [AdminEditUser400Response] instance.
  AdminEditUser400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  AdminEditUser400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminEditUser400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'AdminEditUser400Response[error=$error, detail=$detail]';

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

  /// Returns a new [AdminEditUser400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminEditUser400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminEditUser400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminEditUser400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminEditUser400Response(
        error: AdminEditUser400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<AdminEditUser400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminEditUser400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminEditUser400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminEditUser400Response> mapFromJson(dynamic json) {
    final map = <String, AdminEditUser400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminEditUser400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminEditUser400Response-objects as value to a dart map
  static Map<String, List<AdminEditUser400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminEditUser400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminEditUser400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class AdminEditUser400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const AdminEditUser400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_REQUEST_BODY_VALIDATION = AdminEditUser400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');
  static const USER_ADMIN_CANNOT_DEACTIVATE_SELF = AdminEditUser400ResponseErrorEnum._(r'USER_ADMIN_CANNOT_DEACTIVATE_SELF');
  static const USER_ADMIN_UNKNOWN_USER = AdminEditUser400ResponseErrorEnum._(r'USER_ADMIN_UNKNOWN_USER');
  static const USER_ADMIN_ALREADY_EXISTS = AdminEditUser400ResponseErrorEnum._(r'USER_ADMIN_ALREADY_EXISTS');
  static const ERROR_FEATURE_NOT_AVAILABLE = AdminEditUser400ResponseErrorEnum._(r'ERROR_FEATURE_NOT_AVAILABLE');

  /// List of all possible values in this [enum][AdminEditUser400ResponseErrorEnum].
  static const values = <AdminEditUser400ResponseErrorEnum>[
    ERROR_REQUEST_BODY_VALIDATION,
    USER_ADMIN_CANNOT_DEACTIVATE_SELF,
    USER_ADMIN_UNKNOWN_USER,
    USER_ADMIN_ALREADY_EXISTS,
    ERROR_FEATURE_NOT_AVAILABLE,
  ];

  static AdminEditUser400ResponseErrorEnum? fromJson(dynamic value) => AdminEditUser400ResponseErrorEnumTypeTransformer().decode(value);

  static List<AdminEditUser400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminEditUser400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminEditUser400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AdminEditUser400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [AdminEditUser400ResponseErrorEnum].
class AdminEditUser400ResponseErrorEnumTypeTransformer {
  factory AdminEditUser400ResponseErrorEnumTypeTransformer() => _instance ??= const AdminEditUser400ResponseErrorEnumTypeTransformer._();

  const AdminEditUser400ResponseErrorEnumTypeTransformer._();

  String encode(AdminEditUser400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AdminEditUser400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AdminEditUser400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_REQUEST_BODY_VALIDATION': return AdminEditUser400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        case r'USER_ADMIN_CANNOT_DEACTIVATE_SELF': return AdminEditUser400ResponseErrorEnum.USER_ADMIN_CANNOT_DEACTIVATE_SELF;
        case r'USER_ADMIN_UNKNOWN_USER': return AdminEditUser400ResponseErrorEnum.USER_ADMIN_UNKNOWN_USER;
        case r'USER_ADMIN_ALREADY_EXISTS': return AdminEditUser400ResponseErrorEnum.USER_ADMIN_ALREADY_EXISTS;
        case r'ERROR_FEATURE_NOT_AVAILABLE': return AdminEditUser400ResponseErrorEnum.ERROR_FEATURE_NOT_AVAILABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AdminEditUser400ResponseErrorEnumTypeTransformer] instance.
  static AdminEditUser400ResponseErrorEnumTypeTransformer? _instance;
}


