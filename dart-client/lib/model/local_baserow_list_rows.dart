//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowListRows {
  /// Returns a new [LocalBaserowListRows] instance.
  LocalBaserowListRows({
    this.filters = const [],
    this.sortings = const [],
    this.searchQuery,
    this.tableId,
    this.integrationId,
    this.viewId,
  });

  List<LocalBaserowTableServiceFilter> filters;

  List<LocalBaserowTableServiceSort> sortings;

  /// Any search queries to apply to the service when it is dispatched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchQuery;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// The id of the Baserow view we want the data for.
  int? viewId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowListRows &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.sortings, sortings) &&
    other.searchQuery == searchQuery &&
    other.tableId == tableId &&
    other.integrationId == integrationId &&
    other.viewId == viewId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filters.hashCode) +
    (sortings.hashCode) +
    (searchQuery == null ? 0 : searchQuery!.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode);

  @override
  String toString() => 'LocalBaserowListRows[filters=$filters, sortings=$sortings, searchQuery=$searchQuery, tableId=$tableId, integrationId=$integrationId, viewId=$viewId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filters'] = this.filters;
      json[r'sortings'] = this.sortings;
    if (this.searchQuery != null) {
      json[r'search_query'] = this.searchQuery;
    } else {
      json[r'search_query'] = null;
    }
    if (this.tableId != null) {
      json[r'table_id'] = this.tableId;
    } else {
      json[r'table_id'] = null;
    }
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
    if (this.viewId != null) {
      json[r'view_id'] = this.viewId;
    } else {
      json[r'view_id'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowListRows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowListRows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowListRows[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowListRows[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowListRows(
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        sortings: LocalBaserowTableServiceSort.listFromJson(json[r'sortings']),
        searchQuery: mapValueOfType<String>(json, r'search_query'),
        tableId: mapValueOfType<int>(json, r'table_id'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowListRows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowListRows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowListRows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowListRows> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowListRows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowListRows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowListRows-objects as value to a dart map
  static Map<String, List<LocalBaserowListRows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowListRows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowListRows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

