//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JiraIssuesDataSyncDataSync {
  /// Returns a new [JiraIssuesDataSyncDataSync] instance.
  JiraIssuesDataSyncDataSync({
    required this.id,
    required this.type,
    this.syncedProperties = const [],
    this.lastSync,
    this.lastError,
    required this.jiraUrl,
    this.jiraProjectKey,
    required this.jiraUsername,
  });

  int id;

  String type;

  List<DataSyncSyncedProperty> syncedProperties;

  /// Timestamp when the table was last synced.
  DateTime? lastSync;

  String? lastError;

  /// The base URL of your Jira instance (e.g., https://your-domain.atlassian.net).
  String jiraUrl;

  /// The project key of the Jira project (e.g., PROJ).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jiraProjectKey;

  /// The username of the Jira account used to authenticate.
  String jiraUsername;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JiraIssuesDataSyncDataSync &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.lastSync == lastSync &&
    other.lastError == lastError &&
    other.jiraUrl == jiraUrl &&
    other.jiraProjectKey == jiraProjectKey &&
    other.jiraUsername == jiraUsername;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (syncedProperties.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode) +
    (jiraUrl.hashCode) +
    (jiraProjectKey == null ? 0 : jiraProjectKey!.hashCode) +
    (jiraUsername.hashCode);

  @override
  String toString() => 'JiraIssuesDataSyncDataSync[id=$id, type=$type, syncedProperties=$syncedProperties, lastSync=$lastSync, lastError=$lastError, jiraUrl=$jiraUrl, jiraProjectKey=$jiraProjectKey, jiraUsername=$jiraUsername]';

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
      json[r'jira_url'] = this.jiraUrl;
    if (this.jiraProjectKey != null) {
      json[r'jira_project_key'] = this.jiraProjectKey;
    } else {
      json[r'jira_project_key'] = null;
    }
      json[r'jira_username'] = this.jiraUsername;
    return json;
  }

  /// Returns a new [JiraIssuesDataSyncDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JiraIssuesDataSyncDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JiraIssuesDataSyncDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JiraIssuesDataSyncDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JiraIssuesDataSyncDataSync(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        syncedProperties: DataSyncSyncedProperty.listFromJson(json[r'synced_properties']),
        lastSync: mapDateTime(json, r'last_sync', r''),
        lastError: mapValueOfType<String>(json, r'last_error'),
        jiraUrl: mapValueOfType<String>(json, r'jira_url')!,
        jiraProjectKey: mapValueOfType<String>(json, r'jira_project_key'),
        jiraUsername: mapValueOfType<String>(json, r'jira_username')!,
      );
    }
    return null;
  }

  static List<JiraIssuesDataSyncDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JiraIssuesDataSyncDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JiraIssuesDataSyncDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JiraIssuesDataSyncDataSync> mapFromJson(dynamic json) {
    final map = <String, JiraIssuesDataSyncDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JiraIssuesDataSyncDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JiraIssuesDataSyncDataSync-objects as value to a dart map
  static Map<String, List<JiraIssuesDataSyncDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JiraIssuesDataSyncDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JiraIssuesDataSyncDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'synced_properties',
    'jira_url',
    'jira_username',
  };
}

