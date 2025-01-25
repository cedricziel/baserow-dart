//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowAggregateRowsCreateDataSource {
  /// Returns a new [LocalBaserowAggregateRowsCreateDataSource] instance.
  LocalBaserowAggregateRowsCreateDataSource({
    this.type,
    this.name,
    this.pageId,
    this.beforeId,
    this.tableId,
    this.integrationId,
    this.viewId,
    this.filters = const [],
    this.filterType,
    this.searchQuery,
    this.fieldId,
    this.aggregationType,
  });

  /// The type of the service.  * `local_baserow_get_row` - local_baserow_get_row * `local_baserow_list_rows` - local_baserow_list_rows * `local_baserow_aggregate_rows` - local_baserow_aggregate_rows * `local_baserow_upsert_row` - local_baserow_upsert_row * `local_baserow_delete_row` - local_baserow_delete_row
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type40dEnum? type;

  /// Human name for this data source.
  String? name;

  /// Page this data source is linked to.
  int? pageId;

  /// If provided, creates the data_source before the data_source with the given id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? beforeId;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// The id of the Baserow view we want the data for.
  int? viewId;

  List<LocalBaserowTableServiceFilter> filters;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  /// The query to apply to the service to narrow the results down.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchQuery;

  /// The id of the Baserow field we want to aggregate on.
  int? fieldId;

  /// The field aggregation type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? aggregationType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowAggregateRowsCreateDataSource &&
    other.type == type &&
    other.name == name &&
    other.pageId == pageId &&
    other.beforeId == beforeId &&
    other.tableId == tableId &&
    other.integrationId == integrationId &&
    other.viewId == viewId &&
    _deepEquality.equals(other.filters, filters) &&
    other.filterType == filterType &&
    other.searchQuery == searchQuery &&
    other.fieldId == fieldId &&
    other.aggregationType == aggregationType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (pageId == null ? 0 : pageId!.hashCode) +
    (beforeId == null ? 0 : beforeId!.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode) +
    (filters.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (searchQuery == null ? 0 : searchQuery!.hashCode) +
    (fieldId == null ? 0 : fieldId!.hashCode) +
    (aggregationType == null ? 0 : aggregationType!.hashCode);

  @override
  String toString() => 'LocalBaserowAggregateRowsCreateDataSource[type=$type, name=$name, pageId=$pageId, beforeId=$beforeId, tableId=$tableId, integrationId=$integrationId, viewId=$viewId, filters=$filters, filterType=$filterType, searchQuery=$searchQuery, fieldId=$fieldId, aggregationType=$aggregationType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.pageId != null) {
      json[r'page_id'] = this.pageId;
    } else {
      json[r'page_id'] = null;
    }
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
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
    if (this.fieldId != null) {
      json[r'field_id'] = this.fieldId;
    } else {
      json[r'field_id'] = null;
    }
    if (this.aggregationType != null) {
      json[r'aggregation_type'] = this.aggregationType;
    } else {
      json[r'aggregation_type'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowAggregateRowsCreateDataSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowAggregateRowsCreateDataSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowAggregateRowsCreateDataSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowAggregateRowsCreateDataSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowAggregateRowsCreateDataSource(
        type: Type40dEnum.fromJson(json[r'type']),
        name: mapValueOfType<String>(json, r'name'),
        pageId: mapValueOfType<int>(json, r'page_id'),
        beforeId: mapValueOfType<int>(json, r'before_id'),
        tableId: mapValueOfType<int>(json, r'table_id'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        searchQuery: mapValueOfType<String>(json, r'search_query'),
        fieldId: mapValueOfType<int>(json, r'field_id'),
        aggregationType: mapValueOfType<String>(json, r'aggregation_type'),
      );
    }
    return null;
  }

  static List<LocalBaserowAggregateRowsCreateDataSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowAggregateRowsCreateDataSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowAggregateRowsCreateDataSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowAggregateRowsCreateDataSource> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowAggregateRowsCreateDataSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowAggregateRowsCreateDataSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowAggregateRowsCreateDataSource-objects as value to a dart map
  static Map<String, List<LocalBaserowAggregateRowsCreateDataSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowAggregateRowsCreateDataSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowAggregateRowsCreateDataSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

