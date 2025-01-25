//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ExportJob {
  /// Returns a new [ExportJob] instance.
  ExportJob({
    required this.id,
    this.table,
    this.view,
    required this.exporterType,
    required this.state,
    required this.status,
    this.exportedFileName,
    required this.createdAt,
    this.progressPercentage,
    required this.url,
  });

  int id;

  int? table;

  int? view;

  String exporterType;

  StateEnum state;

  /// DEPRECATED: Use state instead
  String status;

  String? exportedFileName;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? progressPercentage;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportJob &&
    other.id == id &&
    other.table == table &&
    other.view == view &&
    other.exporterType == exporterType &&
    other.state == state &&
    other.status == status &&
    other.exportedFileName == exportedFileName &&
    other.createdAt == createdAt &&
    other.progressPercentage == progressPercentage &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (table == null ? 0 : table!.hashCode) +
    (view == null ? 0 : view!.hashCode) +
    (exporterType.hashCode) +
    (state.hashCode) +
    (status.hashCode) +
    (exportedFileName == null ? 0 : exportedFileName!.hashCode) +
    (createdAt.hashCode) +
    (progressPercentage == null ? 0 : progressPercentage!.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'ExportJob[id=$id, table=$table, view=$view, exporterType=$exporterType, state=$state, status=$status, exportedFileName=$exportedFileName, createdAt=$createdAt, progressPercentage=$progressPercentage, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.table != null) {
      json[r'table'] = this.table;
    } else {
      json[r'table'] = null;
    }
    if (this.view != null) {
      json[r'view'] = this.view;
    } else {
      json[r'view'] = null;
    }
      json[r'exporter_type'] = this.exporterType;
      json[r'state'] = this.state;
      json[r'status'] = this.status;
    if (this.exportedFileName != null) {
      json[r'exported_file_name'] = this.exportedFileName;
    } else {
      json[r'exported_file_name'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.progressPercentage != null) {
      json[r'progress_percentage'] = this.progressPercentage;
    } else {
      json[r'progress_percentage'] = null;
    }
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [ExportJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExportJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExportJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExportJob(
        id: mapValueOfType<int>(json, r'id')!,
        table: mapValueOfType<int>(json, r'table'),
        view: mapValueOfType<int>(json, r'view'),
        exporterType: mapValueOfType<String>(json, r'exporter_type')!,
        state: StateEnum.fromJson(json[r'state'])!,
        status: mapValueOfType<String>(json, r'status')!,
        exportedFileName: mapValueOfType<String>(json, r'exported_file_name'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        progressPercentage: mapValueOfType<double>(json, r'progress_percentage'),
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<ExportJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportJob> mapFromJson(dynamic json) {
    final map = <String, ExportJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportJob-objects as value to a dart map
  static Map<String, List<ExportJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'exporter_type',
    'state',
    'status',
    'created_at',
    'url',
  };
}

