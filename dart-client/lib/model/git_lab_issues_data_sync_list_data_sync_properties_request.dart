//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GitLabIssuesDataSyncListDataSyncPropertiesRequest {
  /// Returns a new [GitLabIssuesDataSyncListDataSyncPropertiesRequest] instance.
  GitLabIssuesDataSyncListDataSyncPropertiesRequest({
    required this.type,
    this.gitlabUrl,
    required this.gitlabProjectId,
  });

  /// The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

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
  bool operator ==(Object other) => identical(this, other) || other is GitLabIssuesDataSyncListDataSyncPropertiesRequest &&
    other.type == type &&
    other.gitlabUrl == gitlabUrl &&
    other.gitlabProjectId == gitlabProjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (gitlabUrl == null ? 0 : gitlabUrl!.hashCode) +
    (gitlabProjectId.hashCode);

  @override
  String toString() => 'GitLabIssuesDataSyncListDataSyncPropertiesRequest[type=$type, gitlabUrl=$gitlabUrl, gitlabProjectId=$gitlabProjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.gitlabUrl != null) {
      json[r'gitlab_url'] = this.gitlabUrl;
    } else {
      json[r'gitlab_url'] = null;
    }
      json[r'gitlab_project_id'] = this.gitlabProjectId;
    return json;
  }

  /// Returns a new [GitLabIssuesDataSyncListDataSyncPropertiesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitLabIssuesDataSyncListDataSyncPropertiesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitLabIssuesDataSyncListDataSyncPropertiesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitLabIssuesDataSyncListDataSyncPropertiesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitLabIssuesDataSyncListDataSyncPropertiesRequest(
        type: TypeD46Enum.fromJson(json[r'type'])!,
        gitlabUrl: mapValueOfType<String>(json, r'gitlab_url'),
        gitlabProjectId: mapValueOfType<String>(json, r'gitlab_project_id')!,
      );
    }
    return null;
  }

  static List<GitLabIssuesDataSyncListDataSyncPropertiesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitLabIssuesDataSyncListDataSyncPropertiesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitLabIssuesDataSyncListDataSyncPropertiesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitLabIssuesDataSyncListDataSyncPropertiesRequest> mapFromJson(dynamic json) {
    final map = <String, GitLabIssuesDataSyncListDataSyncPropertiesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitLabIssuesDataSyncListDataSyncPropertiesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitLabIssuesDataSyncListDataSyncPropertiesRequest-objects as value to a dart map
  static Map<String, List<GitLabIssuesDataSyncListDataSyncPropertiesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitLabIssuesDataSyncListDataSyncPropertiesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitLabIssuesDataSyncListDataSyncPropertiesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'gitlab_project_id',
  };
}

