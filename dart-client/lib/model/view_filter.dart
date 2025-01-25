//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ViewFilter {
  /// Returns a new [ViewFilter] instance.
  ViewFilter({
    required this.id,
    required this.view,
    required this.field,
    required this.type,
    this.value,
    this.preloadValues = const {},
    this.group,
  });

  int id;

  /// The view to which the filter applies. Each view can have his own filters.
  int view;

  /// The field of which the value must be compared to the filter value.
  int field;

  /// Indicates how the field's value must be compared to the filter's value. The filter is always in this order `field` `type` `value` (example: `field_1` `contains` `Test`).
  String type;

  /// The filter value that must be compared to the field's value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  /// Can contain unique preloaded values per filter. This is for example used by the `link_row_has` filter to communicate the display name if a value is provided.
  Map<String, Object> preloadValues;

  /// The id of the filter group this filter belongs to. If this is null, the filter is not part of a filter group.
  int? group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ViewFilter &&
    other.id == id &&
    other.view == view &&
    other.field == field &&
    other.type == type &&
    other.value == value &&
    _deepEquality.equals(other.preloadValues, preloadValues) &&
    other.group == group;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (view.hashCode) +
    (field.hashCode) +
    (type.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (preloadValues.hashCode) +
    (group == null ? 0 : group!.hashCode);

  @override
  String toString() => 'ViewFilter[id=$id, view=$view, field=$field, type=$type, value=$value, preloadValues=$preloadValues, group=$group]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'view'] = this.view;
      json[r'field'] = this.field;
      json[r'type'] = this.type;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
      json[r'preload_values'] = this.preloadValues;
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    return json;
  }

  /// Returns a new [ViewFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ViewFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ViewFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ViewFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ViewFilter(
        id: mapValueOfType<int>(json, r'id')!,
        view: mapValueOfType<int>(json, r'view')!,
        field: mapValueOfType<int>(json, r'field')!,
        type: mapValueOfType<String>(json, r'type')!,
        value: mapValueOfType<String>(json, r'value'),
        preloadValues: mapCastOfType<String, Object>(json, r'preload_values')!,
        group: mapValueOfType<int>(json, r'group'),
      );
    }
    return null;
  }

  static List<ViewFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ViewFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ViewFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ViewFilter> mapFromJson(dynamic json) {
    final map = <String, ViewFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ViewFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ViewFilter-objects as value to a dart map
  static Map<String, List<ViewFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ViewFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ViewFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'view',
    'field',
    'type',
    'preload_values',
  };
}

