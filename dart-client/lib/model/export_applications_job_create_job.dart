//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ExportApplicationsJobCreateJob {
  /// Returns a new [ExportApplicationsJobCreateJob] instance.
  ExportApplicationsJobCreateJob({
    required this.url,
    required this.exportedFileName,
    required this.type,
    this.applicationIds = const [],
    this.onlyStructure = false,
  });

  String url;

  String exportedFileName;

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  /// The application IDs to export. If not provided, all the applications for the workspace will be exported.
  List<int>? applicationIds;

  /// If True, only the structure of the applications will be exported. If False, the data will be included as well.
  bool onlyStructure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportApplicationsJobCreateJob &&
    other.url == url &&
    other.exportedFileName == exportedFileName &&
    other.type == type &&
    _deepEquality.equals(other.applicationIds, applicationIds) &&
    other.onlyStructure == onlyStructure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (exportedFileName.hashCode) +
    (type.hashCode) +
    (applicationIds == null ? 0 : applicationIds!.hashCode) +
    (onlyStructure.hashCode);

  @override
  String toString() => 'ExportApplicationsJobCreateJob[url=$url, exportedFileName=$exportedFileName, type=$type, applicationIds=$applicationIds, onlyStructure=$onlyStructure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'exported_file_name'] = this.exportedFileName;
      json[r'type'] = this.type;
    if (this.applicationIds != null) {
      json[r'application_ids'] = this.applicationIds;
    } else {
      json[r'application_ids'] = null;
    }
      json[r'only_structure'] = this.onlyStructure;
    return json;
  }

  /// Returns a new [ExportApplicationsJobCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportApplicationsJobCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportApplicationsJobCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportApplicationsJobCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportApplicationsJobCreateJob(
        url: mapValueOfType<String>(json, r'url')!,
        exportedFileName: mapValueOfType<String>(json, r'exported_file_name')!,
        type: Type99fEnum.fromJson(json[r'type'])!,
        applicationIds: json[r'application_ids'] is Iterable
            ? (json[r'application_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        onlyStructure: mapValueOfType<bool>(json, r'only_structure') ?? false,
      );
    }
    return null;
  }

  static List<ExportApplicationsJobCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportApplicationsJobCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportApplicationsJobCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportApplicationsJobCreateJob> mapFromJson(dynamic json) {
    final map = <String, ExportApplicationsJobCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportApplicationsJobCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportApplicationsJobCreateJob-objects as value to a dart map
  static Map<String, List<ExportApplicationsJobCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportApplicationsJobCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportApplicationsJobCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'exported_file_name',
    'type',
  };
}

