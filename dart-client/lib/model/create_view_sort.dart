//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateViewSort {
  /// Returns a new [CreateViewSort] instance.
  CreateViewSort({
    required this.field,
    this.order = OrderEnum.ASC,
  });

  /// The field that must be sorted on.
  int field;

  /// Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending
  OrderEnum order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateViewSort &&
    other.field == field &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'CreateViewSort[field=$field, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [CreateViewSort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateViewSort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateViewSort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateViewSort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateViewSort(
        field: mapValueOfType<int>(json, r'field')!,
        order: OrderEnum.fromJson(json[r'order']) ?? OrderEnum.ASC,
      );
    }
    return null;
  }

  static List<CreateViewSort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateViewSort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateViewSort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateViewSort> mapFromJson(dynamic json) {
    final map = <String, CreateViewSort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateViewSort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateViewSort-objects as value to a dart map
  static Map<String, List<CreateViewSort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateViewSort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateViewSort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
  };
}

