import '../base_builders.dart';

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

/// Builder for autonumber field configuration
class AutonumberFieldBuilder extends FieldBuilder {
  AutonumberFieldBuilder(String name) : super(name, 'autonumber');

  AutonumberFieldBuilder withViewId(int viewId) {
    options ??= {};
    options!['view_id'] = viewId;
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
