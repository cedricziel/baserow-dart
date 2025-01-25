//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DuplicateFieldJobCreateJob {
  /// Returns a new [DuplicateFieldJobCreateJob] instance.
  DuplicateFieldJobCreateJob({
    required this.type,
    required this.fieldId,
    this.duplicateData = false,
  });

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  /// The ID of the field to duplicate.
  int fieldId;

  /// Whether to duplicate the data of the field.
  bool duplicateData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DuplicateFieldJobCreateJob &&
    other.type == type &&
    other.fieldId == fieldId &&
    other.duplicateData == duplicateData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (fieldId.hashCode) +
    (duplicateData.hashCode);

  @override
  String toString() => 'DuplicateFieldJobCreateJob[type=$type, fieldId=$fieldId, duplicateData=$duplicateData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'field_id'] = this.fieldId;
      json[r'duplicate_data'] = this.duplicateData;
    return json;
  }

  /// Returns a new [DuplicateFieldJobCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DuplicateFieldJobCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DuplicateFieldJobCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DuplicateFieldJobCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DuplicateFieldJobCreateJob(
        type: Type99fEnum.fromJson(json[r'type'])!,
        fieldId: mapValueOfType<int>(json, r'field_id')!,
        duplicateData: mapValueOfType<bool>(json, r'duplicate_data') ?? false,
      );
    }
    return null;
  }

  static List<DuplicateFieldJobCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DuplicateFieldJobCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DuplicateFieldJobCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DuplicateFieldJobCreateJob> mapFromJson(dynamic json) {
    final map = <String, DuplicateFieldJobCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DuplicateFieldJobCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DuplicateFieldJobCreateJob-objects as value to a dart map
  static Map<String, List<DuplicateFieldJobCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DuplicateFieldJobCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DuplicateFieldJobCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'field_id',
  };
}

