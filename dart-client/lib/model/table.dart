//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Table {
  /// Returns a new [Table] instance.
  Table({
    required this.id,
    required this.name,
    required this.order,
    required this.databaseId,
    required this.dataSync,
  });

  int id;

  String name;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int databaseId;

  DataSync dataSync;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Table &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.databaseId == databaseId &&
    other.dataSync == dataSync;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (databaseId.hashCode) +
    (dataSync.hashCode);

  @override
  String toString() => 'Table[id=$id, name=$name, order=$order, databaseId=$databaseId, dataSync=$dataSync]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'database_id'] = this.databaseId;
      json[r'data_sync'] = this.dataSync;
    return json;
  }

  /// Returns a new [Table] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Table? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Table[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Table[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Table(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        databaseId: mapValueOfType<int>(json, r'database_id')!,
        dataSync: DataSync.fromJson(json[r'data_sync'])!,
      );
    }
    return null;
  }

  static List<Table> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Table>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Table.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Table> mapFromJson(dynamic json) {
    final map = <String, Table>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Table.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Table-objects as value to a dart map
  static Map<String, List<Table>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Table>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Table.listFromJson(entry.value, growable: growable,);
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
    'data_sync',
  };
}

