//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderApplications {
  /// Returns a new [OrderApplications] instance.
  OrderApplications({
    this.applicationIds = const [],
  });

  /// Application ids in the desired order.
  List<int> applicationIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderApplications &&
    _deepEquality.equals(other.applicationIds, applicationIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (applicationIds.hashCode);

  @override
  String toString() => 'OrderApplications[applicationIds=$applicationIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'application_ids'] = this.applicationIds;
    return json;
  }

  /// Returns a new [OrderApplications] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderApplications? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderApplications[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderApplications[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderApplications(
        applicationIds: json[r'application_ids'] is Iterable
            ? (json[r'application_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OrderApplications> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderApplications>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderApplications.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderApplications> mapFromJson(dynamic json) {
    final map = <String, OrderApplications>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderApplications.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderApplications-objects as value to a dart map
  static Map<String, List<OrderApplications>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderApplications>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderApplications.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'application_ids',
  };
}

