//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ExportApplicationsJobTypeResponse {
  /// Returns a new [ExportApplicationsJobTypeResponse] instance.
  ExportApplicationsJobTypeResponse({
    required this.id,
    required this.type,
    required this.progressPercentage,
    required this.state,
    this.humanReadableError,
    required this.exportedFileName,
    required this.url,
    required this.createdOn,
    required this.workspaceId,
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

  String exportedFileName;

  String url;

  DateTime createdOn;

  /// The workspace that the applications are going to be exported from.
  int? workspaceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportApplicationsJobTypeResponse &&
    other.id == id &&
    other.type == type &&
    other.progressPercentage == progressPercentage &&
    other.state == state &&
    other.humanReadableError == humanReadableError &&
    other.exportedFileName == exportedFileName &&
    other.url == url &&
    other.createdOn == createdOn &&
    other.workspaceId == workspaceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (progressPercentage.hashCode) +
    (state.hashCode) +
    (humanReadableError == null ? 0 : humanReadableError!.hashCode) +
    (exportedFileName.hashCode) +
    (url.hashCode) +
    (createdOn.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode);

  @override
  String toString() => 'ExportApplicationsJobTypeResponse[id=$id, type=$type, progressPercentage=$progressPercentage, state=$state, humanReadableError=$humanReadableError, exportedFileName=$exportedFileName, url=$url, createdOn=$createdOn, workspaceId=$workspaceId]';

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
      json[r'exported_file_name'] = this.exportedFileName;
      json[r'url'] = this.url;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
    return json;
  }

  /// Returns a new [ExportApplicationsJobTypeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportApplicationsJobTypeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportApplicationsJobTypeResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportApplicationsJobTypeResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportApplicationsJobTypeResponse(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        progressPercentage: mapValueOfType<int>(json, r'progress_percentage')!,
        state: mapValueOfType<String>(json, r'state')!,
        humanReadableError: mapValueOfType<String>(json, r'human_readable_error'),
        exportedFileName: mapValueOfType<String>(json, r'exported_file_name')!,
        url: mapValueOfType<String>(json, r'url')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        workspaceId: mapValueOfType<int>(json, r'workspace_id'),
      );
    }
    return null;
  }

  static List<ExportApplicationsJobTypeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportApplicationsJobTypeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportApplicationsJobTypeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportApplicationsJobTypeResponse> mapFromJson(dynamic json) {
    final map = <String, ExportApplicationsJobTypeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportApplicationsJobTypeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportApplicationsJobTypeResponse-objects as value to a dart map
  static Map<String, List<ExportApplicationsJobTypeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportApplicationsJobTypeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportApplicationsJobTypeResponse.listFromJson(entry.value, growable: growable,);
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
    'exported_file_name',
    'url',
    'created_on',
    'workspace_id',
  };
}

