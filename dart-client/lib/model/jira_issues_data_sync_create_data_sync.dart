//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JiraIssuesDataSyncCreateDataSync {
  /// Returns a new [JiraIssuesDataSyncCreateDataSync] instance.
  JiraIssuesDataSyncCreateDataSync({
    this.syncedProperties = const [],
    required this.type,
    required this.tableName,
    required this.jiraUrl,
    this.jiraProjectKey,
    required this.jiraUsername,
  });

  List<String> syncedProperties;

  /// The type of the data sync table that must be created.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  String tableName;

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
  bool operator ==(Object other) => identical(this, other) || other is JiraIssuesDataSyncCreateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.type == type &&
    other.tableName == tableName &&
    other.jiraUrl == jiraUrl &&
    other.jiraProjectKey == jiraProjectKey &&
    other.jiraUsername == jiraUsername;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (type.hashCode) +
    (tableName.hashCode) +
    (jiraUrl.hashCode) +
    (jiraProjectKey == null ? 0 : jiraProjectKey!.hashCode) +
    (jiraUsername.hashCode);

  @override
  String toString() => 'JiraIssuesDataSyncCreateDataSync[syncedProperties=$syncedProperties, type=$type, tableName=$tableName, jiraUrl=$jiraUrl, jiraProjectKey=$jiraProjectKey, jiraUsername=$jiraUsername]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'type'] = this.type;
      json[r'table_name'] = this.tableName;
      json[r'jira_url'] = this.jiraUrl;
    if (this.jiraProjectKey != null) {
      json[r'jira_project_key'] = this.jiraProjectKey;
    } else {
      json[r'jira_project_key'] = null;
    }
      json[r'jira_username'] = this.jiraUsername;
    return json;
  }

  /// Returns a new [JiraIssuesDataSyncCreateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JiraIssuesDataSyncCreateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JiraIssuesDataSyncCreateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JiraIssuesDataSyncCreateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JiraIssuesDataSyncCreateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: TypeD46Enum.fromJson(json[r'type'])!,
        tableName: mapValueOfType<String>(json, r'table_name')!,
        jiraUrl: mapValueOfType<String>(json, r'jira_url')!,
        jiraProjectKey: mapValueOfType<String>(json, r'jira_project_key'),
        jiraUsername: mapValueOfType<String>(json, r'jira_username')!,
      );
    }
    return null;
  }

  static List<JiraIssuesDataSyncCreateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JiraIssuesDataSyncCreateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JiraIssuesDataSyncCreateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JiraIssuesDataSyncCreateDataSync> mapFromJson(dynamic json) {
    final map = <String, JiraIssuesDataSyncCreateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JiraIssuesDataSyncCreateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JiraIssuesDataSyncCreateDataSync-objects as value to a dart map
  static Map<String, List<JiraIssuesDataSyncCreateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JiraIssuesDataSyncCreateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JiraIssuesDataSyncCreateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'synced_properties',
    'type',
    'table_name',
    'jira_url',
    'jira_username',
  };
}

