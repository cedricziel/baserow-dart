//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GitLabIssuesDataSyncUpdateDataSync {
  /// Returns a new [GitLabIssuesDataSyncUpdateDataSync] instance.
  GitLabIssuesDataSyncUpdateDataSync({
    this.syncedProperties = const [],
    this.gitlabUrl,
    required this.gitlabProjectId,
  });

  List<String> syncedProperties;

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
  bool operator ==(Object other) => identical(this, other) || other is GitLabIssuesDataSyncUpdateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.gitlabUrl == gitlabUrl &&
    other.gitlabProjectId == gitlabProjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (gitlabUrl == null ? 0 : gitlabUrl!.hashCode) +
    (gitlabProjectId.hashCode);

  @override
  String toString() => 'GitLabIssuesDataSyncUpdateDataSync[syncedProperties=$syncedProperties, gitlabUrl=$gitlabUrl, gitlabProjectId=$gitlabProjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
    if (this.gitlabUrl != null) {
      json[r'gitlab_url'] = this.gitlabUrl;
    } else {
      json[r'gitlab_url'] = null;
    }
      json[r'gitlab_project_id'] = this.gitlabProjectId;
    return json;
  }

  /// Returns a new [GitLabIssuesDataSyncUpdateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitLabIssuesDataSyncUpdateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitLabIssuesDataSyncUpdateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitLabIssuesDataSyncUpdateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitLabIssuesDataSyncUpdateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        gitlabUrl: mapValueOfType<String>(json, r'gitlab_url'),
        gitlabProjectId: mapValueOfType<String>(json, r'gitlab_project_id')!,
      );
    }
    return null;
  }

  static List<GitLabIssuesDataSyncUpdateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitLabIssuesDataSyncUpdateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitLabIssuesDataSyncUpdateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitLabIssuesDataSyncUpdateDataSync> mapFromJson(dynamic json) {
    final map = <String, GitLabIssuesDataSyncUpdateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitLabIssuesDataSyncUpdateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitLabIssuesDataSyncUpdateDataSync-objects as value to a dart map
  static Map<String, List<GitLabIssuesDataSyncUpdateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitLabIssuesDataSyncUpdateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitLabIssuesDataSyncUpdateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gitlab_project_id',
  };
}

