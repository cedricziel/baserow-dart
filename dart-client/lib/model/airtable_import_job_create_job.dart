//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AirtableImportJobCreateJob {
  /// Returns a new [AirtableImportJobCreateJob] instance.
  AirtableImportJobCreateJob({
    required this.type,
    this.workspaceId,
    required this.airtableShareUrl,
  });

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  /// The workspace ID where the Airtable base must be imported into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workspaceId;

  /// The publicly shared URL of the Airtable base (e.g. https://airtable.com/shrxxxxxxxxxxxxxx)
  String airtableShareUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AirtableImportJobCreateJob &&
    other.type == type &&
    other.workspaceId == workspaceId &&
    other.airtableShareUrl == airtableShareUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (airtableShareUrl.hashCode);

  @override
  String toString() => 'AirtableImportJobCreateJob[type=$type, workspaceId=$workspaceId, airtableShareUrl=$airtableShareUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
      json[r'airtable_share_url'] = this.airtableShareUrl;
    return json;
  }

  /// Returns a new [AirtableImportJobCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AirtableImportJobCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AirtableImportJobCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AirtableImportJobCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AirtableImportJobCreateJob(
        type: Type99fEnum.fromJson(json[r'type'])!,
        workspaceId: mapValueOfType<int>(json, r'workspace_id'),
        airtableShareUrl: mapValueOfType<String>(json, r'airtable_share_url')!,
      );
    }
    return null;
  }

  static List<AirtableImportJobCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AirtableImportJobCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AirtableImportJobCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AirtableImportJobCreateJob> mapFromJson(dynamic json) {
    final map = <String, AirtableImportJobCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AirtableImportJobCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AirtableImportJobCreateJob-objects as value to a dart map
  static Map<String, List<AirtableImportJobCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AirtableImportJobCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AirtableImportJobCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'airtable_share_url',
  };
}

