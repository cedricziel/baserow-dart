//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TeamResponse {
  /// Returns a new [TeamResponse] instance.
  TeamResponse({
    required this.id,
    required this.name,
    required this.workspace,
    required this.createdOn,
    required this.updatedOn,
    this.defaultRole,
    required this.subjectCount,
    this.subjectSample = const [],
  });

  int id;

  /// A human friendly name for this team.
  String name;

  /// The workspace that this team belongs to.
  int workspace;

  DateTime createdOn;

  DateTime updatedOn;

  /// The uid of the role this team has in its workspace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultRole;

  /// The amount of subjects (e.g. users) that are currently assigned to this team.
  int subjectCount;

  /// A sample, by default 10, of the most recent subjects to join this team.
  List<TeamSampleSubject> subjectSample;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamResponse &&
    other.id == id &&
    other.name == name &&
    other.workspace == workspace &&
    other.createdOn == createdOn &&
    other.updatedOn == updatedOn &&
    other.defaultRole == defaultRole &&
    other.subjectCount == subjectCount &&
    _deepEquality.equals(other.subjectSample, subjectSample);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (workspace.hashCode) +
    (createdOn.hashCode) +
    (updatedOn.hashCode) +
    (defaultRole == null ? 0 : defaultRole!.hashCode) +
    (subjectCount.hashCode) +
    (subjectSample.hashCode);

  @override
  String toString() => 'TeamResponse[id=$id, name=$name, workspace=$workspace, createdOn=$createdOn, updatedOn=$updatedOn, defaultRole=$defaultRole, subjectCount=$subjectCount, subjectSample=$subjectSample]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'workspace'] = this.workspace;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'updated_on'] = this.updatedOn.toUtc().toIso8601String();
    if (this.defaultRole != null) {
      json[r'default_role'] = this.defaultRole;
    } else {
      json[r'default_role'] = null;
    }
      json[r'subject_count'] = this.subjectCount;
      json[r'subject_sample'] = this.subjectSample;
    return json;
  }

  /// Returns a new [TeamResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamResponse(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        workspace: mapValueOfType<int>(json, r'workspace')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        updatedOn: mapDateTime(json, r'updated_on', r'')!,
        defaultRole: mapValueOfType<String>(json, r'default_role'),
        subjectCount: mapValueOfType<int>(json, r'subject_count')!,
        subjectSample: TeamSampleSubject.listFromJson(json[r'subject_sample']),
      );
    }
    return null;
  }

  static List<TeamResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamResponse> mapFromJson(dynamic json) {
    final map = <String, TeamResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamResponse-objects as value to a dart map
  static Map<String, List<TeamResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'workspace',
    'created_on',
    'updated_on',
    'subject_count',
  };
}

