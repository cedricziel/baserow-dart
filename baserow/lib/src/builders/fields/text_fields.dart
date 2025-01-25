import '../base_builders.dart';

/// Builder for text field configuration
class TextFieldBuilder extends FieldBuilder {
  TextFieldBuilder(String name) : super(name, 'text');

  TextFieldBuilder withDefaultValue(String? value) {
    options ??= {};
    options!['text_default'] = value;
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
