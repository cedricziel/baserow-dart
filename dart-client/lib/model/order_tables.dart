//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderTables {
  /// Returns a new [OrderTables] instance.
  OrderTables({
    this.tableIds = const [],
  });

  /// Table ids in the desired order.
  List<int> tableIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderTables &&
    _deepEquality.equals(other.tableIds, tableIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tableIds.hashCode);

  @override
  String toString() => 'OrderTables[tableIds=$tableIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'table_ids'] = this.tableIds;
    return json;
  }

  /// Returns a new [OrderTables] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderTables? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderTables[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderTables[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderTables(
        tableIds: json[r'table_ids'] is Iterable
            ? (json[r'table_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrderTables> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderTables>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderTables.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderTables> mapFromJson(dynamic json) {
    final map = <String, OrderTables>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderTables.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderTables-objects as value to a dart map
  static Map<String, List<OrderTables>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderTables>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderTables.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'table_ids',
  };
}

