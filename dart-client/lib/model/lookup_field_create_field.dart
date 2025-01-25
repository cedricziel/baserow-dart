//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LookupFieldCreateField {
  /// Returns a new [LookupFieldCreateField] instance.
  LookupFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    required this.error,
    this.dateShowTzinfo,
    this.dateFormat,
    this.numberSeparator,
    this.arrayFormulaType,
    this.durationFormat,
    required this.nullable,
    this.dateTimeFormat,
    this.dateForceTimezone,
    this.numberDecimalPlaces,
    this.numberPrefix,
    this.dateIncludeTime,
    this.numberSuffix,
    this.throughFieldId,
    this.throughFieldName,
    this.targetFieldId,
    this.targetFieldName,
    this.formulaType,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  String error;

  /// Indicates if the time zone should be shown.
  bool? dateShowTzinfo;

  DateFormatEnum? dateFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CountFieldCreateFieldNumberSeparator? numberSeparator;

  ArrayFormulaTypeEnum? arrayFormulaType;

  DurationFormatEnum? durationFormat;

  bool nullable;

  DateTimeFormatEnum? dateTimeFormat;

  /// Force a timezone for the field overriding user profile settings.
  String? dateForceTimezone;

  NumberDecimalPlacesEnum? numberDecimalPlaces;

  /// The prefix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberPrefix;

  /// Indicates if the field also includes a time.
  bool? dateIncludeTime;

  /// The suffix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberSuffix;

  /// The id of the link row field to lookup values for. Will override the `through_field_name` parameter if both are provided, however only one is required.
  int? throughFieldId;

  /// The name of the link row field to lookup values for.
  String? throughFieldName;

  /// The id of the field in the table linked to by the through_field to lookup. Will override the `target_field_id` parameter if both are provided, however only one is required.
  int? targetFieldId;

  /// The name of the field in the table linked to by the through_field to lookup.
  String? targetFieldName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormulaTypeEnum? formulaType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LookupFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.error == error &&
    other.dateShowTzinfo == dateShowTzinfo &&
    other.dateFormat == dateFormat &&
    other.numberSeparator == numberSeparator &&
    other.arrayFormulaType == arrayFormulaType &&
    other.durationFormat == durationFormat &&
    other.nullable == nullable &&
    other.dateTimeFormat == dateTimeFormat &&
    other.dateForceTimezone == dateForceTimezone &&
    other.numberDecimalPlaces == numberDecimalPlaces &&
    other.numberPrefix == numberPrefix &&
    other.dateIncludeTime == dateIncludeTime &&
    other.numberSuffix == numberSuffix &&
    other.throughFieldId == throughFieldId &&
    other.throughFieldName == throughFieldName &&
    other.targetFieldId == targetFieldId &&
    other.targetFieldName == targetFieldName &&
    other.formulaType == formulaType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (error.hashCode) +
    (dateShowTzinfo == null ? 0 : dateShowTzinfo!.hashCode) +
    (dateFormat == null ? 0 : dateFormat!.hashCode) +
    (numberSeparator == null ? 0 : numberSeparator!.hashCode) +
    (arrayFormulaType == null ? 0 : arrayFormulaType!.hashCode) +
    (durationFormat == null ? 0 : durationFormat!.hashCode) +
    (nullable.hashCode) +
    (dateTimeFormat == null ? 0 : dateTimeFormat!.hashCode) +
    (dateForceTimezone == null ? 0 : dateForceTimezone!.hashCode) +
    (numberDecimalPlaces == null ? 0 : numberDecimalPlaces!.hashCode) +
    (numberPrefix == null ? 0 : numberPrefix!.hashCode) +
    (dateIncludeTime == null ? 0 : dateIncludeTime!.hashCode) +
    (numberSuffix == null ? 0 : numberSuffix!.hashCode) +
    (throughFieldId == null ? 0 : throughFieldId!.hashCode) +
    (throughFieldName == null ? 0 : throughFieldName!.hashCode) +
    (targetFieldId == null ? 0 : targetFieldId!.hashCode) +
    (targetFieldName == null ? 0 : targetFieldName!.hashCode) +
    (formulaType == null ? 0 : formulaType!.hashCode);

  @override
  String toString() => 'LookupFieldCreateField[name=$name, type=$type, description=$description, error=$error, dateShowTzinfo=$dateShowTzinfo, dateFormat=$dateFormat, numberSeparator=$numberSeparator, arrayFormulaType=$arrayFormulaType, durationFormat=$durationFormat, nullable=$nullable, dateTimeFormat=$dateTimeFormat, dateForceTimezone=$dateForceTimezone, numberDecimalPlaces=$numberDecimalPlaces, numberPrefix=$numberPrefix, dateIncludeTime=$dateIncludeTime, numberSuffix=$numberSuffix, throughFieldId=$throughFieldId, throughFieldName=$throughFieldName, targetFieldId=$targetFieldId, targetFieldName=$targetFieldName, formulaType=$formulaType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'error'] = this.error;
    if (this.dateShowTzinfo != null) {
      json[r'date_show_tzinfo'] = this.dateShowTzinfo;
    } else {
      json[r'date_show_tzinfo'] = null;
    }
    if (this.dateFormat != null) {
      json[r'date_format'] = this.dateFormat;
    } else {
      json[r'date_format'] = null;
    }
    if (this.numberSeparator != null) {
      json[r'number_separator'] = this.numberSeparator;
    } else {
      json[r'number_separator'] = null;
    }
    if (this.arrayFormulaType != null) {
      json[r'array_formula_type'] = this.arrayFormulaType;
    } else {
      json[r'array_formula_type'] = null;
    }
    if (this.durationFormat != null) {
      json[r'duration_format'] = this.durationFormat;
    } else {
      json[r'duration_format'] = null;
    }
      json[r'nullable'] = this.nullable;
    if (this.dateTimeFormat != null) {
      json[r'date_time_format'] = this.dateTimeFormat;
    } else {
      json[r'date_time_format'] = null;
    }
    if (this.dateForceTimezone != null) {
      json[r'date_force_timezone'] = this.dateForceTimezone;
    } else {
      json[r'date_force_timezone'] = null;
    }
    if (this.numberDecimalPlaces != null) {
      json[r'number_decimal_places'] = this.numberDecimalPlaces;
    } else {
      json[r'number_decimal_places'] = null;
    }
    if (this.numberPrefix != null) {
      json[r'number_prefix'] = this.numberPrefix;
    } else {
      json[r'number_prefix'] = null;
    }
    if (this.dateIncludeTime != null) {
      json[r'date_include_time'] = this.dateIncludeTime;
    } else {
      json[r'date_include_time'] = null;
    }
    if (this.numberSuffix != null) {
      json[r'number_suffix'] = this.numberSuffix;
    } else {
      json[r'number_suffix'] = null;
    }
    if (this.throughFieldId != null) {
      json[r'through_field_id'] = this.throughFieldId;
    } else {
      json[r'through_field_id'] = null;
    }
    if (this.throughFieldName != null) {
      json[r'through_field_name'] = this.throughFieldName;
    } else {
      json[r'through_field_name'] = null;
    }
    if (this.targetFieldId != null) {
      json[r'target_field_id'] = this.targetFieldId;
    } else {
      json[r'target_field_id'] = null;
    }
    if (this.targetFieldName != null) {
      json[r'target_field_name'] = this.targetFieldName;
    } else {
      json[r'target_field_name'] = null;
    }
    if (this.formulaType != null) {
      json[r'formula_type'] = this.formulaType;
    } else {
      json[r'formula_type'] = null;
    }
    return json;
  }

  /// Returns a new [LookupFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LookupFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LookupFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LookupFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LookupFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        error: mapValueOfType<String>(json, r'error')!,
        dateShowTzinfo: mapValueOfType<bool>(json, r'date_show_tzinfo'),
        dateFormat: DateFormatEnum.fromJson(json[r'date_format']),
        numberSeparator: CountFieldCreateFieldNumberSeparator.fromJson(json[r'number_separator']),
        arrayFormulaType: ArrayFormulaTypeEnum.fromJson(json[r'array_formula_type']),
        durationFormat: DurationFormatEnum.fromJson(json[r'duration_format']),
        nullable: mapValueOfType<bool>(json, r'nullable')!,
        dateTimeFormat: DateTimeFormatEnum.fromJson(json[r'date_time_format']),
        dateForceTimezone: mapValueOfType<String>(json, r'date_force_timezone'),
        numberDecimalPlaces: NumberDecimalPlacesEnum.fromJson(json[r'number_decimal_places']),
        numberPrefix: mapValueOfType<String>(json, r'number_prefix'),
        dateIncludeTime: mapValueOfType<bool>(json, r'date_include_time'),
        numberSuffix: mapValueOfType<String>(json, r'number_suffix'),
        throughFieldId: mapValueOfType<int>(json, r'through_field_id'),
        throughFieldName: mapValueOfType<String>(json, r'through_field_name'),
        targetFieldId: mapValueOfType<int>(json, r'target_field_id'),
        targetFieldName: mapValueOfType<String>(json, r'target_field_name'),
        formulaType: FormulaTypeEnum.fromJson(json[r'formula_type']),
      );
    }
    return null;
  }

  static List<LookupFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LookupFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LookupFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LookupFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, LookupFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LookupFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LookupFieldCreateField-objects as value to a dart map
  static Map<String, List<LookupFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LookupFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LookupFieldCreateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
    'error',
    'nullable',
  };
}

