//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JiraIssuesDataSyncUpdateDataSync {
  /// Returns a new [JiraIssuesDataSyncUpdateDataSync] instance.
  JiraIssuesDataSyncUpdateDataSync({
    this.syncedProperties = const [],
    required this.jiraUrl,
    this.jiraProjectKey,
    required this.jiraUsername,
  });

  List<String> syncedProperties;

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
  bool operator ==(Object other) => identical(this, other) || other is JiraIssuesDataSyncUpdateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.jiraUrl == jiraUrl &&
    other.jiraProjectKey == jiraProjectKey &&
    other.jiraUsername == jiraUsername;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (jiraUrl.hashCode) +
    (jiraProjectKey == null ? 0 : jiraProjectKey!.hashCode) +
    (jiraUsername.hashCode);

  @override
  String toString() => 'JiraIssuesDataSyncUpdateDataSync[syncedProperties=$syncedProperties, jiraUrl=$jiraUrl, jiraProjectKey=$jiraProjectKey, jiraUsername=$jiraUsername]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'jira_url'] = this.jiraUrl;
    if (this.jiraProjectKey != null) {
      json[r'jira_project_key'] = this.jiraProjectKey;
    } else {
      json[r'jira_project_key'] = null;
    }
      json[r'jira_username'] = this.jiraUsername;
    return json;
  }

  /// Returns a new [JiraIssuesDataSyncUpdateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JiraIssuesDataSyncUpdateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JiraIssuesDataSyncUpdateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JiraIssuesDataSyncUpdateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JiraIssuesDataSyncUpdateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jiraUrl: mapValueOfType<String>(json, r'jira_url')!,
        jiraProjectKey: mapValueOfType<String>(json, r'jira_project_key'),
        jiraUsername: mapValueOfType<String>(json, r'jira_username')!,
      );
    }
    return null;
  }

  static List<JiraIssuesDataSyncUpdateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JiraIssuesDataSyncUpdateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JiraIssuesDataSyncUpdateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JiraIssuesDataSyncUpdateDataSync> mapFromJson(dynamic json) {
    final map = <String, JiraIssuesDataSyncUpdateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JiraIssuesDataSyncUpdateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JiraIssuesDataSyncUpdateDataSync-objects as value to a dart map
  static Map<String, List<JiraIssuesDataSyncUpdateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JiraIssuesDataSyncUpdateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JiraIssuesDataSyncUpdateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jira_url',
    'jira_username',
  };
}

