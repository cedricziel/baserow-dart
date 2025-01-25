//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FieldFieldSerializerWithRelatedFields {
  /// Returns a new [FieldFieldSerializerWithRelatedFields] instance.
  FieldFieldSerializerWithRelatedFields({
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
    this.textDefault,
    this.longTextEnableRichText,
    this.numberDecimalPlaces,
    this.numberNegative,
    this.numberPrefix,
    this.numberSuffix,
    this.numberSeparator,
    this.maxValue,
    this.color,
    this.style,
    this.dateFormat,
    this.dateIncludeTime,
    this.dateTimeFormat,
    this.dateShowTzinfo,
    this.dateForceTimezone,
    this.durationFormat,
    this.linkRowTableId,
    required this.linkRowRelatedFieldId,
    this.linkRowTable,
    required this.linkRowRelatedField,
    this.linkRowLimitSelectionViewId,
    required this.linkRowTablePrimaryField,
    this.selectOptions = const [],
    required this.error,
    this.arrayFormulaType,
    required this.nullable,
    required this.formula,
    this.formulaType,
    this.throughFieldId,
    this.targetFieldId,
    this.rollupFunction,
    this.throughFieldName,
    this.targetFieldName,
    this.notifyUserWhenAdded,
    this.aiGenerativeAiType,
    this.aiGenerativeAiModel,
    this.aiOutputType,
    this.aiTemperature,
    this.aiPrompt = '',
    this.aiFileFieldId,
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

  /// If set, this value is going to be added every time a new row created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? textDefault;

  /// Enable rich text formatting for the field.
  bool? longTextEnableRichText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumberDecimalPlacesEnum? numberDecimalPlaces;

  /// Indicates if negative values are allowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? numberNegative;

  /// The prefix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberPrefix;

  /// The suffix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberSuffix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CountFieldCreateFieldNumberSeparator? numberSeparator;

  /// Maximum value the rating can take.
  ///
  /// Minimum value: 1
  /// Maximum value: 10
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxValue;

  /// Color of the symbols.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  /// Rating style. Allowed values: star, heart, thumbs-up, flag, smile.  * `star` - Star * `heart` - Heart * `thumbs-up` - Thumbs-up * `flag` - Flags * `smile` - Smile
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleEnum? style;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateFormatEnum? dateFormat;

  /// Indicates if the field also includes a time.
  bool? dateIncludeTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTimeFormatEnum? dateTimeFormat;

  /// Indicates if the time zone should be shown.
  bool? dateShowTzinfo;

  /// Force a timezone for the field overriding user profile settings.
  String? dateForceTimezone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationFormatEnum? durationFormat;

  /// The id of the linked table.
  int? linkRowTableId;

  /// The id of the related field.
  int? linkRowRelatedFieldId;

  /// (Deprecated) The id of the linked table.
  int? linkRowTable;

  /// (Deprecated) The id of the related field.
  int linkRowRelatedField;

  /// The ID of the view in the related table where row selection must be limited to.
  int? linkRowLimitSelectionViewId;

  /// The primary field of the table that is linked to.
  String linkRowTablePrimaryField;

  List<SelectOption> selectOptions;

  String error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ArrayFormulaTypeEnum? arrayFormulaType;

  bool nullable;

  String formula;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FormulaTypeEnum? formulaType;

  /// The id of the link row field to lookup values for. Will override the `through_field_name` parameter if both are provided, however only one is required.
  int? throughFieldId;

  /// The id of the field in the table linked to by the through_field to lookup. Will override the `target_field_id` parameter if both are provided, however only one is required.
  int? targetFieldId;

  /// The rollup formula function that must be applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rollupFunction;

  /// The name of the link row field to lookup values for.
  String? throughFieldName;

  /// The name of the field in the table linked to by the through_field to lookup.
  String? targetFieldName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? notifyUserWhenAdded;

  String? aiGenerativeAiType;

  String? aiGenerativeAiModel;

  /// The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiOutputTypeEnum? aiOutputType;

  /// Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity.
  ///
  /// Minimum value: 0
  /// Maximum value: 2
  double? aiTemperature;

  /// The prompt that must run for each row. Must be an formula.
  String aiPrompt;

  /// File field that will be used as a knowledge base for the AI model.
  ///
  /// Minimum value: 1
  int? aiFileFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FieldFieldSerializerWithRelatedFields &&
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
    other.textDefault == textDefault &&
    other.longTextEnableRichText == longTextEnableRichText &&
    other.numberDecimalPlaces == numberDecimalPlaces &&
    other.numberNegative == numberNegative &&
    other.numberPrefix == numberPrefix &&
    other.numberSuffix == numberSuffix &&
    other.numberSeparator == numberSeparator &&
    other.maxValue == maxValue &&
    other.color == color &&
    other.style == style &&
    other.dateFormat == dateFormat &&
    other.dateIncludeTime == dateIncludeTime &&
    other.dateTimeFormat == dateTimeFormat &&
    other.dateShowTzinfo == dateShowTzinfo &&
    other.dateForceTimezone == dateForceTimezone &&
    other.durationFormat == durationFormat &&
    other.linkRowTableId == linkRowTableId &&
    other.linkRowRelatedFieldId == linkRowRelatedFieldId &&
    other.linkRowTable == linkRowTable &&
    other.linkRowRelatedField == linkRowRelatedField &&
    other.linkRowLimitSelectionViewId == linkRowLimitSelectionViewId &&
    other.linkRowTablePrimaryField == linkRowTablePrimaryField &&
    _deepEquality.equals(other.selectOptions, selectOptions) &&
    other.error == error &&
    other.arrayFormulaType == arrayFormulaType &&
    other.nullable == nullable &&
    other.formula == formula &&
    other.formulaType == formulaType &&
    other.throughFieldId == throughFieldId &&
    other.targetFieldId == targetFieldId &&
    other.rollupFunction == rollupFunction &&
    other.throughFieldName == throughFieldName &&
    other.targetFieldName == targetFieldName &&
    other.notifyUserWhenAdded == notifyUserWhenAdded &&
    other.aiGenerativeAiType == aiGenerativeAiType &&
    other.aiGenerativeAiModel == aiGenerativeAiModel &&
    other.aiOutputType == aiOutputType &&
    other.aiTemperature == aiTemperature &&
    other.aiPrompt == aiPrompt &&
    other.aiFileFieldId == aiFileFieldId;

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
    (textDefault == null ? 0 : textDefault!.hashCode) +
    (longTextEnableRichText == null ? 0 : longTextEnableRichText!.hashCode) +
    (numberDecimalPlaces == null ? 0 : numberDecimalPlaces!.hashCode) +
    (numberNegative == null ? 0 : numberNegative!.hashCode) +
    (numberPrefix == null ? 0 : numberPrefix!.hashCode) +
    (numberSuffix == null ? 0 : numberSuffix!.hashCode) +
    (numberSeparator == null ? 0 : numberSeparator!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (style == null ? 0 : style!.hashCode) +
    (dateFormat == null ? 0 : dateFormat!.hashCode) +
    (dateIncludeTime == null ? 0 : dateIncludeTime!.hashCode) +
    (dateTimeFormat == null ? 0 : dateTimeFormat!.hashCode) +
    (dateShowTzinfo == null ? 0 : dateShowTzinfo!.hashCode) +
    (dateForceTimezone == null ? 0 : dateForceTimezone!.hashCode) +
    (durationFormat == null ? 0 : durationFormat!.hashCode) +
    (linkRowTableId == null ? 0 : linkRowTableId!.hashCode) +
    (linkRowRelatedFieldId == null ? 0 : linkRowRelatedFieldId!.hashCode) +
    (linkRowTable == null ? 0 : linkRowTable!.hashCode) +
    (linkRowRelatedField.hashCode) +
    (linkRowLimitSelectionViewId == null ? 0 : linkRowLimitSelectionViewId!.hashCode) +
    (linkRowTablePrimaryField.hashCode) +
    (selectOptions.hashCode) +
    (error.hashCode) +
    (arrayFormulaType == null ? 0 : arrayFormulaType!.hashCode) +
    (nullable.hashCode) +
    (formula.hashCode) +
    (formulaType == null ? 0 : formulaType!.hashCode) +
    (throughFieldId == null ? 0 : throughFieldId!.hashCode) +
    (targetFieldId == null ? 0 : targetFieldId!.hashCode) +
    (rollupFunction == null ? 0 : rollupFunction!.hashCode) +
    (throughFieldName == null ? 0 : throughFieldName!.hashCode) +
    (targetFieldName == null ? 0 : targetFieldName!.hashCode) +
    (notifyUserWhenAdded == null ? 0 : notifyUserWhenAdded!.hashCode) +
    (aiGenerativeAiType == null ? 0 : aiGenerativeAiType!.hashCode) +
    (aiGenerativeAiModel == null ? 0 : aiGenerativeAiModel!.hashCode) +
    (aiOutputType == null ? 0 : aiOutputType!.hashCode) +
    (aiTemperature == null ? 0 : aiTemperature!.hashCode) +
    (aiPrompt.hashCode) +
    (aiFileFieldId == null ? 0 : aiFileFieldId!.hashCode);

  @override
  String toString() => 'FieldFieldSerializerWithRelatedFields[id=$id, tableId=$tableId, name=$name, order=$order, type=$type, primary=$primary, readOnly=$readOnly, immutableType=$immutableType, immutableProperties=$immutableProperties, description=$description, relatedFields=$relatedFields, textDefault=$textDefault, longTextEnableRichText=$longTextEnableRichText, numberDecimalPlaces=$numberDecimalPlaces, numberNegative=$numberNegative, numberPrefix=$numberPrefix, numberSuffix=$numberSuffix, numberSeparator=$numberSeparator, maxValue=$maxValue, color=$color, style=$style, dateFormat=$dateFormat, dateIncludeTime=$dateIncludeTime, dateTimeFormat=$dateTimeFormat, dateShowTzinfo=$dateShowTzinfo, dateForceTimezone=$dateForceTimezone, durationFormat=$durationFormat, linkRowTableId=$linkRowTableId, linkRowRelatedFieldId=$linkRowRelatedFieldId, linkRowTable=$linkRowTable, linkRowRelatedField=$linkRowRelatedField, linkRowLimitSelectionViewId=$linkRowLimitSelectionViewId, linkRowTablePrimaryField=$linkRowTablePrimaryField, selectOptions=$selectOptions, error=$error, arrayFormulaType=$arrayFormulaType, nullable=$nullable, formula=$formula, formulaType=$formulaType, throughFieldId=$throughFieldId, targetFieldId=$targetFieldId, rollupFunction=$rollupFunction, throughFieldName=$throughFieldName, targetFieldName=$targetFieldName, notifyUserWhenAdded=$notifyUserWhenAdded, aiGenerativeAiType=$aiGenerativeAiType, aiGenerativeAiModel=$aiGenerativeAiModel, aiOutputType=$aiOutputType, aiTemperature=$aiTemperature, aiPrompt=$aiPrompt, aiFileFieldId=$aiFileFieldId]';

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
    if (this.textDefault != null) {
      json[r'text_default'] = this.textDefault;
    } else {
      json[r'text_default'] = null;
    }
    if (this.longTextEnableRichText != null) {
      json[r'long_text_enable_rich_text'] = this.longTextEnableRichText;
    } else {
      json[r'long_text_enable_rich_text'] = null;
    }
    if (this.numberDecimalPlaces != null) {
      json[r'number_decimal_places'] = this.numberDecimalPlaces;
    } else {
      json[r'number_decimal_places'] = null;
    }
    if (this.numberNegative != null) {
      json[r'number_negative'] = this.numberNegative;
    } else {
      json[r'number_negative'] = null;
    }
    if (this.numberPrefix != null) {
      json[r'number_prefix'] = this.numberPrefix;
    } else {
      json[r'number_prefix'] = null;
    }
    if (this.numberSuffix != null) {
      json[r'number_suffix'] = this.numberSuffix;
    } else {
      json[r'number_suffix'] = null;
    }
    if (this.numberSeparator != null) {
      json[r'number_separator'] = this.numberSeparator;
    } else {
      json[r'number_separator'] = null;
    }
    if (this.maxValue != null) {
      json[r'max_value'] = this.maxValue;
    } else {
      json[r'max_value'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.style != null) {
      json[r'style'] = this.style;
    } else {
      json[r'style'] = null;
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
    if (this.durationFormat != null) {
      json[r'duration_format'] = this.durationFormat;
    } else {
      json[r'duration_format'] = null;
    }
    if (this.linkRowTableId != null) {
      json[r'link_row_table_id'] = this.linkRowTableId;
    } else {
      json[r'link_row_table_id'] = null;
    }
    if (this.linkRowRelatedFieldId != null) {
      json[r'link_row_related_field_id'] = this.linkRowRelatedFieldId;
    } else {
      json[r'link_row_related_field_id'] = null;
    }
    if (this.linkRowTable != null) {
      json[r'link_row_table'] = this.linkRowTable;
    } else {
      json[r'link_row_table'] = null;
    }
      json[r'link_row_related_field'] = this.linkRowRelatedField;
    if (this.linkRowLimitSelectionViewId != null) {
      json[r'link_row_limit_selection_view_id'] = this.linkRowLimitSelectionViewId;
    } else {
      json[r'link_row_limit_selection_view_id'] = null;
    }
      json[r'link_row_table_primary_field'] = this.linkRowTablePrimaryField;
      json[r'select_options'] = this.selectOptions;
      json[r'error'] = this.error;
    if (this.arrayFormulaType != null) {
      json[r'array_formula_type'] = this.arrayFormulaType;
    } else {
      json[r'array_formula_type'] = null;
    }
      json[r'nullable'] = this.nullable;
      json[r'formula'] = this.formula;
    if (this.formulaType != null) {
      json[r'formula_type'] = this.formulaType;
    } else {
      json[r'formula_type'] = null;
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
    if (this.throughFieldName != null) {
      json[r'through_field_name'] = this.throughFieldName;
    } else {
      json[r'through_field_name'] = null;
    }
    if (this.targetFieldName != null) {
      json[r'target_field_name'] = this.targetFieldName;
    } else {
      json[r'target_field_name'] = null;
    }
    if (this.notifyUserWhenAdded != null) {
      json[r'notify_user_when_added'] = this.notifyUserWhenAdded;
    } else {
      json[r'notify_user_when_added'] = null;
    }
    if (this.aiGenerativeAiType != null) {
      json[r'ai_generative_ai_type'] = this.aiGenerativeAiType;
    } else {
      json[r'ai_generative_ai_type'] = null;
    }
    if (this.aiGenerativeAiModel != null) {
      json[r'ai_generative_ai_model'] = this.aiGenerativeAiModel;
    } else {
      json[r'ai_generative_ai_model'] = null;
    }
    if (this.aiOutputType != null) {
      json[r'ai_output_type'] = this.aiOutputType;
    } else {
      json[r'ai_output_type'] = null;
    }
    if (this.aiTemperature != null) {
      json[r'ai_temperature'] = this.aiTemperature;
    } else {
      json[r'ai_temperature'] = null;
    }
      json[r'ai_prompt'] = this.aiPrompt;
    if (this.aiFileFieldId != null) {
      json[r'ai_file_field_id'] = this.aiFileFieldId;
    } else {
      json[r'ai_file_field_id'] = null;
    }
    return json;
  }

  /// Returns a new [FieldFieldSerializerWithRelatedFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FieldFieldSerializerWithRelatedFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FieldFieldSerializerWithRelatedFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FieldFieldSerializerWithRelatedFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FieldFieldSerializerWithRelatedFields(
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
        textDefault: mapValueOfType<String>(json, r'text_default'),
        longTextEnableRichText: mapValueOfType<bool>(json, r'long_text_enable_rich_text'),
        numberDecimalPlaces: NumberDecimalPlacesEnum.fromJson(json[r'number_decimal_places']),
        numberNegative: mapValueOfType<bool>(json, r'number_negative'),
        numberPrefix: mapValueOfType<String>(json, r'number_prefix'),
        numberSuffix: mapValueOfType<String>(json, r'number_suffix'),
        numberSeparator: CountFieldCreateFieldNumberSeparator.fromJson(json[r'number_separator']),
        maxValue: mapValueOfType<int>(json, r'max_value'),
        color: mapValueOfType<String>(json, r'color'),
        style: StyleEnum.fromJson(json[r'style']),
        dateFormat: DateFormatEnum.fromJson(json[r'date_format']),
        dateIncludeTime: mapValueOfType<bool>(json, r'date_include_time'),
        dateTimeFormat: DateTimeFormatEnum.fromJson(json[r'date_time_format']),
        dateShowTzinfo: mapValueOfType<bool>(json, r'date_show_tzinfo'),
        dateForceTimezone: mapValueOfType<String>(json, r'date_force_timezone'),
        durationFormat: DurationFormatEnum.fromJson(json[r'duration_format']),
        linkRowTableId: mapValueOfType<int>(json, r'link_row_table_id'),
        linkRowRelatedFieldId: mapValueOfType<int>(json, r'link_row_related_field_id'),
        linkRowTable: mapValueOfType<int>(json, r'link_row_table'),
        linkRowRelatedField: mapValueOfType<int>(json, r'link_row_related_field')!,
        linkRowLimitSelectionViewId: mapValueOfType<int>(json, r'link_row_limit_selection_view_id'),
        linkRowTablePrimaryField: mapValueOfType<String>(json, r'link_row_table_primary_field')!,
        selectOptions: SelectOption.listFromJson(json[r'select_options']),
        error: mapValueOfType<String>(json, r'error')!,
        arrayFormulaType: ArrayFormulaTypeEnum.fromJson(json[r'array_formula_type']),
        nullable: mapValueOfType<bool>(json, r'nullable')!,
        formula: mapValueOfType<String>(json, r'formula')!,
        formulaType: FormulaTypeEnum.fromJson(json[r'formula_type']),
        throughFieldId: mapValueOfType<int>(json, r'through_field_id'),
        targetFieldId: mapValueOfType<int>(json, r'target_field_id'),
        rollupFunction: mapValueOfType<String>(json, r'rollup_function'),
        throughFieldName: mapValueOfType<String>(json, r'through_field_name'),
        targetFieldName: mapValueOfType<String>(json, r'target_field_name'),
        notifyUserWhenAdded: mapValueOfType<bool>(json, r'notify_user_when_added'),
        aiGenerativeAiType: mapValueOfType<String>(json, r'ai_generative_ai_type'),
        aiGenerativeAiModel: mapValueOfType<String>(json, r'ai_generative_ai_model'),
        aiOutputType: AiOutputTypeEnum.fromJson(json[r'ai_output_type']),
        aiTemperature: mapValueOfType<double>(json, r'ai_temperature'),
        aiPrompt: mapValueOfType<String>(json, r'ai_prompt') ?? '',
        aiFileFieldId: mapValueOfType<int>(json, r'ai_file_field_id'),
      );
    }
    return null;
  }

  static List<FieldFieldSerializerWithRelatedFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FieldFieldSerializerWithRelatedFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FieldFieldSerializerWithRelatedFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FieldFieldSerializerWithRelatedFields> mapFromJson(dynamic json) {
    final map = <String, FieldFieldSerializerWithRelatedFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FieldFieldSerializerWithRelatedFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FieldFieldSerializerWithRelatedFields-objects as value to a dart map
  static Map<String, List<FieldFieldSerializerWithRelatedFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FieldFieldSerializerWithRelatedFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FieldFieldSerializerWithRelatedFields.listFromJson(entry.value, growable: growable,);
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
    'link_row_related_field_id',
    'link_row_related_field',
    'link_row_table_primary_field',
    'select_options',
    'error',
    'nullable',
    'formula',
  };
}

