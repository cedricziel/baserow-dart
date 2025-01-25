//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DatabaseTablePublicViewLinkRowFieldLookup401Response {
  /// Returns a new [DatabaseTablePublicViewLinkRowFieldLookup401Response] instance.
  DatabaseTablePublicViewLinkRowFieldLookup401Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DatabaseTablePublicViewLinkRowFieldLookup401Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'DatabaseTablePublicViewLinkRowFieldLookup401Response[error=$error, detail=$detail]';

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

  /// Returns a new [DatabaseTablePublicViewLinkRowFieldLookup401Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DatabaseTablePublicViewLinkRowFieldLookup401Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DatabaseTablePublicViewLinkRowFieldLookup401Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DatabaseTablePublicViewLinkRowFieldLookup401Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DatabaseTablePublicViewLinkRowFieldLookup401Response(
        error: DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<DatabaseTablePublicViewLinkRowFieldLookup401Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseTablePublicViewLinkRowFieldLookup401Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseTablePublicViewLinkRowFieldLookup401Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DatabaseTablePublicViewLinkRowFieldLookup401Response> mapFromJson(dynamic json) {
    final map = <String, DatabaseTablePublicViewLinkRowFieldLookup401Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DatabaseTablePublicViewLinkRowFieldLookup401Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DatabaseTablePublicViewLinkRowFieldLookup401Response-objects as value to a dart map
  static Map<String, List<DatabaseTablePublicViewLinkRowFieldLookup401Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DatabaseTablePublicViewLinkRowFieldLookup401Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DatabaseTablePublicViewLinkRowFieldLookup401Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_NO_AUTHORIZATION_TO_PUBLICLY_SHARED_VIEW = DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum._(r'ERROR_NO_AUTHORIZATION_TO_PUBLICLY_SHARED_VIEW');

  /// List of all possible values in this [enum][DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum].
  static const values = <DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum>[
    ERROR_NO_AUTHORIZATION_TO_PUBLICLY_SHARED_VIEW,
  ];

  static DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum? fromJson(dynamic value) => DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer().decode(value);

  static List<DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum].
class DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer {
  factory DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer() => _instance ??= const DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer._();

  const DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer._();

  String encode(DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_NO_AUTHORIZATION_TO_PUBLICLY_SHARED_VIEW': return DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnum.ERROR_NO_AUTHORIZATION_TO_PUBLICLY_SHARED_VIEW;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer] instance.
  static DatabaseTablePublicViewLinkRowFieldLookup401ResponseErrorEnumTypeTransformer? _instance;
}


