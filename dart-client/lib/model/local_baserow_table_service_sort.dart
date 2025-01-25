//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableServiceSort {
  /// Returns a new [LocalBaserowTableServiceSort] instance.
  LocalBaserowTableServiceSort({
    required this.id,
    required this.field,
    required this.order,
    this.orderBy,
  });

  int id;

  /// The database Field, in the LocalBaserowTableService service, which we would like to sort upon.
  int field;

  int order;

  /// Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderByEnum? orderBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableServiceSort &&
    other.id == id &&
    other.field == field &&
    other.order == order &&
    other.orderBy == orderBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (field.hashCode) +
    (order.hashCode) +
    (orderBy == null ? 0 : orderBy!.hashCode);

  @override
  String toString() => 'LocalBaserowTableServiceSort[id=$id, field=$field, order=$order, orderBy=$orderBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'field'] = this.field;
      json[r'order'] = this.order;
    if (this.orderBy != null) {
      json[r'order_by'] = this.orderBy;
    } else {
      json[r'order_by'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowTableServiceSort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableServiceSort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableServiceSort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableServiceSort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableServiceSort(
        id: mapValueOfType<int>(json, r'id')!,
        field: mapValueOfType<int>(json, r'field')!,
        order: mapValueOfType<int>(json, r'order')!,
        orderBy: OrderByEnum.fromJson(json[r'order_by']),
      );
    }
    return null;
  }

  static List<LocalBaserowTableServiceSort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableServiceSort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableServiceSort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableServiceSort> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableServiceSort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableServiceSort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableServiceSort-objects as value to a dart map
  static Map<String, List<LocalBaserowTableServiceSort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableServiceSort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableServiceSort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'field',
    'order',
  };
}

