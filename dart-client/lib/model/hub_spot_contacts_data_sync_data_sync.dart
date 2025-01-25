//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class HubSpotContactsDataSyncDataSync {
  /// Returns a new [HubSpotContactsDataSyncDataSync] instance.
  HubSpotContactsDataSyncDataSync({
    required this.id,
    required this.type,
    this.syncedProperties = const [],
    this.lastSync,
    this.lastError,
  });

  int id;

  String type;

  List<DataSyncSyncedProperty> syncedProperties;

  /// Timestamp when the table was last synced.
  DateTime? lastSync;

  String? lastError;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HubSpotContactsDataSyncDataSync &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.lastSync == lastSync &&
    other.lastError == lastError;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (syncedProperties.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode);

  @override
  String toString() => 'HubSpotContactsDataSyncDataSync[id=$id, type=$type, syncedProperties=$syncedProperties, lastSync=$lastSync, lastError=$lastError]';

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
    return json;
  }

  /// Returns a new [HubSpotContactsDataSyncDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HubSpotContactsDataSyncDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HubSpotContactsDataSyncDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HubSpotContactsDataSyncDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HubSpotContactsDataSyncDataSync(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        syncedProperties: DataSyncSyncedProperty.listFromJson(json[r'synced_properties']),
        lastSync: mapDateTime(json, r'last_sync', r''),
        lastError: mapValueOfType<String>(json, r'last_error'),
      );
    }
    return null;
  }

  static List<HubSpotContactsDataSyncDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HubSpotContactsDataSyncDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HubSpotContactsDataSyncDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HubSpotContactsDataSyncDataSync> mapFromJson(dynamic json) {
    final map = <String, HubSpotContactsDataSyncDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HubSpotContactsDataSyncDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HubSpotContactsDataSyncDataSync-objects as value to a dart map
  static Map<String, List<HubSpotContactsDataSyncDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HubSpotContactsDataSyncDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HubSpotContactsDataSyncDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'synced_properties',
  };
}

