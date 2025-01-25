//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GitHubIssuesDataSyncUpdateDataSync {
  /// Returns a new [GitHubIssuesDataSyncUpdateDataSync] instance.
  GitHubIssuesDataSyncUpdateDataSync({
    this.syncedProperties = const [],
    required this.githubIssuesOwner,
    required this.githubIssuesRepo,
  });

  List<String> syncedProperties;

  /// The owner of the repository on GitHub.
  String githubIssuesOwner;

  /// The name of the repository on GitHub.
  String githubIssuesRepo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GitHubIssuesDataSyncUpdateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.githubIssuesOwner == githubIssuesOwner &&
    other.githubIssuesRepo == githubIssuesRepo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (githubIssuesOwner.hashCode) +
    (githubIssuesRepo.hashCode);

  @override
  String toString() => 'GitHubIssuesDataSyncUpdateDataSync[syncedProperties=$syncedProperties, githubIssuesOwner=$githubIssuesOwner, githubIssuesRepo=$githubIssuesRepo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'github_issues_owner'] = this.githubIssuesOwner;
      json[r'github_issues_repo'] = this.githubIssuesRepo;
    return json;
  }

  /// Returns a new [GitHubIssuesDataSyncUpdateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GitHubIssuesDataSyncUpdateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GitHubIssuesDataSyncUpdateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GitHubIssuesDataSyncUpdateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GitHubIssuesDataSyncUpdateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        githubIssuesOwner: mapValueOfType<String>(json, r'github_issues_owner')!,
        githubIssuesRepo: mapValueOfType<String>(json, r'github_issues_repo')!,
      );
    }
    return null;
  }

  static List<GitHubIssuesDataSyncUpdateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GitHubIssuesDataSyncUpdateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GitHubIssuesDataSyncUpdateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GitHubIssuesDataSyncUpdateDataSync> mapFromJson(dynamic json) {
    final map = <String, GitHubIssuesDataSyncUpdateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GitHubIssuesDataSyncUpdateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GitHubIssuesDataSyncUpdateDataSync-objects as value to a dart map
  static Map<String, List<GitHubIssuesDataSyncUpdateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GitHubIssuesDataSyncUpdateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GitHubIssuesDataSyncUpdateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'github_issues_owner',
    'github_issues_repo',
  };
}

