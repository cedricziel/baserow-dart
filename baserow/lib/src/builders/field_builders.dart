import 'base_builders.dart';

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

/// Extension methods for convenient field creation
extension TableBuilderFieldTypes on TableBuilder {
  TextFieldBuilder withTextField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = TextFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  LongTextFieldBuilder withLongTextField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = LongTextFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  NumberFieldBuilder withNumberField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = NumberFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  EmailFieldBuilder withEmailField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = EmailFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  URLFieldBuilder withURLField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = URLFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  PhoneNumberFieldBuilder withPhoneField(
    String name, {
    String? description,
    bool? required,
  }) {
    final field = PhoneNumberFieldBuilder(name)
      ..description = description
      ..required = required;
    addField(field);
    return field;
  }

  BooleanFieldBuilder withBooleanField(
    String name, {
    String? description,
    bool? defaultValue,
  }) {
    final field = BooleanFieldBuilder(name)..description = description;
    if (defaultValue != null) {
      field.withDefaultValue(defaultValue);
    }
    addField(field);
    return field;
  }

  DateFieldBuilder withDateField(
    String name, {
    String? description,
    bool? required,
    bool includeTime = false,
    String? timezone,
  }) {
    final field = DateFieldBuilder(name)
      ..description = description
      ..required = required;
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
    bool? required,
  }) {
    final field = SingleSelectFieldBuilder(name)
      ..description = description
      ..required = required;
    field.withOptions(options, defaultOption: defaultOption);
    addField(field);
    return field;
  }

  MultipleSelectFieldBuilder withMultipleSelectField(
    String name, {
    String? description,
    required List<String> options,
    List<String>? defaultOptions,
    bool? required,
  }) {
    final field = MultipleSelectFieldBuilder(name)
      ..description = description
      ..required = required;
    field.withOptions(options, defaultOptions: defaultOptions);
    addField(field);
    return field;
  }
}
