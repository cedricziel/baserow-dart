//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class InstallTemplateJobCreateJob {
  /// Returns a new [InstallTemplateJobCreateJob] instance.
  InstallTemplateJobCreateJob({
    required this.type,
    this.workspaceId,
    required this.templateId,
  });

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  /// The ID of the workspace where the template will be installed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workspaceId;

  /// The template ID that will be installed.
  int templateId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InstallTemplateJobCreateJob &&
    other.type == type &&
    other.workspaceId == workspaceId &&
    other.templateId == templateId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (templateId.hashCode);

  @override
  String toString() => 'InstallTemplateJobCreateJob[type=$type, workspaceId=$workspaceId, templateId=$templateId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
      json[r'template_id'] = this.templateId;
    return json;
  }

  /// Returns a new [InstallTemplateJobCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InstallTemplateJobCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InstallTemplateJobCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InstallTemplateJobCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InstallTemplateJobCreateJob(
        type: Type99fEnum.fromJson(json[r'type'])!,
        workspaceId: mapValueOfType<int>(json, r'workspace_id'),
        templateId: mapValueOfType<int>(json, r'template_id')!,
      );
    }
    return null;
  }

  static List<InstallTemplateJobCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InstallTemplateJobCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InstallTemplateJobCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InstallTemplateJobCreateJob> mapFromJson(dynamic json) {
    final map = <String, InstallTemplateJobCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InstallTemplateJobCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InstallTemplateJobCreateJob-objects as value to a dart map
  static Map<String, List<InstallTemplateJobCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InstallTemplateJobCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InstallTemplateJobCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'template_id',
  };
}

