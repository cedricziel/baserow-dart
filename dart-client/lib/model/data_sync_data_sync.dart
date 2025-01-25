//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DataSyncDataSync {
  /// Returns a new [DataSyncDataSync] instance.
  DataSyncDataSync({
    required this.id,
    required this.type,
    this.syncedProperties = const [],
    this.lastSync,
    this.lastError,
    required this.icalUrl,
    required this.postgresqlHost,
    required this.postgresqlUsername,
    this.postgresqlPort,
    required this.postgresqlDatabase,
    this.postgresqlSchema,
    required this.postgresqlTable,
    this.postgresqlSslmode,
    required this.sourceTableId,
    required this.jiraUrl,
    this.jiraProjectKey,
    required this.jiraUsername,
    required this.githubIssuesOwner,
    required this.githubIssuesRepo,
    this.gitlabUrl,
    required this.gitlabProjectId,
  });

  int id;

  String type;

  List<DataSyncSyncedProperty> syncedProperties;

  /// Timestamp when the table was last synced.
  DateTime? lastSync;

  String? lastError;

  String icalUrl;

  String postgresqlHost;

  String postgresqlUsername;

  /// Minimum value: 0
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postgresqlPort;

  String postgresqlDatabase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postgresqlSchema;

  String postgresqlTable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PostgresqlSslmodeEnum? postgresqlSslmode;

  /// The ID of the source table that must be synced.
  int sourceTableId;

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

  /// The owner of the repository on GitHub.
  String githubIssuesOwner;

  /// The name of the repository on GitHub.
  String githubIssuesRepo;

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
  bool operator ==(Object other) => identical(this, other) || other is DataSyncDataSync &&
    other.id == id &&
    other.type == type &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.lastSync == lastSync &&
    other.lastError == lastError &&
    other.icalUrl == icalUrl &&
    other.postgresqlHost == postgresqlHost &&
    other.postgresqlUsername == postgresqlUsername &&
    other.postgresqlPort == postgresqlPort &&
    other.postgresqlDatabase == postgresqlDatabase &&
    other.postgresqlSchema == postgresqlSchema &&
    other.postgresqlTable == postgresqlTable &&
    other.postgresqlSslmode == postgresqlSslmode &&
    other.sourceTableId == sourceTableId &&
    other.jiraUrl == jiraUrl &&
    other.jiraProjectKey == jiraProjectKey &&
    other.jiraUsername == jiraUsername &&
    other.githubIssuesOwner == githubIssuesOwner &&
    other.githubIssuesRepo == githubIssuesRepo &&
    other.gitlabUrl == gitlabUrl &&
    other.gitlabProjectId == gitlabProjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (syncedProperties.hashCode) +
    (lastSync == null ? 0 : lastSync!.hashCode) +
    (lastError == null ? 0 : lastError!.hashCode) +
    (icalUrl.hashCode) +
    (postgresqlHost.hashCode) +
    (postgresqlUsername.hashCode) +
    (postgresqlPort == null ? 0 : postgresqlPort!.hashCode) +
    (postgresqlDatabase.hashCode) +
    (postgresqlSchema == null ? 0 : postgresqlSchema!.hashCode) +
    (postgresqlTable.hashCode) +
    (postgresqlSslmode == null ? 0 : postgresqlSslmode!.hashCode) +
    (sourceTableId.hashCode) +
    (jiraUrl.hashCode) +
    (jiraProjectKey == null ? 0 : jiraProjectKey!.hashCode) +
    (jiraUsername.hashCode) +
    (githubIssuesOwner.hashCode) +
    (githubIssuesRepo.hashCode) +
    (gitlabUrl == null ? 0 : gitlabUrl!.hashCode) +
    (gitlabProjectId.hashCode);

  @override
  String toString() => 'DataSyncDataSync[id=$id, type=$type, syncedProperties=$syncedProperties, lastSync=$lastSync, lastError=$lastError, icalUrl=$icalUrl, postgresqlHost=$postgresqlHost, postgresqlUsername=$postgresqlUsername, postgresqlPort=$postgresqlPort, postgresqlDatabase=$postgresqlDatabase, postgresqlSchema=$postgresqlSchema, postgresqlTable=$postgresqlTable, postgresqlSslmode=$postgresqlSslmode, sourceTableId=$sourceTableId, jiraUrl=$jiraUrl, jiraProjectKey=$jiraProjectKey, jiraUsername=$jiraUsername, githubIssuesOwner=$githubIssuesOwner, githubIssuesRepo=$githubIssuesRepo, gitlabUrl=$gitlabUrl, gitlabProjectId=$gitlabProjectId]';

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
      json[r'ical_url'] = this.icalUrl;
      json[r'postgresql_host'] = this.postgresqlHost;
      json[r'postgresql_username'] = this.postgresqlUsername;
    if (this.postgresqlPort != null) {
      json[r'postgresql_port'] = this.postgresqlPort;
    } else {
      json[r'postgresql_port'] = null;
    }
      json[r'postgresql_database'] = this.postgresqlDatabase;
    if (this.postgresqlSchema != null) {
      json[r'postgresql_schema'] = this.postgresqlSchema;
    } else {
      json[r'postgresql_schema'] = null;
    }
      json[r'postgresql_table'] = this.postgresqlTable;
    if (this.postgresqlSslmode != null) {
      json[r'postgresql_sslmode'] = this.postgresqlSslmode;
    } else {
      json[r'postgresql_sslmode'] = null;
    }
      json[r'source_table_id'] = this.sourceTableId;
      json[r'jira_url'] = this.jiraUrl;
    if (this.jiraProjectKey != null) {
      json[r'jira_project_key'] = this.jiraProjectKey;
    } else {
      json[r'jira_project_key'] = null;
    }
      json[r'jira_username'] = this.jiraUsername;
      json[r'github_issues_owner'] = this.githubIssuesOwner;
      json[r'github_issues_repo'] = this.githubIssuesRepo;
    if (this.gitlabUrl != null) {
      json[r'gitlab_url'] = this.gitlabUrl;
    } else {
      json[r'gitlab_url'] = null;
    }
      json[r'gitlab_project_id'] = this.gitlabProjectId;
    return json;
  }

  /// Returns a new [DataSyncDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DataSyncDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DataSyncDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DataSyncDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DataSyncDataSync(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        syncedProperties: DataSyncSyncedProperty.listFromJson(json[r'synced_properties']),
        lastSync: mapDateTime(json, r'last_sync', r''),
        lastError: mapValueOfType<String>(json, r'last_error'),
        icalUrl: mapValueOfType<String>(json, r'ical_url')!,
        postgresqlHost: mapValueOfType<String>(json, r'postgresql_host')!,
        postgresqlUsername: mapValueOfType<String>(json, r'postgresql_username')!,
        postgresqlPort: mapValueOfType<int>(json, r'postgresql_port'),
        postgresqlDatabase: mapValueOfType<String>(json, r'postgresql_database')!,
        postgresqlSchema: mapValueOfType<String>(json, r'postgresql_schema'),
        postgresqlTable: mapValueOfType<String>(json, r'postgresql_table')!,
        postgresqlSslmode: PostgresqlSslmodeEnum.fromJson(json[r'postgresql_sslmode']),
        sourceTableId: mapValueOfType<int>(json, r'source_table_id')!,
        jiraUrl: mapValueOfType<String>(json, r'jira_url')!,
        jiraProjectKey: mapValueOfType<String>(json, r'jira_project_key'),
        jiraUsername: mapValueOfType<String>(json, r'jira_username')!,
        githubIssuesOwner: mapValueOfType<String>(json, r'github_issues_owner')!,
        githubIssuesRepo: mapValueOfType<String>(json, r'github_issues_repo')!,
        gitlabUrl: mapValueOfType<String>(json, r'gitlab_url'),
        gitlabProjectId: mapValueOfType<String>(json, r'gitlab_project_id')!,
      );
    }
    return null;
  }

  static List<DataSyncDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DataSyncDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DataSyncDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DataSyncDataSync> mapFromJson(dynamic json) {
    final map = <String, DataSyncDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DataSyncDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DataSyncDataSync-objects as value to a dart map
  static Map<String, List<DataSyncDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DataSyncDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DataSyncDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'synced_properties',
    'ical_url',
    'postgresql_host',
    'postgresql_username',
    'postgresql_database',
    'postgresql_table',
    'source_table_id',
    'jira_url',
    'jira_username',
    'github_issues_owner',
    'github_issues_repo',
    'gitlab_project_id',
  };
}

