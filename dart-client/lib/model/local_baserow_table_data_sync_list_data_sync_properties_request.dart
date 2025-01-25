//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableDataSyncListDataSyncPropertiesRequest {
  /// Returns a new [LocalBaserowTableDataSyncListDataSyncPropertiesRequest] instance.
  LocalBaserowTableDataSyncListDataSyncPropertiesRequest({
    required this.type,
    required this.sourceTableId,
  });

  /// The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  /// The ID of the source table that must be synced.
  int sourceTableId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableDataSyncListDataSyncPropertiesRequest &&
    other.type == type &&
    other.sourceTableId == sourceTableId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (sourceTableId.hashCode);

  @override
  String toString() => 'LocalBaserowTableDataSyncListDataSyncPropertiesRequest[type=$type, sourceTableId=$sourceTableId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'source_table_id'] = this.sourceTableId;
    return json;
  }

  /// Returns a new [LocalBaserowTableDataSyncListDataSyncPropertiesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableDataSyncListDataSyncPropertiesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableDataSyncListDataSyncPropertiesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableDataSyncListDataSyncPropertiesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableDataSyncListDataSyncPropertiesRequest(
        type: TypeD46Enum.fromJson(json[r'type'])!,
        sourceTableId: mapValueOfType<int>(json, r'source_table_id')!,
      );
    }
    return null;
  }

  static List<LocalBaserowTableDataSyncListDataSyncPropertiesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableDataSyncListDataSyncPropertiesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableDataSyncListDataSyncPropertiesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableDataSyncListDataSyncPropertiesRequest> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableDataSyncListDataSyncPropertiesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableDataSyncListDataSyncPropertiesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableDataSyncListDataSyncPropertiesRequest-objects as value to a dart map
  static Map<String, List<LocalBaserowTableDataSyncListDataSyncPropertiesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableDataSyncListDataSyncPropertiesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableDataSyncListDataSyncPropertiesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'source_table_id',
  };
}

