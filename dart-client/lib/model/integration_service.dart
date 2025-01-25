//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class IntegrationService {
  /// Returns a new [IntegrationService] instance.
  IntegrationService({
    this.filters = const [],
    this.searchQuery,
    this.rowId,
    this.tableId,
    this.integrationId,
    this.viewId,
    this.sortings = const [],
    this.fieldId,
    this.fieldMappings = const [],
  });

  List<LocalBaserowTableServiceFilter> filters;

  /// Any search queries to apply to the service when it is dispatched.
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

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// The id of the Baserow view we want the data for.
  int? viewId;

  List<LocalBaserowTableServiceSort> sortings;

  /// The id of the Baserow field we want to aggregate on.
  int? fieldId;

  /// The field mapping associated with this service.
  List<LocalBaserowTableServiceFieldMapping> fieldMappings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IntegrationService &&
    _deepEquality.equals(other.filters, filters) &&
    other.searchQuery == searchQuery &&
    other.rowId == rowId &&
    other.tableId == tableId &&
    other.integrationId == integrationId &&
    other.viewId == viewId &&
    _deepEquality.equals(other.sortings, sortings) &&
    other.fieldId == fieldId &&
    _deepEquality.equals(other.fieldMappings, fieldMappings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filters.hashCode) +
    (searchQuery == null ? 0 : searchQuery!.hashCode) +
    (rowId == null ? 0 : rowId!.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode) +
    (sortings.hashCode) +
    (fieldId == null ? 0 : fieldId!.hashCode) +
    (fieldMappings.hashCode);

  @override
  String toString() => 'IntegrationService[filters=$filters, searchQuery=$searchQuery, rowId=$rowId, tableId=$tableId, integrationId=$integrationId, viewId=$viewId, sortings=$sortings, fieldId=$fieldId, fieldMappings=$fieldMappings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filters'] = this.filters;
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
      json[r'sortings'] = this.sortings;
    if (this.fieldId != null) {
      json[r'field_id'] = this.fieldId;
    } else {
      json[r'field_id'] = null;
    }
      json[r'field_mappings'] = this.fieldMappings;
    return json;
  }

  /// Returns a new [IntegrationService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IntegrationService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IntegrationService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IntegrationService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IntegrationService(
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        searchQuery: mapValueOfType<String>(json, r'search_query'),
        rowId: mapValueOfType<String>(json, r'row_id'),
        tableId: mapValueOfType<int>(json, r'table_id'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
        sortings: LocalBaserowTableServiceSort.listFromJson(json[r'sortings']),
        fieldId: mapValueOfType<int>(json, r'field_id'),
        fieldMappings: LocalBaserowTableServiceFieldMapping.listFromJson(json[r'field_mappings']),
      );
    }
    return null;
  }

  static List<IntegrationService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IntegrationService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IntegrationService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IntegrationService> mapFromJson(dynamic json) {
    final map = <String, IntegrationService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntegrationService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IntegrationService-objects as value to a dart map
  static Map<String, List<IntegrationService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IntegrationService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IntegrationService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

