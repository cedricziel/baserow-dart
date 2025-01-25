import '../base_builders.dart';

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
