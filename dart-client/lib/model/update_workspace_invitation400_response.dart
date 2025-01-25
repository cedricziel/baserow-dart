//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UpdateWorkspaceInvitation400Response {
  /// Returns a new [UpdateWorkspaceInvitation400Response] instance.
  UpdateWorkspaceInvitation400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  UpdateWorkspaceInvitation400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateWorkspaceInvitation400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'UpdateWorkspaceInvitation400Response[error=$error, detail=$detail]';

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

  /// Returns a new [UpdateWorkspaceInvitation400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateWorkspaceInvitation400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateWorkspaceInvitation400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateWorkspaceInvitation400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateWorkspaceInvitation400Response(
        error: UpdateWorkspaceInvitation400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<UpdateWorkspaceInvitation400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateWorkspaceInvitation400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateWorkspaceInvitation400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateWorkspaceInvitation400Response> mapFromJson(dynamic json) {
    final map = <String, UpdateWorkspaceInvitation400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateWorkspaceInvitation400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateWorkspaceInvitation400Response-objects as value to a dart map
  static Map<String, List<UpdateWorkspaceInvitation400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateWorkspaceInvitation400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateWorkspaceInvitation400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class UpdateWorkspaceInvitation400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateWorkspaceInvitation400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = UpdateWorkspaceInvitation400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_USER_INVALID_GROUP_PERMISSIONS = UpdateWorkspaceInvitation400ResponseErrorEnum._(r'ERROR_USER_INVALID_GROUP_PERMISSIONS');
  static const ERROR_REQUEST_BODY_VALIDATION = UpdateWorkspaceInvitation400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');

  /// List of all possible values in this [enum][UpdateWorkspaceInvitation400ResponseErrorEnum].
  static const values = <UpdateWorkspaceInvitation400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_USER_INVALID_GROUP_PERMISSIONS,
    ERROR_REQUEST_BODY_VALIDATION,
  ];

  static UpdateWorkspaceInvitation400ResponseErrorEnum? fromJson(dynamic value) => UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer().decode(value);

  static List<UpdateWorkspaceInvitation400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateWorkspaceInvitation400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateWorkspaceInvitation400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateWorkspaceInvitation400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [UpdateWorkspaceInvitation400ResponseErrorEnum].
class UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer {
  factory UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer() => _instance ??= const UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer._();

  const UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer._();

  String encode(UpdateWorkspaceInvitation400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateWorkspaceInvitation400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateWorkspaceInvitation400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return UpdateWorkspaceInvitation400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_USER_INVALID_GROUP_PERMISSIONS': return UpdateWorkspaceInvitation400ResponseErrorEnum.ERROR_USER_INVALID_GROUP_PERMISSIONS;
        case r'ERROR_REQUEST_BODY_VALIDATION': return UpdateWorkspaceInvitation400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer] instance.
  static UpdateWorkspaceInvitation400ResponseErrorEnumTypeTransformer? _instance;
}


