import '../base_builders.dart';

/// Builder for UUID field configuration
class UUIDFieldBuilder extends FieldBuilder {
  UUIDFieldBuilder(String name) : super(name, 'uuid');
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

/// Builder for file field configuration
class FileFieldBuilder extends FieldBuilder {
  FileFieldBuilder(String name) : super(name, 'file');
}
