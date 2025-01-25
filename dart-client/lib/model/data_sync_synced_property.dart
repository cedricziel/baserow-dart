//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DataSyncSyncedProperty {
  /// Returns a new [DataSyncSyncedProperty] instance.
  DataSyncSyncedProperty({
    required this.fieldId,
    required this.key,
    this.uniquePrimary,
  });

  int fieldId;

  /// The matching `key` of the `DataSyncProperty`.
  String key;

  /// Indicates whether the data sync property is used for unique identification when syncing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? uniquePrimary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DataSyncSyncedProperty &&
    other.fieldId == fieldId &&
    other.key == key &&
    other.uniquePrimary == uniquePrimary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldId.hashCode) +
    (key.hashCode) +
    (uniquePrimary == null ? 0 : uniquePrimary!.hashCode);

  @override
  String toString() => 'DataSyncSyncedProperty[fieldId=$fieldId, key=$key, uniquePrimary=$uniquePrimary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_id'] = this.fieldId;
      json[r'key'] = this.key;
    if (this.uniquePrimary != null) {
      json[r'unique_primary'] = this.uniquePrimary;
    } else {
      json[r'unique_primary'] = null;
    }
    return json;
  }

  /// Returns a new [DataSyncSyncedProperty] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataSyncSyncedProperty? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataSyncSyncedProperty[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataSyncSyncedProperty[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataSyncSyncedProperty(
        fieldId: mapValueOfType<int>(json, r'field_id')!,
        key: mapValueOfType<String>(json, r'key')!,
        uniquePrimary: mapValueOfType<bool>(json, r'unique_primary'),
      );
    }
    return null;
  }

  static List<DataSyncSyncedProperty> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataSyncSyncedProperty>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataSyncSyncedProperty.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataSyncSyncedProperty> mapFromJson(dynamic json) {
    final map = <String, DataSyncSyncedProperty>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataSyncSyncedProperty.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataSyncSyncedProperty-objects as value to a dart map
  static Map<String, List<DataSyncSyncedProperty>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataSyncSyncedProperty>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataSyncSyncedProperty.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_id',
    'key',
  };
}

