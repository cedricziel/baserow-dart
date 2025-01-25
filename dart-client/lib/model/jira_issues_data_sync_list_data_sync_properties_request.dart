//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JiraIssuesDataSyncListDataSyncPropertiesRequest {
  /// Returns a new [JiraIssuesDataSyncListDataSyncPropertiesRequest] instance.
  JiraIssuesDataSyncListDataSyncPropertiesRequest({
    required this.type,
    required this.jiraUrl,
    this.jiraProjectKey,
    required this.jiraUsername,
  });

  /// The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

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
  bool operator ==(Object other) => identical(this, other) || other is JiraIssuesDataSyncListDataSyncPropertiesRequest &&
    other.type == type &&
    other.jiraUrl == jiraUrl &&
    other.jiraProjectKey == jiraProjectKey &&
    other.jiraUsername == jiraUsername;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (jiraUrl.hashCode) +
    (jiraProjectKey == null ? 0 : jiraProjectKey!.hashCode) +
    (jiraUsername.hashCode);

  @override
  String toString() => 'JiraIssuesDataSyncListDataSyncPropertiesRequest[type=$type, jiraUrl=$jiraUrl, jiraProjectKey=$jiraProjectKey, jiraUsername=$jiraUsername]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'jira_url'] = this.jiraUrl;
    if (this.jiraProjectKey != null) {
      json[r'jira_project_key'] = this.jiraProjectKey;
    } else {
      json[r'jira_project_key'] = null;
    }
      json[r'jira_username'] = this.jiraUsername;
    return json;
  }

  /// Returns a new [JiraIssuesDataSyncListDataSyncPropertiesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JiraIssuesDataSyncListDataSyncPropertiesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JiraIssuesDataSyncListDataSyncPropertiesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JiraIssuesDataSyncListDataSyncPropertiesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JiraIssuesDataSyncListDataSyncPropertiesRequest(
        type: TypeD46Enum.fromJson(json[r'type'])!,
        jiraUrl: mapValueOfType<String>(json, r'jira_url')!,
        jiraProjectKey: mapValueOfType<String>(json, r'jira_project_key'),
        jiraUsername: mapValueOfType<String>(json, r'jira_username')!,
      );
    }
    return null;
  }

  static List<JiraIssuesDataSyncListDataSyncPropertiesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JiraIssuesDataSyncListDataSyncPropertiesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JiraIssuesDataSyncListDataSyncPropertiesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JiraIssuesDataSyncListDataSyncPropertiesRequest> mapFromJson(dynamic json) {
    final map = <String, JiraIssuesDataSyncListDataSyncPropertiesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JiraIssuesDataSyncListDataSyncPropertiesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JiraIssuesDataSyncListDataSyncPropertiesRequest-objects as value to a dart map
  static Map<String, List<JiraIssuesDataSyncListDataSyncPropertiesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JiraIssuesDataSyncListDataSyncPropertiesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JiraIssuesDataSyncListDataSyncPropertiesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'jira_url',
    'jira_username',
  };
}

