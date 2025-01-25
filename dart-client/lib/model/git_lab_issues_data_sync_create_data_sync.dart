//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GitLabIssuesDataSyncCreateDataSync {
  /// Returns a new [GitLabIssuesDataSyncCreateDataSync] instance.
  GitLabIssuesDataSyncCreateDataSync({
    this.syncedProperties = const [],
    required this.type,
    required this.tableName,
    this.gitlabUrl,
    required this.gitlabProjectId,
  });

  List<String> syncedProperties;

  /// The type of the data sync table that must be created.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  String tableName;

  /// The base URL to your GitLab instance (e.g. https://gitlab.com)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitlabUrl;

  /// The ID of the GitLab project where to sync the issues with.
  String gitlabProjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitLabIssuesDataSyncCreateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.type == type &&
    other.tableName == tableName &&
    other.gitlabUrl == gitlabUrl &&
    other.gitlabProjectId == gitlabProjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (type.hashCode) +
    (tableName.hashCode) +
    (gitlabUrl == null ? 0 : gitlabUrl!.hashCode) +
    (gitlabProjectId.hashCode);

  @override
  String toString() => 'GitLabIssuesDataSyncCreateDataSync[syncedProperties=$syncedProperties, type=$type, tableName=$tableName, gitlabUrl=$gitlabUrl, gitlabProjectId=$gitlabProjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'type'] = this.type;
      json[r'table_name'] = this.tableName;
    if (this.gitlabUrl != null) {
      json[r'gitlab_url'] = this.gitlabUrl;
    } else {
      json[r'gitlab_url'] = null;
    }
      json[r'gitlab_project_id'] = this.gitlabProjectId;
    return json;
  }

  /// Returns a new [GitLabIssuesDataSyncCreateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitLabIssuesDataSyncCreateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitLabIssuesDataSyncCreateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitLabIssuesDataSyncCreateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitLabIssuesDataSyncCreateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: TypeD46Enum.fromJson(json[r'type'])!,
        tableName: mapValueOfType<String>(json, r'table_name')!,
        gitlabUrl: mapValueOfType<String>(json, r'gitlab_url'),
        gitlabProjectId: mapValueOfType<String>(json, r'gitlab_project_id')!,
      );
    }
    return null;
  }

  static List<GitLabIssuesDataSyncCreateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitLabIssuesDataSyncCreateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitLabIssuesDataSyncCreateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitLabIssuesDataSyncCreateDataSync> mapFromJson(dynamic json) {
    final map = <String, GitLabIssuesDataSyncCreateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitLabIssuesDataSyncCreateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitLabIssuesDataSyncCreateDataSync-objects as value to a dart map
  static Map<String, List<GitLabIssuesDataSyncCreateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitLabIssuesDataSyncCreateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitLabIssuesDataSyncCreateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'synced_properties',
    'type',
    'table_name',
    'gitlab_project_id',
  };
}

