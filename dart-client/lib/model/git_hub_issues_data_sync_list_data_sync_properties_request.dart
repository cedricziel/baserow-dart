//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GitHubIssuesDataSyncListDataSyncPropertiesRequest {
  /// Returns a new [GitHubIssuesDataSyncListDataSyncPropertiesRequest] instance.
  GitHubIssuesDataSyncListDataSyncPropertiesRequest({
    required this.type,
    required this.githubIssuesOwner,
    required this.githubIssuesRepo,
  });

  /// The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  /// The owner of the repository on GitHub.
  String githubIssuesOwner;

  /// The name of the repository on GitHub.
  String githubIssuesRepo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitHubIssuesDataSyncListDataSyncPropertiesRequest &&
    other.type == type &&
    other.githubIssuesOwner == githubIssuesOwner &&
    other.githubIssuesRepo == githubIssuesRepo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (githubIssuesOwner.hashCode) +
    (githubIssuesRepo.hashCode);

  @override
  String toString() => 'GitHubIssuesDataSyncListDataSyncPropertiesRequest[type=$type, githubIssuesOwner=$githubIssuesOwner, githubIssuesRepo=$githubIssuesRepo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'github_issues_owner'] = this.githubIssuesOwner;
      json[r'github_issues_repo'] = this.githubIssuesRepo;
    return json;
  }

  /// Returns a new [GitHubIssuesDataSyncListDataSyncPropertiesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitHubIssuesDataSyncListDataSyncPropertiesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitHubIssuesDataSyncListDataSyncPropertiesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitHubIssuesDataSyncListDataSyncPropertiesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitHubIssuesDataSyncListDataSyncPropertiesRequest(
        type: TypeD46Enum.fromJson(json[r'type'])!,
        githubIssuesOwner: mapValueOfType<String>(json, r'github_issues_owner')!,
        githubIssuesRepo: mapValueOfType<String>(json, r'github_issues_repo')!,
      );
    }
    return null;
  }

  static List<GitHubIssuesDataSyncListDataSyncPropertiesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitHubIssuesDataSyncListDataSyncPropertiesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitHubIssuesDataSyncListDataSyncPropertiesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitHubIssuesDataSyncListDataSyncPropertiesRequest> mapFromJson(dynamic json) {
    final map = <String, GitHubIssuesDataSyncListDataSyncPropertiesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitHubIssuesDataSyncListDataSyncPropertiesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitHubIssuesDataSyncListDataSyncPropertiesRequest-objects as value to a dart map
  static Map<String, List<GitHubIssuesDataSyncListDataSyncPropertiesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitHubIssuesDataSyncListDataSyncPropertiesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitHubIssuesDataSyncListDataSyncPropertiesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'github_issues_owner',
    'github_issues_repo',
  };
}

