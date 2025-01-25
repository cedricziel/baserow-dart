//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableDataSyncDataSync {
  /// Returns a new [LocalBaserowTableDataSyncDataSync] instance.
  LocalBaserowTableDataSyncDataSync({
    required this.id,
    required this.type,
    this.syncedProperties = const [],
    this.lastSync,
    this.lastError,
    required this.sourceTableId,
  });

  int id;

  String type;

  List<DataSyncSyncedProperty> syncedProperties;

  /// Timestamp when the table was last synced.
  DateTime? lastSync;

  String? lastError;

  /// The ID of the source table that must be synced.
  int sourceTableId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableDataSyncDataSync &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.lastSync == lastSync &&
    other.lastError == lastError &&
    other.sourceTableId == sourceTableId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (syncedProperties.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode) +
    (sourceTableId.hashCode);

  @override
  String toString() => 'LocalBaserowTableDataSyncDataSync[id=$id, type=$type, syncedProperties=$syncedProperties, lastSync=$lastSync, lastError=$lastError, sourceTableId=$sourceTableId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'synced_properties'] = this.syncedProperties;
    if (this.lastSync != null) {
      json[r'last_sync'] = this.lastSync!.toUtc().toIso8601String();
    } else {
      json[r'last_sync'] = null;
    }
    if (this.lastError != null) {
      json[r'last_error'] = this.lastError;
    } else {
      json[r'last_error'] = null;
    }
      json[r'source_table_id'] = this.sourceTableId;
    return json;
  }

  /// Returns a new [LocalBaserowTableDataSyncDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableDataSyncDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableDataSyncDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableDataSyncDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableDataSyncDataSync(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        syncedProperties: DataSyncSyncedProperty.listFromJson(json[r'synced_properties']),
        lastSync: mapDateTime(json, r'last_sync', r''),
        lastError: mapValueOfType<String>(json, r'last_error'),
        sourceTableId: mapValueOfType<int>(json, r'source_table_id')!,
      );
    }
    return null;
  }

  static List<LocalBaserowTableDataSyncDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableDataSyncDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableDataSyncDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableDataSyncDataSync> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableDataSyncDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableDataSyncDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableDataSyncDataSync-objects as value to a dart map
  static Map<String, List<LocalBaserowTableDataSyncDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableDataSyncDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableDataSyncDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'synced_properties',
    'source_table_id',
  };
}

