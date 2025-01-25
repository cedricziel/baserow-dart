//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TeamSubjectResponse {
  /// Returns a new [TeamSubjectResponse] instance.
  TeamSubjectResponse({
    required this.id,
    required this.subjectId,
    required this.subjectType,
    required this.team,
  });

  int id;

  /// The unique subject ID.
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int subjectId;

  /// Returns the TeamSubject's `subject_type` natural key.  :param obj: The TeamSubject record. :return: The subject's content type natural key.
  String subjectType;

  /// The team this subject belongs to.
  int team;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamSubjectResponse &&
    other.id == id &&
    other.subjectId == subjectId &&
    other.subjectType == subjectType &&
    other.team == team;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (subjectId.hashCode) +
    (subjectType.hashCode) +
    (team.hashCode);

  @override
  String toString() => 'TeamSubjectResponse[id=$id, subjectId=$subjectId, subjectType=$subjectType, team=$team]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'subject_id'] = this.subjectId;
      json[r'subject_type'] = this.subjectType;
      json[r'team'] = this.team;
    return json;
  }

  /// Returns a new [TeamSubjectResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamSubjectResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamSubjectResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamSubjectResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamSubjectResponse(
        id: mapValueOfType<int>(json, r'id')!,
        subjectId: mapValueOfType<int>(json, r'subject_id')!,
        subjectType: mapValueOfType<String>(json, r'subject_type')!,
        team: mapValueOfType<int>(json, r'team')!,
      );
    }
    return null;
  }

  static List<TeamSubjectResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamSubjectResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamSubjectResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamSubjectResponse> mapFromJson(dynamic json) {
    final map = <String, TeamSubjectResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamSubjectResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamSubjectResponse-objects as value to a dart map
  static Map<String, List<TeamSubjectResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamSubjectResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamSubjectResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'subject_id',
    'subject_type',
    'team',
  };
}

