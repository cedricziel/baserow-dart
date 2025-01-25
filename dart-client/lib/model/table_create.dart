//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableCreate {
  /// Returns a new [TableCreate] instance.
  TableCreate({
    required this.name,
    this.data = const [],
    this.firstRowHeader = false,
  });

  String name;

  /// A list of rows that needs to be created as initial table data. Each row is a list of values that are going to be added in the new table in the same order as provided.  Ex:  ```json [   [\"row1_field1_value\", \"row1_field2_value\"],   [\"row2_field1_value\", \"row2_field2_value\"], ] ``` for creating a two rows table with two fields.  If not provided, some example data is going to be created.
  List<Object> data;

  /// Indicates if the first provided row is the header. If true the field names are going to be the values of the first row. Otherwise they will be called \"Field N\"
  bool firstRowHeader;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableCreate &&
    other.name == name &&
    _deepEquality.equals(other.data, data) &&
    other.firstRowHeader == firstRowHeader;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (data.hashCode) +
    (firstRowHeader.hashCode);

  @override
  String toString() => 'TableCreate[name=$name, data=$data, firstRowHeader=$firstRowHeader]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'data'] = this.data;
      json[r'first_row_header'] = this.firstRowHeader;
    return json;
  }

  /// Returns a new [TableCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableCreate(
        name: mapValueOfType<String>(json, r'name')!,
        data: Object.listFromJson(json[r'data']),
        firstRowHeader: mapValueOfType<bool>(json, r'first_row_header') ?? false,
      );
    }
    return null;
  }

  static List<TableCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableCreate> mapFromJson(dynamic json) {
    final map = <String, TableCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableCreate-objects as value to a dart map
  static Map<String, List<TableCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

