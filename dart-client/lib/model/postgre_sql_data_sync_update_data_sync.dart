//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PostgreSQLDataSyncUpdateDataSync {
  /// Returns a new [PostgreSQLDataSyncUpdateDataSync] instance.
  PostgreSQLDataSyncUpdateDataSync({
    this.syncedProperties = const [],
    required this.postgresqlHost,
    required this.postgresqlUsername,
    this.postgresqlPort,
    required this.postgresqlDatabase,
    this.postgresqlSchema,
    required this.postgresqlTable,
    this.postgresqlSslmode,
  });

  List<String> syncedProperties;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostgreSQLDataSyncUpdateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.postgresqlHost == postgresqlHost &&
    other.postgresqlUsername == postgresqlUsername &&
    other.postgresqlPort == postgresqlPort &&
    other.postgresqlDatabase == postgresqlDatabase &&
    other.postgresqlSchema == postgresqlSchema &&
    other.postgresqlTable == postgresqlTable &&
    other.postgresqlSslmode == postgresqlSslmode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (postgresqlHost.hashCode) +
    (postgresqlUsername.hashCode) +
    (postgresqlPort == null ? 0 : postgresqlPort!.hashCode) +
    (postgresqlDatabase.hashCode) +
    (postgresqlSchema == null ? 0 : postgresqlSchema!.hashCode) +
    (postgresqlTable.hashCode) +
    (postgresqlSslmode == null ? 0 : postgresqlSslmode!.hashCode);

  @override
  String toString() => 'PostgreSQLDataSyncUpdateDataSync[syncedProperties=$syncedProperties, postgresqlHost=$postgresqlHost, postgresqlUsername=$postgresqlUsername, postgresqlPort=$postgresqlPort, postgresqlDatabase=$postgresqlDatabase, postgresqlSchema=$postgresqlSchema, postgresqlTable=$postgresqlTable, postgresqlSslmode=$postgresqlSslmode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
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
    return json;
  }

  /// Returns a new [PostgreSQLDataSyncUpdateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostgreSQLDataSyncUpdateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostgreSQLDataSyncUpdateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostgreSQLDataSyncUpdateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostgreSQLDataSyncUpdateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        postgresqlHost: mapValueOfType<String>(json, r'postgresql_host')!,
        postgresqlUsername: mapValueOfType<String>(json, r'postgresql_username')!,
        postgresqlPort: mapValueOfType<int>(json, r'postgresql_port'),
        postgresqlDatabase: mapValueOfType<String>(json, r'postgresql_database')!,
        postgresqlSchema: mapValueOfType<String>(json, r'postgresql_schema'),
        postgresqlTable: mapValueOfType<String>(json, r'postgresql_table')!,
        postgresqlSslmode: PostgresqlSslmodeEnum.fromJson(json[r'postgresql_sslmode']),
      );
    }
    return null;
  }

  static List<PostgreSQLDataSyncUpdateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostgreSQLDataSyncUpdateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostgreSQLDataSyncUpdateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostgreSQLDataSyncUpdateDataSync> mapFromJson(dynamic json) {
    final map = <String, PostgreSQLDataSyncUpdateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostgreSQLDataSyncUpdateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostgreSQLDataSyncUpdateDataSync-objects as value to a dart map
  static Map<String, List<PostgreSQLDataSyncUpdateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostgreSQLDataSyncUpdateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostgreSQLDataSyncUpdateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'postgresql_host',
    'postgresql_username',
    'postgresql_database',
    'postgresql_table',
  };
}

