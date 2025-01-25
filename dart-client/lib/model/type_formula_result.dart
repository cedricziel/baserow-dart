//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TypeFormulaResult {
  /// Returns a new [TypeFormulaResult] instance.
  TypeFormulaResult({
    this.error,
    this.dateShowTzinfo,
    this.selectOptions = const [],
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
    required this.formula,
    this.formulaType,
  });

  String? error;

  /// Indicates if the time zone should be shown.
  bool? dateShowTzinfo;

  List<int> selectOptions;

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

  String formula;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormulaTypeEnum? formulaType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypeFormulaResult &&
    other.error == error &&
    other.dateShowTzinfo == dateShowTzinfo &&
    _deepEquality.equals(other.selectOptions, selectOptions) &&
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
    other.formula == formula &&
    other.formulaType == formulaType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (dateShowTzinfo == null ? 0 : dateShowTzinfo!.hashCode) +
    (selectOptions.hashCode) +
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
    (formula.hashCode) +
    (formulaType == null ? 0 : formulaType!.hashCode);

  @override
  String toString() => 'TypeFormulaResult[error=$error, dateShowTzinfo=$dateShowTzinfo, selectOptions=$selectOptions, dateFormat=$dateFormat, numberSeparator=$numberSeparator, arrayFormulaType=$arrayFormulaType, durationFormat=$durationFormat, nullable=$nullable, dateTimeFormat=$dateTimeFormat, dateForceTimezone=$dateForceTimezone, numberDecimalPlaces=$numberDecimalPlaces, numberPrefix=$numberPrefix, dateIncludeTime=$dateIncludeTime, numberSuffix=$numberSuffix, formula=$formula, formulaType=$formulaType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.dateShowTzinfo != null) {
      json[r'date_show_tzinfo'] = this.dateShowTzinfo;
    } else {
      json[r'date_show_tzinfo'] = null;
    }
      json[r'select_options'] = this.selectOptions;
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
      json[r'formula'] = this.formula;
    if (this.formulaType != null) {
      json[r'formula_type'] = this.formulaType;
    } else {
      json[r'formula_type'] = null;
    }
    return json;
  }

  /// Returns a new [TypeFormulaResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypeFormulaResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TypeFormulaResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TypeFormulaResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TypeFormulaResult(
        error: mapValueOfType<String>(json, r'error'),
        dateShowTzinfo: mapValueOfType<bool>(json, r'date_show_tzinfo'),
        selectOptions: json[r'select_options'] is Iterable
            ? (json[r'select_options'] as Iterable).cast<int>().toList(growable: false)
            : const [],
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
        formula: mapValueOfType<String>(json, r'formula')!,
        formulaType: FormulaTypeEnum.fromJson(json[r'formula_type']),
      );
    }
    return null;
  }

  static List<TypeFormulaResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeFormulaResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeFormulaResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypeFormulaResult> mapFromJson(dynamic json) {
    final map = <String, TypeFormulaResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypeFormulaResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypeFormulaResult-objects as value to a dart map
  static Map<String, List<TypeFormulaResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TypeFormulaResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypeFormulaResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'select_options',
    'nullable',
    'formula',
  };
}

