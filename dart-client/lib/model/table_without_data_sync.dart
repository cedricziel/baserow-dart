//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWithoutDataSync {
  /// Returns a new [TableWithoutDataSync] instance.
  TableWithoutDataSync({
    required this.id,
    required this.name,
    required this.order,
    required this.databaseId,
  });

  int id;

  String name;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int databaseId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWithoutDataSync &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.databaseId == databaseId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (databaseId.hashCode);

  @override
  String toString() => 'TableWithoutDataSync[id=$id, name=$name, order=$order, databaseId=$databaseId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'database_id'] = this.databaseId;
    return json;
  }

  /// Returns a new [TableWithoutDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWithoutDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWithoutDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWithoutDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWithoutDataSync(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        databaseId: mapValueOfType<int>(json, r'database_id')!,
      );
    }
    return null;
  }

  static List<TableWithoutDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWithoutDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWithoutDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWithoutDataSync> mapFromJson(dynamic json) {
    final map = <String, TableWithoutDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWithoutDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWithoutDataSync-objects as value to a dart map
  static Map<String, List<TableWithoutDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWithoutDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWithoutDataSync.listFromJson(entry.value, growable: growable,);
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
  };
}

