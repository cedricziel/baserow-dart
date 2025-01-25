import '../base_builders.dart';

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
