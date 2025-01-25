//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Restore400Response {
  /// Returns a new [Restore400Response] instance.
  Restore400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  Restore400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Restore400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'Restore400Response[error=$error, detail=$detail]';

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

  /// Returns a new [Restore400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Restore400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Restore400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Restore400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Restore400Response(
        error: Restore400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<Restore400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Restore400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Restore400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Restore400Response> mapFromJson(dynamic json) {
    final map = <String, Restore400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Restore400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Restore400Response-objects as value to a dart map
  static Map<String, List<Restore400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Restore400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Restore400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class Restore400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const Restore400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_USER_NOT_IN_GROUP = Restore400ResponseErrorEnum._(r'ERROR_USER_NOT_IN_GROUP');
  static const ERROR_TRASH_ITEM_DOES_NOT_EXIST = Restore400ResponseErrorEnum._(r'ERROR_TRASH_ITEM_DOES_NOT_EXIST');
  static const ERROR_CANNOT_RESTORE_PARENT_BEFORE_CHILD = Restore400ResponseErrorEnum._(r'ERROR_CANNOT_RESTORE_PARENT_BEFORE_CHILD');
  static const ERROR_PARENT_ID_MUST_NOT_BE_PROVIDED = Restore400ResponseErrorEnum._(r'ERROR_PARENT_ID_MUST_NOT_BE_PROVIDED');
  static const ERROR_PARENT_ID_MUST_BE_PROVIDED = Restore400ResponseErrorEnum._(r'ERROR_PARENT_ID_MUST_BE_PROVIDED');
  static const ERROR_CANT_RESTORE_AS_RELATED_TABLE_TRASHED = Restore400ResponseErrorEnum._(r'ERROR_CANT_RESTORE_AS_RELATED_TABLE_TRASHED');
  static const ERROR_CANNOT_RESTORE_ITEM_NOT_OWNED_BY_USER = Restore400ResponseErrorEnum._(r'ERROR_CANNOT_RESTORE_ITEM_NOT_OWNED_BY_USER');

  /// List of all possible values in this [enum][Restore400ResponseErrorEnum].
  static const values = <Restore400ResponseErrorEnum>[
    ERROR_USER_NOT_IN_GROUP,
    ERROR_TRASH_ITEM_DOES_NOT_EXIST,
    ERROR_CANNOT_RESTORE_PARENT_BEFORE_CHILD,
    ERROR_PARENT_ID_MUST_NOT_BE_PROVIDED,
    ERROR_PARENT_ID_MUST_BE_PROVIDED,
    ERROR_CANT_RESTORE_AS_RELATED_TABLE_TRASHED,
    ERROR_CANNOT_RESTORE_ITEM_NOT_OWNED_BY_USER,
  ];

  static Restore400ResponseErrorEnum? fromJson(dynamic value) => Restore400ResponseErrorEnumTypeTransformer().decode(value);

  static List<Restore400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Restore400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Restore400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Restore400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [Restore400ResponseErrorEnum].
class Restore400ResponseErrorEnumTypeTransformer {
  factory Restore400ResponseErrorEnumTypeTransformer() => _instance ??= const Restore400ResponseErrorEnumTypeTransformer._();

  const Restore400ResponseErrorEnumTypeTransformer._();

  String encode(Restore400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Restore400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Restore400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_USER_NOT_IN_GROUP': return Restore400ResponseErrorEnum.ERROR_USER_NOT_IN_GROUP;
        case r'ERROR_TRASH_ITEM_DOES_NOT_EXIST': return Restore400ResponseErrorEnum.ERROR_TRASH_ITEM_DOES_NOT_EXIST;
        case r'ERROR_CANNOT_RESTORE_PARENT_BEFORE_CHILD': return Restore400ResponseErrorEnum.ERROR_CANNOT_RESTORE_PARENT_BEFORE_CHILD;
        case r'ERROR_PARENT_ID_MUST_NOT_BE_PROVIDED': return Restore400ResponseErrorEnum.ERROR_PARENT_ID_MUST_NOT_BE_PROVIDED;
        case r'ERROR_PARENT_ID_MUST_BE_PROVIDED': return Restore400ResponseErrorEnum.ERROR_PARENT_ID_MUST_BE_PROVIDED;
        case r'ERROR_CANT_RESTORE_AS_RELATED_TABLE_TRASHED': return Restore400ResponseErrorEnum.ERROR_CANT_RESTORE_AS_RELATED_TABLE_TRASHED;
        case r'ERROR_CANNOT_RESTORE_ITEM_NOT_OWNED_BY_USER': return Restore400ResponseErrorEnum.ERROR_CANNOT_RESTORE_ITEM_NOT_OWNED_BY_USER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Restore400ResponseErrorEnumTypeTransformer] instance.
  static Restore400ResponseErrorEnumTypeTransformer? _instance;
}


