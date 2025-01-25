//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderViews {
  /// Returns a new [OrderViews] instance.
  OrderViews({
    this.viewIds = const [],
  });

  /// View ids in the desired order.
  List<int> viewIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderViews &&
    _deepEquality.equals(other.viewIds, viewIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (viewIds.hashCode);

  @override
  String toString() => 'OrderViews[viewIds=$viewIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'view_ids'] = this.viewIds;
    return json;
  }

  /// Returns a new [OrderViews] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderViews? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderViews[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderViews[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderViews(
        viewIds: json[r'view_ids'] is Iterable
            ? (json[r'view_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrderViews> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderViews>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderViews.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderViews> mapFromJson(dynamic json) {
    final map = <String, OrderViews>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderViews.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderViews-objects as value to a dart map
  static Map<String, List<OrderViews>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderViews>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderViews.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'view_ids',
  };
}

