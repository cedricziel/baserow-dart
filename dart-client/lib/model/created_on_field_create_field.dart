//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreatedOnFieldCreateField {
  /// Returns a new [CreatedOnFieldCreateField] instance.
  CreatedOnFieldCreateField({
    this.name,
    required this.type,
    this.description,
    this.dateFormat,
    this.dateIncludeTime,
    this.dateTimeFormat,
    this.dateShowTzinfo,
    this.dateForceTimezone,
    this.dateForceTimezoneOffset,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Type6ebEnum type;

  /// Field description
  String? description;

  /// EU (20/02/2020), US (02/20/2020) or ISO (2020-02-20)  * `EU` - European (D/M/Y) * `US` - US (M/D/Y) * `ISO` - ISO (Y-M-D)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateFormatEnum? dateFormat;

  /// Indicates if the field also includes a time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dateIncludeTime;

  /// 24 (14:30) or 12 (02:30 PM)  * `24` - 24 hour * `12` - 12 hour
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTimeFormatEnum? dateTimeFormat;

  /// Indicates if the timezone should be shown.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dateShowTzinfo;

  /// Force a timezone for the field overriding user profile settings.
  String? dateForceTimezone;

  /// ('A UTC offset in minutes to add to all the field datetimes values.',)
  int? dateForceTimezoneOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatedOnFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.dateFormat == dateFormat &&
    other.dateIncludeTime == dateIncludeTime &&
    other.dateTimeFormat == dateTimeFormat &&
    other.dateShowTzinfo == dateShowTzinfo &&
    other.dateForceTimezone == dateForceTimezone &&
    other.dateForceTimezoneOffset == dateForceTimezoneOffset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dateFormat == null ? 0 : dateFormat!.hashCode) +
    (dateIncludeTime == null ? 0 : dateIncludeTime!.hashCode) +
    (dateTimeFormat == null ? 0 : dateTimeFormat!.hashCode) +
    (dateShowTzinfo == null ? 0 : dateShowTzinfo!.hashCode) +
    (dateForceTimezone == null ? 0 : dateForceTimezone!.hashCode) +
    (dateForceTimezoneOffset == null ? 0 : dateForceTimezoneOffset!.hashCode);

  @override
  String toString() => 'CreatedOnFieldCreateField[name=$name, type=$type, description=$description, dateFormat=$dateFormat, dateIncludeTime=$dateIncludeTime, dateTimeFormat=$dateTimeFormat, dateShowTzinfo=$dateShowTzinfo, dateForceTimezone=$dateForceTimezone, dateForceTimezoneOffset=$dateForceTimezoneOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.dateFormat != null) {
      json[r'date_format'] = this.dateFormat;
    } else {
      json[r'date_format'] = null;
    }
    if (this.dateIncludeTime != null) {
      json[r'date_include_time'] = this.dateIncludeTime;
    } else {
      json[r'date_include_time'] = null;
    }
    if (this.dateTimeFormat != null) {
      json[r'date_time_format'] = this.dateTimeFormat;
    } else {
      json[r'date_time_format'] = null;
    }
    if (this.dateShowTzinfo != null) {
      json[r'date_show_tzinfo'] = this.dateShowTzinfo;
    } else {
      json[r'date_show_tzinfo'] = null;
    }
    if (this.dateForceTimezone != null) {
      json[r'date_force_timezone'] = this.dateForceTimezone;
    } else {
      json[r'date_force_timezone'] = null;
    }
    if (this.dateForceTimezoneOffset != null) {
      json[r'date_force_timezone_offset'] = this.dateForceTimezoneOffset;
    } else {
      json[r'date_force_timezone_offset'] = null;
    }
    return json;
  }

  /// Returns a new [CreatedOnFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatedOnFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatedOnFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatedOnFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatedOnFieldCreateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        dateFormat: DateFormatEnum.fromJson(json[r'date_format']),
        dateIncludeTime: mapValueOfType<bool>(json, r'date_include_time'),
        dateTimeFormat: DateTimeFormatEnum.fromJson(json[r'date_time_format']),
        dateShowTzinfo: mapValueOfType<bool>(json, r'date_show_tzinfo'),
        dateForceTimezone: mapValueOfType<String>(json, r'date_force_timezone'),
        dateForceTimezoneOffset: mapValueOfType<int>(json, r'date_force_timezone_offset'),
      );
    }
    return null;
  }

  static List<CreatedOnFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatedOnFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatedOnFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatedOnFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, CreatedOnFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatedOnFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatedOnFieldCreateField-objects as value to a dart map
  static Map<String, List<CreatedOnFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatedOnFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatedOnFieldCreateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

