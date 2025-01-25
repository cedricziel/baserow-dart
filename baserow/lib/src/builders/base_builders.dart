import 'exceptions.dart';

/// Base builder for field configuration
class FieldBuilder {
  final String name;
  final String type;
  String? description;
  Map<String, dynamic>? options;
  bool primary = false;

  FieldBuilder(this.name, this.type) {
    _validateName(name);
    _validateType(type);
  }

  void _validateName(String name) {
    if (name.isEmpty) {
      throw ValidationException('Field name cannot be empty');
    }
    if (name.length > 255) {
      throw ValidationException('Field name cannot exceed 255 characters');
    }
  }

  void _validateType(String type) {
    if (type.isEmpty) {
      throw ValidationException('Field type cannot be empty');
    }
  }

  Map<String, dynamic> build() {
    return {
      'name': name,
      'type': type,
      if (description != null) 'description': description,
      if (options != null) 'options': options,
    };
  }
}

/// Base builder for view configuration
class ViewBuilder {
  final String name;
  final String type;
  String? ownershipType;
  String? filterType;
  bool? filtersDisabled;
  String? rowIdentifierType;
  bool? public;
  Map<String, dynamic>? options;

  ViewBuilder(this.name, this.type) {
    _validateName(name);
    _validateType(type);
  }

  void _validateName(String name) {
    if (name.isEmpty) {
      throw ValidationException('View name cannot be empty');
    }
    if (name.length > 255) {
      throw ValidationException('View name cannot exceed 255 characters');
    }
  }

  void _validateType(String type) {
    if (type.isEmpty) {
      throw ValidationException('View type cannot be empty');
    }
  }

  Map<String, dynamic> build() {
    return {
      'name': name,
      'type': type,
      if (ownershipType != null) 'ownership_type': ownershipType,
      if (filterType != null) 'filter_type': filterType,
      if (filtersDisabled != null) 'filters_disabled': filtersDisabled,
      if (rowIdentifierType != null) 'row_identifier_type': rowIdentifierType,
      if (public != null) 'public': public,
      if (options != null) 'options': options,
    };
  }
}

/// Main builder for table configuration
class TableBuilder {
  final String name;
  final List<FieldBuilder> fields = [];
  final List<ViewBuilder> views = [];
  List<List<dynamic>>? initialData;
  bool firstRowHeader = false;

  TableBuilder(this.name) {
    _validateName(name);
  }

  void addField(FieldBuilder field) {
    _validateFieldName(field.name);
    fields.add(field);
  }

  void addView(ViewBuilder view) {
    _validateViewName(view.name);
    views.add(view);
  }

  void _validateName(String name) {
    if (name.isEmpty) {
      throw ValidationException('Table name cannot be empty');
    }
    if (name.length > 255) {
      throw ValidationException('Table name cannot exceed 255 characters');
    }
  }

  void _validateFieldName(String name) {
    if (fields.any((f) => f.name == name)) {
      throw ValidationException('Duplicate field name: $name');
    }
  }

  void _validateViewName(String name) {
    if (views.any((v) => v.name == name)) {
      throw ValidationException('Duplicate view name: $name');
    }
  }

  TableBuilder withField(
    String name,
    String type, {
    String? description,
    Map<String, dynamic>? options,
  }) {
    _validateFieldName(name);
    final field = FieldBuilder(name, type)
      ..description = description
      ..options = options;
    fields.add(field);
    return this;
  }

  TableBuilder withView(
    String name,
    String type, {
    String? ownershipType,
    String? filterType,
    bool? filtersDisabled,
    String? rowIdentifierType,
    bool? public,
    Map<String, dynamic>? options,
  }) {
    _validateViewName(name);
    final view = ViewBuilder(name, type)
      ..ownershipType = ownershipType
      ..filterType = filterType
      ..filtersDisabled = filtersDisabled
      ..rowIdentifierType = rowIdentifierType
      ..public = public
      ..options = options;
    views.add(view);
    return this;
  }

  TableBuilder withData(List<List<dynamic>> data,
      {bool firstRowHeader = false}) {
    initialData = data;
    this.firstRowHeader = firstRowHeader;
    return this;
  }

  void validate() {
    if (fields.isEmpty) {
      throw ValidationException('Table must have at least one field');
    }
  }

  Map<String, dynamic> build() {
    validate();
    return {
      'name': name,
      'fields': fields.map((f) => f.build()).toList(),
      'views': views.map((v) => v.build()).toList(),
      if (initialData != null) 'data': initialData,
      'first_row_header': firstRowHeader,
    };
  }
}
