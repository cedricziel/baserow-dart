//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DeleteWorkspace400Response {
  /// Returns a new [DeleteWorkspace400Response] instance.
  DeleteWorkspace400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  DeleteWorkspace400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteWorkspace400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'DeleteWorkspace400Response[error=$error, detail=$detail]';

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

  /// Returns a new [DeleteWorkspace400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteWorkspace400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeleteWorkspace400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeleteWorkspace400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeleteWorkspace400Response(
        error: DeleteWorkspace400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<DeleteWorkspace400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteWorkspace400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteWorkspace400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteWorkspace400Response> mapFromJson(dynamic json) {
    final map = <String, DeleteWorkspace400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteWorkspace400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteWorkspace400Response-objects as value to a dart map
  static Map<String, List<DeleteWorkspace400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteWorkspace400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteWorkspace400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class DeleteWorkspace400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const DeleteWorkspace400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = DeleteWorkspace400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_REQUEST_BODY_VALIDATION = DeleteWorkspace400ResponseErrorEnum._(r'ERROR_REQUEST_BODY_VALIDATION');
  static const ERROR_USER_INVALID_GROUP_PERMISSIONS = DeleteWorkspace400ResponseErrorEnum._(r'ERROR_USER_INVALID_GROUP_PERMISSIONS');
  static const ERROR_CANNOT_DELETE_ALREADY_DELETED_ITEM = DeleteWorkspace400ResponseErrorEnum._(r'ERROR_CANNOT_DELETE_ALREADY_DELETED_ITEM');

  /// List of all possible values in this [enum][DeleteWorkspace400ResponseErrorEnum].
  static const values = <DeleteWorkspace400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_REQUEST_BODY_VALIDATION,
    ERROR_USER_INVALID_GROUP_PERMISSIONS,
    ERROR_CANNOT_DELETE_ALREADY_DELETED_ITEM,
  ];

  static DeleteWorkspace400ResponseErrorEnum? fromJson(dynamic value) => DeleteWorkspace400ResponseErrorEnumTypeTransformer().decode(value);

  static List<DeleteWorkspace400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteWorkspace400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteWorkspace400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeleteWorkspace400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [DeleteWorkspace400ResponseErrorEnum].
class DeleteWorkspace400ResponseErrorEnumTypeTransformer {
  factory DeleteWorkspace400ResponseErrorEnumTypeTransformer() => _instance ??= const DeleteWorkspace400ResponseErrorEnumTypeTransformer._();

  const DeleteWorkspace400ResponseErrorEnumTypeTransformer._();

  String encode(DeleteWorkspace400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeleteWorkspace400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeleteWorkspace400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return DeleteWorkspace400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_REQUEST_BODY_VALIDATION': return DeleteWorkspace400ResponseErrorEnum.ERROR_REQUEST_BODY_VALIDATION;
        case r'ERROR_USER_INVALID_GROUP_PERMISSIONS': return DeleteWorkspace400ResponseErrorEnum.ERROR_USER_INVALID_GROUP_PERMISSIONS;
        case r'ERROR_CANNOT_DELETE_ALREADY_DELETED_ITEM': return DeleteWorkspace400ResponseErrorEnum.ERROR_CANNOT_DELETE_ALREADY_DELETED_ITEM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeleteWorkspace400ResponseErrorEnumTypeTransformer] instance.
  static DeleteWorkspace400ResponseErrorEnumTypeTransformer? _instance;
}


