//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RollupFieldFieldSerializerWithRelatedFields {
  /// Returns a new [RollupFieldFieldSerializerWithRelatedFields] instance.
  RollupFieldFieldSerializerWithRelatedFields({
    required this.id,
    required this.tableId,
    required this.name,
    required this.order,
    required this.type,
    this.primary,
    required this.readOnly,
    required this.immutableType,
    required this.immutableProperties,
    this.description,
    this.relatedFields = const [],
    this.error,
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
    this.targetFieldId,
    this.rollupFunction,
    this.formulaType,
  });

  int id;

  int tableId;

  String name;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  /// The type of the related field.
  String type;

  /// Indicates if the field is a primary field. If `true` the field cannot be deleted and the value should represent the whole row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? primary;

  /// Indicates whether the field is a read only field. If true, it's not possible to update the cell value.
  bool readOnly;

  /// Indicates whether the field type is immutable. If true, then it won't be possible to change the field type via the API.
  bool? immutableType;

  /// Indicates whether the field properties are immutable. If true, then it won't be possible to change the properties and the type via the API.
  bool? immutableProperties;

  /// Field description
  String? description;

  /// A list of related fields which also changed.
  List<Field> relatedFields;

  String? error;

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

  /// The id of the link row field to rollup values for.
  int? throughFieldId;

  /// The id of the field in the table linked to by the through_field to rollup.
  int? targetFieldId;

  /// The rollup formula function that must be applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rollupFunction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormulaTypeEnum? formulaType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RollupFieldFieldSerializerWithRelatedFields &&
    other.id == id &&
    other.tableId == tableId &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    other.primary == primary &&
    other.readOnly == readOnly &&
    other.immutableType == immutableType &&
    other.immutableProperties == immutableProperties &&
    other.description == description &&
    _deepEquality.equals(other.relatedFields, relatedFields) &&
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
    other.targetFieldId == targetFieldId &&
    other.rollupFunction == rollupFunction &&
    other.formulaType == formulaType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tableId.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (primary == null ? 0 : primary!.hashCode) +
    (readOnly.hashCode) +
    (immutableType == null ? 0 : immutableType!.hashCode) +
    (immutableProperties == null ? 0 : immutableProperties!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (relatedFields.hashCode) +
    (error == null ? 0 : error!.hashCode) +
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
    (targetFieldId == null ? 0 : targetFieldId!.hashCode) +
    (rollupFunction == null ? 0 : rollupFunction!.hashCode) +
    (formulaType == null ? 0 : formulaType!.hashCode);

  @override
  String toString() => 'RollupFieldFieldSerializerWithRelatedFields[id=$id, tableId=$tableId, name=$name, order=$order, type=$type, primary=$primary, readOnly=$readOnly, immutableType=$immutableType, immutableProperties=$immutableProperties, description=$description, relatedFields=$relatedFields, error=$error, dateShowTzinfo=$dateShowTzinfo, dateFormat=$dateFormat, numberSeparator=$numberSeparator, arrayFormulaType=$arrayFormulaType, durationFormat=$durationFormat, nullable=$nullable, dateTimeFormat=$dateTimeFormat, dateForceTimezone=$dateForceTimezone, numberDecimalPlaces=$numberDecimalPlaces, numberPrefix=$numberPrefix, dateIncludeTime=$dateIncludeTime, numberSuffix=$numberSuffix, throughFieldId=$throughFieldId, targetFieldId=$targetFieldId, rollupFunction=$rollupFunction, formulaType=$formulaType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'table_id'] = this.tableId;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
    if (this.primary != null) {
      json[r'primary'] = this.primary;
    } else {
      json[r'primary'] = null;
    }
      json[r'read_only'] = this.readOnly;
    if (this.immutableType != null) {
      json[r'immutable_type'] = this.immutableType;
    } else {
      json[r'immutable_type'] = null;
    }
    if (this.immutableProperties != null) {
      json[r'immutable_properties'] = this.immutableProperties;
    } else {
      json[r'immutable_properties'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'related_fields'] = this.relatedFields;
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
    if (this.targetFieldId != null) {
      json[r'target_field_id'] = this.targetFieldId;
    } else {
      json[r'target_field_id'] = null;
    }
    if (this.rollupFunction != null) {
      json[r'rollup_function'] = this.rollupFunction;
    } else {
      json[r'rollup_function'] = null;
    }
    if (this.formulaType != null) {
      json[r'formula_type'] = this.formulaType;
    } else {
      json[r'formula_type'] = null;
    }
    return json;
  }

  /// Returns a new [RollupFieldFieldSerializerWithRelatedFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RollupFieldFieldSerializerWithRelatedFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RollupFieldFieldSerializerWithRelatedFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RollupFieldFieldSerializerWithRelatedFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RollupFieldFieldSerializerWithRelatedFields(
        id: mapValueOfType<int>(json, r'id')!,
        tableId: mapValueOfType<int>(json, r'table_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        primary: mapValueOfType<bool>(json, r'primary'),
        readOnly: mapValueOfType<bool>(json, r'read_only')!,
        immutableType: mapValueOfType<bool>(json, r'immutable_type'),
        immutableProperties: mapValueOfType<bool>(json, r'immutable_properties'),
        description: mapValueOfType<String>(json, r'description'),
        relatedFields: Field.listFromJson(json[r'related_fields']),
        error: mapValueOfType<String>(json, r'error'),
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
        targetFieldId: mapValueOfType<int>(json, r'target_field_id'),
        rollupFunction: mapValueOfType<String>(json, r'rollup_function'),
        formulaType: FormulaTypeEnum.fromJson(json[r'formula_type']),
      );
    }
    return null;
  }

  static List<RollupFieldFieldSerializerWithRelatedFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RollupFieldFieldSerializerWithRelatedFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RollupFieldFieldSerializerWithRelatedFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RollupFieldFieldSerializerWithRelatedFields> mapFromJson(dynamic json) {
    final map = <String, RollupFieldFieldSerializerWithRelatedFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RollupFieldFieldSerializerWithRelatedFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RollupFieldFieldSerializerWithRelatedFields-objects as value to a dart map
  static Map<String, List<RollupFieldFieldSerializerWithRelatedFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RollupFieldFieldSerializerWithRelatedFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RollupFieldFieldSerializerWithRelatedFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'table_id',
    'name',
    'order',
    'type',
    'read_only',
    'immutable_type',
    'immutable_properties',
    'related_fields',
    'nullable',
  };
}

