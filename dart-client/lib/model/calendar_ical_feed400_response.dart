//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CalendarIcalFeed400Response {
  /// Returns a new [CalendarIcalFeed400Response] instance.
  CalendarIcalFeed400Response({
    this.error,
    this.detail,
  });

  /// Machine readable error indicating what went wrong.
  CalendarIcalFeed400ResponseErrorEnum? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EmailTester400ResponseDetail? detail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarIcalFeed400Response &&
    other.error == error &&
    other.detail == detail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (detail == null ? 0 : detail!.hashCode);

  @override
  String toString() => 'CalendarIcalFeed400Response[error=$error, detail=$detail]';

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

  /// Returns a new [CalendarIcalFeed400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarIcalFeed400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarIcalFeed400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarIcalFeed400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarIcalFeed400Response(
        error: CalendarIcalFeed400ResponseErrorEnum.fromJson(json[r'error']),
        detail: EmailTester400ResponseDetail.fromJson(json[r'detail']),
      );
    }
    return null;
  }

  static List<CalendarIcalFeed400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarIcalFeed400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarIcalFeed400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarIcalFeed400Response> mapFromJson(dynamic json) {
    final map = <String, CalendarIcalFeed400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarIcalFeed400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarIcalFeed400Response-objects as value to a dart map
  static Map<String, List<CalendarIcalFeed400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarIcalFeed400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarIcalFeed400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Machine readable error indicating what went wrong.
class CalendarIcalFeed400ResponseErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const CalendarIcalFeed400ResponseErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ERROR_CALENDAR_VIEW_HAS_NO_DATE_FIELD = CalendarIcalFeed400ResponseErrorEnum._(r'ERROR_CALENDAR_VIEW_HAS_NO_DATE_FIELD');

  /// List of all possible values in this [enum][CalendarIcalFeed400ResponseErrorEnum].
  static const values = <CalendarIcalFeed400ResponseErrorEnum>[
    ERROR_CALENDAR_VIEW_HAS_NO_DATE_FIELD,
  ];

  static CalendarIcalFeed400ResponseErrorEnum? fromJson(dynamic value) => CalendarIcalFeed400ResponseErrorEnumTypeTransformer().decode(value);

  static List<CalendarIcalFeed400ResponseErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarIcalFeed400ResponseErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarIcalFeed400ResponseErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CalendarIcalFeed400ResponseErrorEnum] to String,
/// and [decode] dynamic data back to [CalendarIcalFeed400ResponseErrorEnum].
class CalendarIcalFeed400ResponseErrorEnumTypeTransformer {
  factory CalendarIcalFeed400ResponseErrorEnumTypeTransformer() => _instance ??= const CalendarIcalFeed400ResponseErrorEnumTypeTransformer._();

  const CalendarIcalFeed400ResponseErrorEnumTypeTransformer._();

  String encode(CalendarIcalFeed400ResponseErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CalendarIcalFeed400ResponseErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CalendarIcalFeed400ResponseErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ERROR_CALENDAR_VIEW_HAS_NO_DATE_FIELD': return CalendarIcalFeed400ResponseErrorEnum.ERROR_CALENDAR_VIEW_HAS_NO_DATE_FIELD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CalendarIcalFeed400ResponseErrorEnumTypeTransformer] instance.
  static CalendarIcalFeed400ResponseErrorEnumTypeTransformer? _instance;
}


