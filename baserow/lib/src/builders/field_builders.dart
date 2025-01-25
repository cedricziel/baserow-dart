import 'base_builders.dart';

/// Builder for rating field configuration
class RatingFieldBuilder extends FieldBuilder {
  RatingFieldBuilder(String name) : super(name, 'rating');

  RatingFieldBuilder withConfig({
    int maxValue = 5,
    String color = 'yellow',
    String style = 'star',
  }) {
    options ??= {};
    options!['max_value'] = maxValue;
    options!['color'] = color;
    options!['style'] = style;
    return this;
  }
}

/// Builder for link row field configuration
class LinkRowFieldBuilder extends FieldBuilder {
  LinkRowFieldBuilder(String name) : super(name, 'link_row');

  LinkRowFieldBuilder withLinkedTable({
    required int tableId,
    bool hasRelatedField = true,
    int? limitSelectionViewId,
  }) {
    options ??= {};
    options!['link_row_table_id'] = tableId;
    options!['has_related_field'] = hasRelatedField;
    if (limitSelectionViewId != null) {
      options!['link_row_limit_selection_view_id'] = limitSelectionViewId;
    }
    return this;
  }
}

/// Builder for AI field configuration
class AIFieldBuilder extends FieldBuilder {
  AIFieldBuilder(String name) : super(name, 'ai');

  AIFieldBuilder withAIConfig({
    String? aiType,
    String? aiModel,
    String outputType = 'text',
    double? temperature,
    required String prompt,
    int? fileFieldId,
  }) {
    options ??= {};
    if (aiType != null) {
      options!['ai_generative_ai_type'] = aiType;
    }
    if (aiModel != null) {
      options!['ai_generative_ai_model'] = aiModel;
    }
    options!['ai_output_type'] = outputType;
    if (temperature != null) {
      options!['ai_temperature'] = temperature;
    }
    options!['ai_prompt'] = prompt;
    if (fileFieldId != null) {
      options!['ai_file_field_id'] = fileFieldId;
    }
    return this;
  }
}

/// Builder for lookup field configuration
class LookupFieldBuilder extends FieldBuilder {
  LookupFieldBuilder(String name) : super(name, 'lookup');

  LookupFieldBuilder withThroughField({
    int? fieldId,
    String? fieldName,
  }) {
    options ??= {};
    if (fieldId != null) {
      options!['through_field_id'] = fieldId;
    }
    if (fieldName != null) {
      options!['through_field_name'] = fieldName;
    }
    return this;
  }

  LookupFieldBuilder withTargetField({
    int? fieldId,
    String? fieldName,
  }) {
    options ??= {};
    if (fieldId != null) {
      options!['target_field_id'] = fieldId;
    }
    if (fieldName != null) {
      options!['target_field_name'] = fieldName;
    }
    return this;
  }

  LookupFieldBuilder withNumberFormat({
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
  }) {
    options ??= {};
    if (separator != null) {
      options!['number_separator'] = separator;
    }
    if (decimalPlaces != null) {
      options!['number_decimal_places'] = decimalPlaces;
    }
    if (prefix != null) {
      options!['number_prefix'] = prefix;
    }
    if (suffix != null) {
      options!['number_suffix'] = suffix;
    }
    return this;
  }

  LookupFieldBuilder withDateFormat({
    String format = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
  }) {
    options ??= {};
    options!['date_format'] = format;
    options!['date_include_time'] = includeTime;
    options!['date_time_format'] = timeFormat;
    options!['date_show_tzinfo'] = showTimezone;
    if (forceTimezone != null) {
      options!['date_force_timezone'] = forceTimezone;
    }
    return this;
  }
}

/// Builder for formula field configuration
class FormulaFieldBuilder extends FieldBuilder {
  FormulaFieldBuilder(String name) : super(name, 'formula');

  FormulaFieldBuilder withFormula(String formula, String formulaType) {
    options ??= {};
    options!['formula'] = formula;
    options!['formula_type'] = formulaType;
    return this;
  }

  FormulaFieldBuilder withNumberFormat({
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
  }) {
    options ??= {};
    if (separator != null) {
      options!['number_separator'] = separator;
    }
    if (decimalPlaces != null) {
      options!['number_decimal_places'] = decimalPlaces;
    }
    if (prefix != null) {
      options!['number_prefix'] = prefix;
    }
    if (suffix != null) {
      options!['number_suffix'] = suffix;
    }
    return this;
  }

  FormulaFieldBuilder withDateFormat({
    String format = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
  }) {
    options ??= {};
    options!['date_format'] = format;
    options!['date_include_time'] = includeTime;
    options!['date_time_format'] = timeFormat;
    options!['date_show_tzinfo'] = showTimezone;
    if (forceTimezone != null) {
      options!['date_force_timezone'] = forceTimezone;
    }
    return this;
  }
}

/// Builder for count field configuration
class CountFieldBuilder extends FieldBuilder {
  CountFieldBuilder(String name) : super(name, 'count');

  CountFieldBuilder withNumberFormat({
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
  }) {
    options ??= {};
    if (separator != null) {
      options!['number_separator'] = separator;
    }
    if (decimalPlaces != null) {
      options!['number_decimal_places'] = decimalPlaces;
    }
    if (prefix != null) {
      options!['number_prefix'] = prefix;
    }
    if (suffix != null) {
      options!['number_suffix'] = suffix;
    }
    return this;
  }

  CountFieldBuilder withThroughField(int fieldId) {
    options ??= {};
    options!['through_field_id'] = fieldId;
    return this;
  }
}

/// Builder for created on field configuration
class CreatedOnFieldBuilder extends FieldBuilder {
  CreatedOnFieldBuilder(String name) : super(name, 'created_on');

  CreatedOnFieldBuilder withDateFormat({
    String format = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
  }) {
    options ??= {};
    options!['date_format'] = format;
    options!['date_include_time'] = includeTime;
    options!['date_time_format'] = timeFormat;
    options!['date_show_tzinfo'] = showTimezone;
    if (forceTimezone != null) {
      options!['date_force_timezone'] = forceTimezone;
    }
    return this;
  }
}

/// Builder for duration field configuration
class DurationFieldBuilder extends FieldBuilder {
  DurationFieldBuilder(String name) : super(name, 'duration');

  DurationFieldBuilder withFormat(String format) {
    options ??= {};
    options!['duration_format'] = format;
    return this;
  }
}

/// Builder for autonumber field configuration
class AutonumberFieldBuilder extends FieldBuilder {
  AutonumberFieldBuilder(String name) : super(name, 'autonumber');

  AutonumberFieldBuilder withViewId(int viewId) {
    options ??= {};
    options!['view_id'] = viewId;
    return this;
  }
}

/// Builder for created by field configuration
class CreatedByFieldBuilder extends FieldBuilder {
  CreatedByFieldBuilder(String name) : super(name, 'created_by');
}

/// Builder for last modified by field configuration
class LastModifiedByFieldBuilder extends FieldBuilder {
  LastModifiedByFieldBuilder(String name) : super(name, 'last_modified_by');
}

/// Builder for file field configuration
class FileFieldBuilder extends FieldBuilder {
  FileFieldBuilder(String name) : super(name, 'file');
}

/// Builder for text field configuration
class TextFieldBuilder extends FieldBuilder {
  TextFieldBuilder(String name) : super(name, 'text');

  TextFieldBuilder withDefaultValue(String? value) {
    options ??= {};
    options!['text_default'] = value;
    return this;
  }
}

/// Builder for number field configuration
class NumberFieldBuilder extends FieldBuilder {
  NumberFieldBuilder(String name) : super(name, 'number');

  NumberFieldBuilder withNumberFormat({
    int? decimalPlaces,
    String? prefix,
    String? suffix,
  }) {
    options ??= {};
    if (decimalPlaces != null) {
      options!['number_decimal_places'] = decimalPlaces;
    }
    if (prefix != null) {
      options!['number_prefix'] = prefix;
    }
    if (suffix != null) {
      options!['number_suffix'] = suffix;
    }
    return this;
  }
}

/// Builder for long text field configuration
class LongTextFieldBuilder extends FieldBuilder {
  LongTextFieldBuilder(String name) : super(name, 'long_text');
}

/// Builder for email field configuration
class EmailFieldBuilder extends FieldBuilder {
  EmailFieldBuilder(String name) : super(name, 'email');
}

/// Builder for URL field configuration
class URLFieldBuilder extends FieldBuilder {
  URLFieldBuilder(String name) : super(name, 'url');
}

/// Builder for phone number field configuration
class PhoneNumberFieldBuilder extends FieldBuilder {
  PhoneNumberFieldBuilder(String name) : super(name, 'phone_number');
}

/// Builder for boolean field configuration
class BooleanFieldBuilder extends FieldBuilder {
  BooleanFieldBuilder(String name) : super(name, 'boolean');

  BooleanFieldBuilder withDefaultValue(bool? value) {
    options ??= {};
    options!['boolean_default'] = value;
    return this;
  }
}

/// Builder for date field configuration
class DateFieldBuilder extends FieldBuilder {
  DateFieldBuilder(String name) : super(name, 'date');

  DateFieldBuilder withDateFormat({
    bool includeTime = false,
    String? timezone,
  }) {
    options ??= {};
    options!['date_include_time'] = includeTime;
    if (timezone != null) {
      options!['date_timezone'] = timezone;
    }
    return this;
  }
}

/// Builder for single select field configuration
class SingleSelectFieldBuilder extends FieldBuilder {
  SingleSelectFieldBuilder(String name) : super(name, 'single_select');

  SingleSelectFieldBuilder withOptions(List<String> selectOptions,
      {String? defaultOption}) {
    options ??= {};
    options!['select_options'] = selectOptions
        .map((option) => {
              'value': option,
              'color': 'blue', // Default color
            })
        .toList();
    if (defaultOption != null) {
      options!['select_default'] = defaultOption;
    }
    return this;
  }
}

/// Builder for multiple select field configuration
class MultipleSelectFieldBuilder extends FieldBuilder {
  MultipleSelectFieldBuilder(String name) : super(name, 'multiple_select');

  MultipleSelectFieldBuilder withOptions(List<String> selectOptions,
      {List<String>? defaultOptions}) {
    options ??= {};
    options!['select_options'] = selectOptions
        .map((option) => {
              'value': option,
              'color': 'blue', // Default color
            })
        .toList();
    if (defaultOptions != null) {
      options!['select_defaults'] = defaultOptions;
    }
    return this;
  }
}

/// Builder for UUID field configuration
class UUIDFieldBuilder extends FieldBuilder {
  UUIDFieldBuilder(String name) : super(name, 'uuid');
}

/// Extension methods for convenient field creation
extension TableBuilderFieldTypes on TableBuilder {
  TextFieldBuilder withTextField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = TextFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  LongTextFieldBuilder withLongTextField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = LongTextFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  NumberFieldBuilder withNumberField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = NumberFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  EmailFieldBuilder withEmailField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = EmailFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  URLFieldBuilder withURLField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = URLFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  PhoneNumberFieldBuilder withPhoneField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = PhoneNumberFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  BooleanFieldBuilder withBooleanField(
    String name, {
    String? description,
    bool? defaultValue,
    bool primary = false,
  }) {
    final field = BooleanFieldBuilder(name)
      ..description = description
      ..primary = primary;
    if (defaultValue != null) {
      field.withDefaultValue(defaultValue);
    }
    addField(field);
    return field;
  }

  DateFieldBuilder withDateField(
    String name, {
    String? description,
    bool includeTime = false,
    String? timezone,
    bool primary = false,
  }) {
    final field = DateFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withDateFormat(
      includeTime: includeTime,
      timezone: timezone,
    );
    addField(field);
    return field;
  }

  SingleSelectFieldBuilder withSingleSelectField(
    String name, {
    String? description,
    required List<String> options,
    String? defaultOption,
    bool primary = false,
  }) {
    final field = SingleSelectFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withOptions(options, defaultOption: defaultOption);
    addField(field);
    return field;
  }

  MultipleSelectFieldBuilder withMultipleSelectField(
    String name, {
    String? description,
    required List<String> options,
    List<String>? defaultOptions,
    bool primary = false,
  }) {
    final field = MultipleSelectFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withOptions(options, defaultOptions: defaultOptions);
    addField(field);
    return field;
  }

  UUIDFieldBuilder withUUIDField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = UUIDFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  FileFieldBuilder withFileField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = FileFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  CreatedByFieldBuilder withCreatedByField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = CreatedByFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  LastModifiedByFieldBuilder withLastModifiedByField(
    String name, {
    String? description,
    bool primary = false,
  }) {
    final field = LastModifiedByFieldBuilder(name)
      ..description = description
      ..primary = primary;
    addField(field);
    return field;
  }

  AutonumberFieldBuilder withAutonumberField(
    String name, {
    String? description,
    int? viewId,
    bool primary = false,
  }) {
    final field = AutonumberFieldBuilder(name)
      ..description = description
      ..primary = primary;
    if (viewId != null) {
      field.withViewId(viewId);
    }
    addField(field);
    return field;
  }

  DurationFieldBuilder withDurationField(
    String name, {
    String? description,
    String format = 'h:mm:ss',
    bool primary = false,
  }) {
    final field = DurationFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withFormat(format);
    addField(field);
    return field;
  }

  CreatedOnFieldBuilder withCreatedOnField(
    String name, {
    String? description,
    String dateFormat = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
    bool primary = false,
  }) {
    final field = CreatedOnFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withDateFormat(
      format: dateFormat,
      includeTime: includeTime,
      timeFormat: timeFormat,
      showTimezone: showTimezone,
      forceTimezone: forceTimezone,
    );
    addField(field);
    return field;
  }

  CountFieldBuilder withCountField(
    String name, {
    String? description,
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
    int? throughFieldId,
    bool primary = false,
  }) {
    final field = CountFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withNumberFormat(
      separator: separator,
      decimalPlaces: decimalPlaces,
      prefix: prefix,
      suffix: suffix,
    );
    if (throughFieldId != null) {
      field.withThroughField(throughFieldId);
    }
    addField(field);
    return field;
  }

  FormulaFieldBuilder withFormulaField(
    String name, {
    String? description,
    required String formula,
    required String formulaType,
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
    String dateFormat = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
    bool primary = false,
  }) {
    final field = FormulaFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withFormula(formula, formulaType);

    // Apply formatting based on formula type
    if (formulaType == 'number') {
      field.withNumberFormat(
        separator: separator,
        decimalPlaces: decimalPlaces,
        prefix: prefix,
        suffix: suffix,
      );
    } else if (formulaType == 'date') {
      field.withDateFormat(
        format: dateFormat,
        includeTime: includeTime,
        timeFormat: timeFormat,
        showTimezone: showTimezone,
        forceTimezone: forceTimezone,
      );
    }

    addField(field);
    return field;
  }

  LookupFieldBuilder withLookupField(
    String name, {
    String? description,
    int? throughFieldId,
    String? throughFieldName,
    int? targetFieldId,
    String? targetFieldName,
    String? separator,
    int? decimalPlaces,
    String? prefix,
    String? suffix,
    String dateFormat = 'EU',
    bool includeTime = false,
    String timeFormat = '24',
    bool showTimezone = false,
    String? forceTimezone,
    bool primary = false,
  }) {
    final field = LookupFieldBuilder(name)
      ..description = description
      ..primary = primary;

    field.withThroughField(
      fieldId: throughFieldId,
      fieldName: throughFieldName,
    );
    field.withTargetField(
      fieldId: targetFieldId,
      fieldName: targetFieldName,
    );

    // Apply formatting based on target field type
    if (separator != null ||
        decimalPlaces != null ||
        prefix != null ||
        suffix != null) {
      field.withNumberFormat(
        separator: separator,
        decimalPlaces: decimalPlaces,
        prefix: prefix,
        suffix: suffix,
      );
    }

    if (dateFormat != 'EU' ||
        includeTime ||
        timeFormat != '24' ||
        showTimezone ||
        forceTimezone != null) {
      field.withDateFormat(
        format: dateFormat,
        includeTime: includeTime,
        timeFormat: timeFormat,
        showTimezone: showTimezone,
        forceTimezone: forceTimezone,
      );
    }

    addField(field);
    return field;
  }

  AIFieldBuilder withAIField(
    String name, {
    String? description,
    String? aiType,
    String? aiModel,
    String outputType = 'text',
    double? temperature,
    required String prompt,
    int? fileFieldId,
    bool primary = false,
  }) {
    final field = AIFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withAIConfig(
      aiType: aiType,
      aiModel: aiModel,
      outputType: outputType,
      temperature: temperature,
      prompt: prompt,
      fileFieldId: fileFieldId,
    );
    addField(field);
    return field;
  }

  LinkRowFieldBuilder withLinkRowField(
    String name, {
    String? description,
    required int linkedTableId,
    bool hasRelatedField = true,
    int? limitSelectionViewId,
    bool primary = false,
  }) {
    final field = LinkRowFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withLinkedTable(
      tableId: linkedTableId,
      hasRelatedField: hasRelatedField,
      limitSelectionViewId: limitSelectionViewId,
    );
    addField(field);
    return field;
  }

  RatingFieldBuilder withRatingField(
    String name, {
    String? description,
    int maxValue = 5,
    String color = 'yellow',
    String style = 'star',
    bool primary = false,
  }) {
    final field = RatingFieldBuilder(name)
      ..description = description
      ..primary = primary;
    field.withConfig(
      maxValue: maxValue,
      color: color,
      style: style,
    );
    addField(field);
    return field;
  }
}
