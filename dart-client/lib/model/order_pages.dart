//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderPages {
  /// Returns a new [OrderPages] instance.
  OrderPages({
    this.pageIds = const [],
  });

  /// The ids of the pages in the order they are supposed to be set in
  List<int> pageIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderPages &&
    _deepEquality.equals(other.pageIds, pageIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pageIds.hashCode);

  @override
  String toString() => 'OrderPages[pageIds=$pageIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'page_ids'] = this.pageIds;
    return json;
  }

  /// Returns a new [OrderPages] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderPages? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderPages[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderPages[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderPages(
        pageIds: json[r'page_ids'] is Iterable
            ? (json[r'page_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrderPages> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderPages>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderPages.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderPages> mapFromJson(dynamic json) {
    final map = <String, OrderPages>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderPages.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderPages-objects as value to a dart map
  static Map<String, List<OrderPages>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderPages>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderPages.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'page_ids',
  };
}

