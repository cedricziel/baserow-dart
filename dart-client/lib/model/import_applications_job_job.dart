//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ImportApplicationsJobJob {
  /// Returns a new [ImportApplicationsJobJob] instance.
  ImportApplicationsJobJob({
    required this.id,
    required this.type,
    required this.progressPercentage,
    required this.state,
    this.humanReadableError,
    required this.installedApplications,
    required this.workspaceId,
    required this.resource,
  });

  int id;

  /// The type of the job.
  String type;

  /// A percentage indicating how far along the job is. 100 means that it's finished.
  int progressPercentage;

  /// Indicates the state of the import job.
  String state;

  /// A human readable error message indicating what went wrong.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? humanReadableError;

  Object? installedApplications;

  int workspaceId;

  ImportResource resource;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportApplicationsJobJob &&
    other.id == id &&
    other.type == type &&
    other.progressPercentage == progressPercentage &&
    other.state == state &&
    other.humanReadableError == humanReadableError &&
    other.installedApplications == installedApplications &&
    other.workspaceId == workspaceId &&
    other.resource == resource;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (progressPercentage.hashCode) +
    (state.hashCode) +
    (humanReadableError == null ? 0 : humanReadableError!.hashCode) +
    (installedApplications == null ? 0 : installedApplications!.hashCode) +
    (workspaceId.hashCode) +
    (resource.hashCode);

  @override
  String toString() => 'ImportApplicationsJobJob[id=$id, type=$type, progressPercentage=$progressPercentage, state=$state, humanReadableError=$humanReadableError, installedApplications=$installedApplications, workspaceId=$workspaceId, resource=$resource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'progress_percentage'] = this.progressPercentage;
      json[r'state'] = this.state;
    if (this.humanReadableError != null) {
      json[r'human_readable_error'] = this.humanReadableError;
    } else {
      json[r'human_readable_error'] = null;
    }
    if (this.installedApplications != null) {
      json[r'installed_applications'] = this.installedApplications;
    } else {
      json[r'installed_applications'] = null;
    }
      json[r'workspace_id'] = this.workspaceId;
      json[r'resource'] = this.resource;
    return json;
  }

  /// Returns a new [ImportApplicationsJobJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportApplicationsJobJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportApplicationsJobJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportApplicationsJobJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportApplicationsJobJob(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        progressPercentage: mapValueOfType<int>(json, r'progress_percentage')!,
        state: mapValueOfType<String>(json, r'state')!,
        humanReadableError: mapValueOfType<String>(json, r'human_readable_error'),
        installedApplications: mapValueOfType<Object>(json, r'installed_applications'),
        workspaceId: mapValueOfType<int>(json, r'workspace_id')!,
        resource: ImportResource.fromJson(json[r'resource'])!,
      );
    }
    return null;
  }

  static List<ImportApplicationsJobJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportApplicationsJobJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportApplicationsJobJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportApplicationsJobJob> mapFromJson(dynamic json) {
    final map = <String, ImportApplicationsJobJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportApplicationsJobJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportApplicationsJobJob-objects as value to a dart map
  static Map<String, List<ImportApplicationsJobJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportApplicationsJobJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportApplicationsJobJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'progress_percentage',
    'state',
    'installed_applications',
    'workspace_id',
    'resource',
  };
}

