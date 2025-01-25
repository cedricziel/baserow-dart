//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableImport {
  /// Returns a new [TableImport] instance.
  TableImport({
    this.data = const [],
  });

  /// A list of rows you want to add to the specified table. Each row is a list of values, one for each **writable** field. The field values must be ordered according to the field order in the table. All values must be compatible with the corresponding field type.  Ex:  ```json [   [\"row1_field1_value\", \"row1_field2_value\"],   [\"row2_field1_value\", \"row2_field2_value\"], ] ``` for adding two rows to a table with two writable fields.
  List<Object> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableImport &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'TableImport[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [TableImport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableImport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableImport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableImport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableImport(
        data: Object.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<TableImport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableImport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableImport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableImport> mapFromJson(dynamic json) {
    final map = <String, TableImport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableImport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableImport-objects as value to a dart map
  static Map<String, List<TableImport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableImport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableImport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

