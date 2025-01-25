//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowListRowsUpdateDataSource {
  /// Returns a new [LocalBaserowListRowsUpdateDataSource] instance.
  LocalBaserowListRowsUpdateDataSource({
    this.integrationId,
    this.name,
    this.tableId,
    this.viewId,
    this.sortings = const [],
    this.filters = const [],
    this.filterType,
    this.searchQuery,
  });

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow view we want the data for.
  int? viewId;

  List<LocalBaserowTableServiceSort> sortings;

  List<LocalBaserowTableServiceFilter> filters;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  /// Any search queries to apply to the service when it is dispatched.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchQuery;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowListRowsUpdateDataSource &&
    other.integrationId == integrationId &&
    other.name == name &&
    other.tableId == tableId &&
    other.viewId == viewId &&
    _deepEquality.equals(other.sortings, sortings) &&
    _deepEquality.equals(other.filters, filters) &&
    other.filterType == filterType &&
    other.searchQuery == searchQuery;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode) +
    (sortings.hashCode) +
    (filters.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (searchQuery == null ? 0 : searchQuery!.hashCode);

  @override
  String toString() => 'LocalBaserowListRowsUpdateDataSource[integrationId=$integrationId, name=$name, tableId=$tableId, viewId=$viewId, sortings=$sortings, filters=$filters, filterType=$filterType, searchQuery=$searchQuery]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.tableId != null) {
      json[r'table_id'] = this.tableId;
    } else {
      json[r'table_id'] = null;
    }
    if (this.viewId != null) {
      json[r'view_id'] = this.viewId;
    } else {
      json[r'view_id'] = null;
    }
      json[r'sortings'] = this.sortings;
      json[r'filters'] = this.filters;
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
    if (this.searchQuery != null) {
      json[r'search_query'] = this.searchQuery;
    } else {
      json[r'search_query'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowListRowsUpdateDataSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowListRowsUpdateDataSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowListRowsUpdateDataSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowListRowsUpdateDataSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowListRowsUpdateDataSource(
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        name: mapValueOfType<String>(json, r'name'),
        tableId: mapValueOfType<int>(json, r'table_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
        sortings: LocalBaserowTableServiceSort.listFromJson(json[r'sortings']),
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        searchQuery: mapValueOfType<String>(json, r'search_query'),
      );
    }
    return null;
  }

  static List<LocalBaserowListRowsUpdateDataSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowListRowsUpdateDataSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowListRowsUpdateDataSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowListRowsUpdateDataSource> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowListRowsUpdateDataSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowListRowsUpdateDataSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowListRowsUpdateDataSource-objects as value to a dart map
  static Map<String, List<LocalBaserowListRowsUpdateDataSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowListRowsUpdateDataSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowListRowsUpdateDataSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

