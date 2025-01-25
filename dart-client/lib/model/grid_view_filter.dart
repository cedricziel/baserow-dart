//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GridViewFilter {
  /// Returns a new [GridViewFilter] instance.
  GridViewFilter({
    this.fieldIds = const [],
    this.rowIds = const [],
  });

  /// Only the fields related to the provided ids are added to the response. If None are provided all fields will be returned.
  List<int> fieldIds;

  /// Only rows related to the provided ids are added to the response.
  List<int> rowIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridViewFilter &&
    _deepEquality.equals(other.fieldIds, fieldIds) &&
    _deepEquality.equals(other.rowIds, rowIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldIds.hashCode) +
    (rowIds.hashCode);

  @override
  String toString() => 'GridViewFilter[fieldIds=$fieldIds, rowIds=$rowIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_ids'] = this.fieldIds;
      json[r'row_ids'] = this.rowIds;
    return json;
  }

  /// Returns a new [GridViewFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridViewFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridViewFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridViewFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridViewFilter(
        fieldIds: json[r'field_ids'] is Iterable
            ? (json[r'field_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        rowIds: json[r'row_ids'] is Iterable
            ? (json[r'row_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GridViewFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridViewFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridViewFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridViewFilter> mapFromJson(dynamic json) {
    final map = <String, GridViewFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridViewFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridViewFilter-objects as value to a dart map
  static Map<String, List<GridViewFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridViewFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridViewFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'row_ids',
  };
}

