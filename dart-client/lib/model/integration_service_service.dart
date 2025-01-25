//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class IntegrationServiceService {
  /// Returns a new [IntegrationServiceService] instance.
  IntegrationServiceService({
    required this.id,
    this.integrationId,
    required this.type,
    this.schema = const {},
    this.contextData = const {},
    this.contextDataSchema = const {},
    this.tableId,
    this.viewId,
    this.filters = const [],
    this.filterType,
    this.searchQuery,
    this.rowId,
    this.sortings = const [],
    this.fieldId,
    this.aggregationType,
    this.fieldMappings = const [],
  });

  int id;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// The type of the service.
  String type;

  /// The schema of the service.
  Map<String, Object> schema;

  /// The context data of the service.
  Map<String, Object> contextData;

  /// The schema context data of the service.
  Map<String, Object> contextDataSchema;

  /// The id of the Baserow table we want the data for.
  int? tableId;

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

  /// A formula for defining the intended row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rowId;

  List<LocalBaserowTableServiceSort> sortings;

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

  /// The field mapping associated with this service.
  List<LocalBaserowTableServiceFieldMapping> fieldMappings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IntegrationServiceService &&
    other.id == id &&
    other.integrationId == integrationId &&
    other.type == type &&
    _deepEquality.equals(other.schema, schema) &&
    _deepEquality.equals(other.contextData, contextData) &&
    _deepEquality.equals(other.contextDataSchema, contextDataSchema) &&
    other.tableId == tableId &&
    other.viewId == viewId &&
    _deepEquality.equals(other.filters, filters) &&
    other.filterType == filterType &&
    other.searchQuery == searchQuery &&
    other.rowId == rowId &&
    _deepEquality.equals(other.sortings, sortings) &&
    other.fieldId == fieldId &&
    other.aggregationType == aggregationType &&
    _deepEquality.equals(other.fieldMappings, fieldMappings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (type.hashCode) +
    (schema.hashCode) +
    (contextData.hashCode) +
    (contextDataSchema.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode) +
    (filters.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (searchQuery == null ? 0 : searchQuery!.hashCode) +
    (rowId == null ? 0 : rowId!.hashCode) +
    (sortings.hashCode) +
    (fieldId == null ? 0 : fieldId!.hashCode) +
    (aggregationType == null ? 0 : aggregationType!.hashCode) +
    (fieldMappings.hashCode);

  @override
  String toString() => 'IntegrationServiceService[id=$id, integrationId=$integrationId, type=$type, schema=$schema, contextData=$contextData, contextDataSchema=$contextDataSchema, tableId=$tableId, viewId=$viewId, filters=$filters, filterType=$filterType, searchQuery=$searchQuery, rowId=$rowId, sortings=$sortings, fieldId=$fieldId, aggregationType=$aggregationType, fieldMappings=$fieldMappings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
      json[r'type'] = this.type;
      json[r'schema'] = this.schema;
      json[r'context_data'] = this.contextData;
      json[r'context_data_schema'] = this.contextDataSchema;
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
    if (this.rowId != null) {
      json[r'row_id'] = this.rowId;
    } else {
      json[r'row_id'] = null;
    }
      json[r'sortings'] = this.sortings;
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
      json[r'field_mappings'] = this.fieldMappings;
    return json;
  }

  /// Returns a new [IntegrationServiceService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IntegrationServiceService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IntegrationServiceService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IntegrationServiceService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IntegrationServiceService(
        id: mapValueOfType<int>(json, r'id')!,
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        type: mapValueOfType<String>(json, r'type')!,
        schema: mapCastOfType<String, Object>(json, r'schema')!,
        contextData: mapCastOfType<String, Object>(json, r'context_data')!,
        contextDataSchema: mapCastOfType<String, Object>(json, r'context_data_schema')!,
        tableId: mapValueOfType<int>(json, r'table_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        searchQuery: mapValueOfType<String>(json, r'search_query'),
        rowId: mapValueOfType<String>(json, r'row_id'),
        sortings: LocalBaserowTableServiceSort.listFromJson(json[r'sortings']),
        fieldId: mapValueOfType<int>(json, r'field_id'),
        aggregationType: mapValueOfType<String>(json, r'aggregation_type'),
        fieldMappings: LocalBaserowTableServiceFieldMapping.listFromJson(json[r'field_mappings']),
      );
    }
    return null;
  }

  static List<IntegrationServiceService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IntegrationServiceService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IntegrationServiceService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IntegrationServiceService> mapFromJson(dynamic json) {
    final map = <String, IntegrationServiceService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntegrationServiceService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IntegrationServiceService-objects as value to a dart map
  static Map<String, List<IntegrationServiceService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IntegrationServiceService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IntegrationServiceService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'schema',
    'context_data',
    'context_data_schema',
  };
}

