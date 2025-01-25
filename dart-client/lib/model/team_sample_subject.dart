//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TeamSampleSubject {
  /// Returns a new [TeamSampleSubject] instance.
  TeamSampleSubject({
    required this.subjectId,
    required this.subjectType,
    required this.subjectLabel,
    required this.teamSubjectId,
  });

  /// The subject's unique identifier.
  int subjectId;

  /// The type of subject who belongs to the team.  * `auth.User` - auth.User
  SubjectType0b2Enum subjectType;

  /// The subject's label. Defaults to a user's first name.
  String subjectLabel;

  /// The team subject unique identifier.
  int teamSubjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamSampleSubject &&
    other.subjectId == subjectId &&
    other.subjectType == subjectType &&
    other.subjectLabel == subjectLabel &&
    other.teamSubjectId == teamSubjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subjectId.hashCode) +
    (subjectType.hashCode) +
    (subjectLabel.hashCode) +
    (teamSubjectId.hashCode);

  @override
  String toString() => 'TeamSampleSubject[subjectId=$subjectId, subjectType=$subjectType, subjectLabel=$subjectLabel, teamSubjectId=$teamSubjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject_id'] = this.subjectId;
      json[r'subject_type'] = this.subjectType;
      json[r'subject_label'] = this.subjectLabel;
      json[r'team_subject_id'] = this.teamSubjectId;
    return json;
  }

  /// Returns a new [TeamSampleSubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamSampleSubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamSampleSubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamSampleSubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamSampleSubject(
        subjectId: mapValueOfType<int>(json, r'subject_id')!,
        subjectType: SubjectType0b2Enum.fromJson(json[r'subject_type'])!,
        subjectLabel: mapValueOfType<String>(json, r'subject_label')!,
        teamSubjectId: mapValueOfType<int>(json, r'team_subject_id')!,
      );
    }
    return null;
  }

  static List<TeamSampleSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamSampleSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamSampleSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamSampleSubject> mapFromJson(dynamic json) {
    final map = <String, TeamSampleSubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamSampleSubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamSampleSubject-objects as value to a dart map
  static Map<String, List<TeamSampleSubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamSampleSubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamSampleSubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject_id',
    'subject_type',
    'subject_label',
    'team_subject_id',
  };
}

