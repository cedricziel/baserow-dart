//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableDataSyncUpdateDataSync {
  /// Returns a new [LocalBaserowTableDataSyncUpdateDataSync] instance.
  LocalBaserowTableDataSyncUpdateDataSync({
    this.syncedProperties = const [],
    required this.sourceTableId,
  });

  List<String> syncedProperties;

  /// The ID of the source table that must be synced.
  int sourceTableId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableDataSyncUpdateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.sourceTableId == sourceTableId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (sourceTableId.hashCode);

  @override
  String toString() => 'LocalBaserowTableDataSyncUpdateDataSync[syncedProperties=$syncedProperties, sourceTableId=$sourceTableId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'source_table_id'] = this.sourceTableId;
    return json;
  }

  /// Returns a new [LocalBaserowTableDataSyncUpdateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableDataSyncUpdateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableDataSyncUpdateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableDataSyncUpdateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableDataSyncUpdateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sourceTableId: mapValueOfType<int>(json, r'source_table_id')!,
      );
    }
    return null;
  }

  static List<LocalBaserowTableDataSyncUpdateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableDataSyncUpdateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableDataSyncUpdateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableDataSyncUpdateDataSync> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableDataSyncUpdateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableDataSyncUpdateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableDataSyncUpdateDataSync-objects as value to a dart map
  static Map<String, List<LocalBaserowTableDataSyncUpdateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableDataSyncUpdateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableDataSyncUpdateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'source_table_id',
  };
}

