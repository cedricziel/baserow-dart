//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AdminRegisterLicense400Response {
  /// Returns a new [AdminRegisterLicense400Response] instance.
  AdminRegisterLicense400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  AdminRegisterLicense400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminRegisterLicense400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'AdminRegisterLicense400Response[error=$error, detail=$detail]';

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

  /// Returns a new [AdminRegisterLicense400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminRegisterLicense400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminRegisterLicense400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminRegisterLicense400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminRegisterLicense400Response(
        error: AdminRegisterLicense400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<AdminRegisterLicense400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminRegisterLicense400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminRegisterLicense400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminRegisterLicense400Response> mapFromJson(dynamic json) {
    final map = <String, AdminRegisterLicense400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminRegisterLicense400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminRegisterLicense400Response-objects as value to a dart map
  static Map<String, List<AdminRegisterLicense400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminRegisterLicense400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminRegisterLicense400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class AdminRegisterLicense400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const AdminRegisterLicense400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_INVALID_LICENSE = AdminRegisterLicense400ResponseErrorEnum._(r'ERROR_INVALID_LICENSE');
  static const ERROR_UNSUPPORTED_LICENSE = AdminRegisterLicense400ResponseErrorEnum._(r'ERROR_UNSUPPORTED_LICENSE');
  static const ERROR_PREMIUM_LICENSE_INSTANCE_ID_MISMATCH = AdminRegisterLicense400ResponseErrorEnum._(r'ERROR_PREMIUM_LICENSE_INSTANCE_ID_MISMATCH');
  static const ERROR_LICENSE_HAS_EXPIRED = AdminRegisterLicense400ResponseErrorEnum._(r'ERROR_LICENSE_HAS_EXPIRED');
  static const ERROR_LICENSE_ALREADY_EXISTS = AdminRegisterLicense400ResponseErrorEnum._(r'ERROR_LICENSE_ALREADY_EXISTS');

  /// List of all possible values in this [enum][AdminRegisterLicense400ResponseErrorEnum].
  static const values = <AdminRegisterLicense400ResponseErrorEnum>[
    ERROR_INVALID_LICENSE,
    ERROR_UNSUPPORTED_LICENSE,
    ERROR_PREMIUM_LICENSE_INSTANCE_ID_MISMATCH,
    ERROR_LICENSE_HAS_EXPIRED,
    ERROR_LICENSE_ALREADY_EXISTS,
  ];

  static AdminRegisterLicense400ResponseErrorEnum? fromJson(dynamic value) => AdminRegisterLicense400ResponseErrorEnumTypeTransformer().decode(value);

  static List<AdminRegisterLicense400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminRegisterLicense400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminRegisterLicense400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AdminRegisterLicense400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [AdminRegisterLicense400ResponseErrorEnum].
class AdminRegisterLicense400ResponseErrorEnumTypeTransformer {
  factory AdminRegisterLicense400ResponseErrorEnumTypeTransformer() => _instance ??= const AdminRegisterLicense400ResponseErrorEnumTypeTransformer._();

  const AdminRegisterLicense400ResponseErrorEnumTypeTransformer._();

  String encode(AdminRegisterLicense400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AdminRegisterLicense400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AdminRegisterLicense400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_INVALID_LICENSE': return AdminRegisterLicense400ResponseErrorEnum.ERROR_INVALID_LICENSE;
        case r'ERROR_UNSUPPORTED_LICENSE': return AdminRegisterLicense400ResponseErrorEnum.ERROR_UNSUPPORTED_LICENSE;
        case r'ERROR_PREMIUM_LICENSE_INSTANCE_ID_MISMATCH': return AdminRegisterLicense400ResponseErrorEnum.ERROR_PREMIUM_LICENSE_INSTANCE_ID_MISMATCH;
        case r'ERROR_LICENSE_HAS_EXPIRED': return AdminRegisterLicense400ResponseErrorEnum.ERROR_LICENSE_HAS_EXPIRED;
        case r'ERROR_LICENSE_ALREADY_EXISTS': return AdminRegisterLicense400ResponseErrorEnum.ERROR_LICENSE_ALREADY_EXISTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AdminRegisterLicense400ResponseErrorEnumTypeTransformer] instance.
  static AdminRegisterLicense400ResponseErrorEnumTypeTransformer? _instance;
}


