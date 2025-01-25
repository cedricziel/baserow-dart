// Export all field builders
export 'fields/text_fields.dart';
export 'fields/numeric_fields.dart';
export 'fields/date_fields.dart';
export 'fields/select_fields.dart';
export 'fields/special_fields.dart';
export 'fields/computed_fields.dart';
export 'fields/relation_fields.dart';

// Re-export the TableBuilderFieldTypes extension
import 'base_builders.dart';
import 'fields/text_fields.dart';
import 'fields/numeric_fields.dart';
import 'fields/date_fields.dart';
import 'fields/select_fields.dart';
import 'fields/special_fields.dart';
import 'fields/computed_fields.dart';
import 'fields/relation_fields.dart';

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
