//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowAggregateRows {
  /// Returns a new [LocalBaserowAggregateRows] instance.
  LocalBaserowAggregateRows({
    this.filters = const [],
    this.tableId,
    this.integrationId,
    this.viewId,
    this.fieldId,
  });

  List<LocalBaserowTableServiceFilter> filters;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// The id of the Baserow view we want the data for.
  int? viewId;

  /// The id of the Baserow field we want to aggregate on.
  int? fieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowAggregateRows &&
    _deepEquality.equals(other.filters, filters) &&
    other.tableId == tableId &&
    other.integrationId == integrationId &&
    other.viewId == viewId &&
    other.fieldId == fieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filters.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (viewId == null ? 0 : viewId!.hashCode) +
    (fieldId == null ? 0 : fieldId!.hashCode);

  @override
  String toString() => 'LocalBaserowAggregateRows[filters=$filters, tableId=$tableId, integrationId=$integrationId, viewId=$viewId, fieldId=$fieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filters'] = this.filters;
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
    if (this.fieldId != null) {
      json[r'field_id'] = this.fieldId;
    } else {
      json[r'field_id'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowAggregateRows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowAggregateRows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowAggregateRows[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowAggregateRows[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowAggregateRows(
        filters: LocalBaserowTableServiceFilter.listFromJson(json[r'filters']),
        tableId: mapValueOfType<int>(json, r'table_id'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        viewId: mapValueOfType<int>(json, r'view_id'),
        fieldId: mapValueOfType<int>(json, r'field_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowAggregateRows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowAggregateRows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowAggregateRows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowAggregateRows> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowAggregateRows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowAggregateRows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowAggregateRows-objects as value to a dart map
  static Map<String, List<LocalBaserowAggregateRows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowAggregateRows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowAggregateRows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

