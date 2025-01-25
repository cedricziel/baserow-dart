//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowDeleteRowPublicDataSource {
  /// Returns a new [LocalBaserowDeleteRowPublicDataSource] instance.
  LocalBaserowDeleteRowPublicDataSource({
    required this.id,
    required this.type,
    this.schema = const {},
    required this.name,
    required this.pageId,
    required this.order,
    this.contextData = const {},
    this.tableId,
    this.integrationId,
    this.rowId,
  });

  /// Data source id.
  int id;

  /// The type of the data source.
  String type;

  /// The schema of the service.
  Map<String, Object> schema;

  /// Human name for this data source.
  String name;

  /// Page this data source is linked to.
  int pageId;

  /// Lowest first.
  double order;

  /// The context data of the data source.
  Map<String, Object> contextData;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the Baserow integration we want the data for.
  int? integrationId;

  /// A formula for defining the intended row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rowId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowDeleteRowPublicDataSource &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.schema, schema) &&
    other.name == name &&
    other.pageId == pageId &&
    other.order == order &&
    _deepEquality.equals(other.contextData, contextData) &&
    other.tableId == tableId &&
    other.integrationId == integrationId &&
    other.rowId == rowId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (schema.hashCode) +
    (name.hashCode) +
    (pageId.hashCode) +
    (order.hashCode) +
    (contextData.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (rowId == null ? 0 : rowId!.hashCode);

  @override
  String toString() => 'LocalBaserowDeleteRowPublicDataSource[id=$id, type=$type, schema=$schema, name=$name, pageId=$pageId, order=$order, contextData=$contextData, tableId=$tableId, integrationId=$integrationId, rowId=$rowId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'schema'] = this.schema;
      json[r'name'] = this.name;
      json[r'page_id'] = this.pageId;
      json[r'order'] = this.order;
      json[r'context_data'] = this.contextData;
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
    if (this.rowId != null) {
      json[r'row_id'] = this.rowId;
    } else {
      json[r'row_id'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowDeleteRowPublicDataSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowDeleteRowPublicDataSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowDeleteRowPublicDataSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowDeleteRowPublicDataSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowDeleteRowPublicDataSource(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        schema: mapCastOfType<String, Object>(json, r'schema')!,
        name: mapValueOfType<String>(json, r'name')!,
        pageId: mapValueOfType<int>(json, r'page_id')!,
        order: mapValueOfType<double>(json, r'order')!,
        contextData: mapCastOfType<String, Object>(json, r'context_data')!,
        tableId: mapValueOfType<int>(json, r'table_id'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        rowId: mapValueOfType<String>(json, r'row_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowDeleteRowPublicDataSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowDeleteRowPublicDataSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowDeleteRowPublicDataSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowDeleteRowPublicDataSource> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowDeleteRowPublicDataSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowDeleteRowPublicDataSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowDeleteRowPublicDataSource-objects as value to a dart map
  static Map<String, List<LocalBaserowDeleteRowPublicDataSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowDeleteRowPublicDataSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowDeleteRowPublicDataSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'schema',
    'name',
    'page_id',
    'order',
    'context_data',
  };
}

