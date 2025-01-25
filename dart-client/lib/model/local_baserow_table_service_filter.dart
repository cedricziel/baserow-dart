//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableServiceFilter {
  /// Returns a new [LocalBaserowTableServiceFilter] instance.
  LocalBaserowTableServiceFilter({
    required this.id,
    required this.order,
    required this.field,
    required this.type,
    required this.value,
    this.valueIsFormula = false,
  });

  int id;

  int order;

  /// The database Field, in the LocalBaserowTableService, which we would like to filter upon.
  int field;

  /// Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`).
  String type;

  /// A formula for the filter's value.
  String value;

  /// Indicates whether the value is a formula or not.
  bool valueIsFormula;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableServiceFilter &&
    other.id == id &&
    other.order == order &&
    other.field == field &&
    other.type == type &&
    other.value == value &&
    other.valueIsFormula == valueIsFormula;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (order.hashCode) +
    (field.hashCode) +
    (type.hashCode) +
    (value.hashCode) +
    (valueIsFormula.hashCode);

  @override
  String toString() => 'LocalBaserowTableServiceFilter[id=$id, order=$order, field=$field, type=$type, value=$value, valueIsFormula=$valueIsFormula]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'order'] = this.order;
      json[r'field'] = this.field;
      json[r'type'] = this.type;
      json[r'value'] = this.value;
      json[r'value_is_formula'] = this.valueIsFormula;
    return json;
  }

  /// Returns a new [LocalBaserowTableServiceFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableServiceFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableServiceFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableServiceFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableServiceFilter(
        id: mapValueOfType<int>(json, r'id')!,
        order: mapValueOfType<int>(json, r'order')!,
        field: mapValueOfType<int>(json, r'field')!,
        type: mapValueOfType<String>(json, r'type')!,
        value: mapValueOfType<String>(json, r'value')!,
        valueIsFormula: mapValueOfType<bool>(json, r'value_is_formula') ?? false,
      );
    }
    return null;
  }

  static List<LocalBaserowTableServiceFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableServiceFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableServiceFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableServiceFilter> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableServiceFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableServiceFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableServiceFilter-objects as value to a dart map
  static Map<String, List<LocalBaserowTableServiceFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableServiceFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableServiceFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'order',
    'field',
    'type',
    'value',
  };
}

