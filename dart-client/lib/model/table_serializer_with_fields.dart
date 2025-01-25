//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableSerializerWithFields {
  /// Returns a new [TableSerializerWithFields] instance.
  TableSerializerWithFields({
    required this.id,
    required this.name,
    required this.order,
    required this.databaseId,
    this.fields = const [],
  });

  int id;

  String name;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int databaseId;

  /// Fields of this table
  List<FieldField> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableSerializerWithFields &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.databaseId == databaseId &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (databaseId.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'TableSerializerWithFields[id=$id, name=$name, order=$order, databaseId=$databaseId, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'database_id'] = this.databaseId;
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [TableSerializerWithFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableSerializerWithFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableSerializerWithFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableSerializerWithFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableSerializerWithFields(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        databaseId: mapValueOfType<int>(json, r'database_id')!,
        fields: FieldField.listFromJson(json[r'fields']),
      );
    }
    return null;
  }

  static List<TableSerializerWithFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableSerializerWithFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableSerializerWithFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableSerializerWithFields> mapFromJson(dynamic json) {
    final map = <String, TableSerializerWithFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableSerializerWithFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableSerializerWithFields-objects as value to a dart map
  static Map<String, List<TableSerializerWithFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableSerializerWithFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableSerializerWithFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'order',
    'database_id',
    'fields',
  };
}

