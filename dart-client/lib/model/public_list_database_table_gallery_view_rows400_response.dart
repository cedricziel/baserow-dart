//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicListDatabaseTableGalleryViewRows400Response {
  /// Returns a new [PublicListDatabaseTableGalleryViewRows400Response] instance.
  PublicListDatabaseTableGalleryViewRows400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicListDatabaseTableGalleryViewRows400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'PublicListDatabaseTableGalleryViewRows400Response[error=$error, detail=$detail]';

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

  /// Returns a new [PublicListDatabaseTableGalleryViewRows400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicListDatabaseTableGalleryViewRows400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicListDatabaseTableGalleryViewRows400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicListDatabaseTableGalleryViewRows400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicListDatabaseTableGalleryViewRows400Response(
        error: PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<PublicListDatabaseTableGalleryViewRows400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicListDatabaseTableGalleryViewRows400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicListDatabaseTableGalleryViewRows400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicListDatabaseTableGalleryViewRows400Response> mapFromJson(dynamic json) {
    final map = <String, PublicListDatabaseTableGalleryViewRows400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicListDatabaseTableGalleryViewRows400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicListDatabaseTableGalleryViewRows400Response-objects as value to a dart map
  static Map<String, List<PublicListDatabaseTableGalleryViewRows400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicListDatabaseTableGalleryViewRows400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicListDatabaseTableGalleryViewRows400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_FILTER_FIELD_NOT_FOUND = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(r'ERROR_FILTER_FIELD_NOT_FOUND');
  static const ERROR_VIEW_FILTER_TYPE_DOES_NOT_EXIST = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(r'ERROR_VIEW_FILTER_TYPE_DOES_NOT_EXIST');
  static const ERROR_VIEW_FILTER_TYPE_UNSUPPORTED_FIELD = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(r'ERROR_VIEW_FILTER_TYPE_UNSUPPORTED_FIELD');
  static const ERROR_FILTERS_PARAM_VALIDATION_ERROR = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum._(r'ERROR_FILTERS_PARAM_VALIDATION_ERROR');

  /// List of all possible values in this [enum][PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum].
  static const values = <PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_FILTER_FIELD_NOT_FOUND,
    ERROR_VIEW_FILTER_TYPE_DOES_NOT_EXIST,
    ERROR_VIEW_FILTER_TYPE_UNSUPPORTED_FIELD,
    ERROR_FILTERS_PARAM_VALIDATION_ERROR,
  ];

  static PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum? fromJson(dynamic value) => PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer().decode(value);

  static List<PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum].
class PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer {
  factory PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer() => _instance ??= const PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer._();

  const PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer._();

  String encode(PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_FILTER_FIELD_NOT_FOUND': return PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.ERROR_FILTER_FIELD_NOT_FOUND;
        case r'ERROR_VIEW_FILTER_TYPE_DOES_NOT_EXIST': return PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.ERROR_VIEW_FILTER_TYPE_DOES_NOT_EXIST;
        case r'ERROR_VIEW_FILTER_TYPE_UNSUPPORTED_FIELD': return PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.ERROR_VIEW_FILTER_TYPE_UNSUPPORTED_FIELD;
        case r'ERROR_FILTERS_PARAM_VALIDATION_ERROR': return PublicListDatabaseTableGalleryViewRows400ResponseErrorEnum.ERROR_FILTERS_PARAM_VALIDATION_ERROR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer] instance.
  static PublicListDatabaseTableGalleryViewRows400ResponseErrorEnumTypeTransformer? _instance;
}


