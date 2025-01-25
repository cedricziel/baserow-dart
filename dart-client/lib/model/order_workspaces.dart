//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderWorkspaces {
  /// Returns a new [OrderWorkspaces] instance.
  OrderWorkspaces({
    this.workspaces = const [],
  });

  /// Workspace ids in the desired order.
  List<int> workspaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderWorkspaces &&
    _deepEquality.equals(other.workspaces, workspaces);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workspaces.hashCode);

  @override
  String toString() => 'OrderWorkspaces[workspaces=$workspaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workspaces'] = this.workspaces;
    return json;
  }

  /// Returns a new [OrderWorkspaces] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderWorkspaces? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderWorkspaces[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderWorkspaces[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderWorkspaces(
        workspaces: json[r'workspaces'] is Iterable
            ? (json[r'workspaces'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrderWorkspaces> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderWorkspaces>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderWorkspaces.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderWorkspaces> mapFromJson(dynamic json) {
    final map = <String, OrderWorkspaces>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderWorkspaces.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderWorkspaces-objects as value to a dart map
  static Map<String, List<OrderWorkspaces>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderWorkspaces>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderWorkspaces.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workspaces',
  };
}

