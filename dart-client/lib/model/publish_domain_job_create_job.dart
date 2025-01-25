//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublishDomainJobCreateJob {
  /// Returns a new [PublishDomainJobCreateJob] instance.
  PublishDomainJobCreateJob({
    required this.type,
  });

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublishDomainJobCreateJob &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode);

  @override
  String toString() => 'PublishDomainJobCreateJob[type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [PublishDomainJobCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublishDomainJobCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublishDomainJobCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublishDomainJobCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublishDomainJobCreateJob(
        type: Type99fEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<PublishDomainJobCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublishDomainJobCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublishDomainJobCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublishDomainJobCreateJob> mapFromJson(dynamic json) {
    final map = <String, PublishDomainJobCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublishDomainJobCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublishDomainJobCreateJob-objects as value to a dart map
  static Map<String, List<PublishDomainJobCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublishDomainJobCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublishDomainJobCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}

