//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TeamSubject {
  /// Returns a new [TeamSubject] instance.
  TeamSubject({
    required this.id,
    this.subjectId,
    this.subjectUserEmail,
    required this.subjectType,
  });

  int id;

  /// The subject's unique identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? subjectId;

  /// The user subject's email address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subjectUserEmail;

  /// The type of subject that is being invited.  * `auth.User` - auth.User
  SubjectType0b2Enum subjectType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamSubject &&
    other.id == id &&
    other.subjectId == subjectId &&
    other.subjectUserEmail == subjectUserEmail &&
    other.subjectType == subjectType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (subjectId == null ? 0 : subjectId!.hashCode) +
    (subjectUserEmail == null ? 0 : subjectUserEmail!.hashCode) +
    (subjectType.hashCode);

  @override
  String toString() => 'TeamSubject[id=$id, subjectId=$subjectId, subjectUserEmail=$subjectUserEmail, subjectType=$subjectType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.subjectId != null) {
      json[r'subject_id'] = this.subjectId;
    } else {
      json[r'subject_id'] = null;
    }
    if (this.subjectUserEmail != null) {
      json[r'subject_user_email'] = this.subjectUserEmail;
    } else {
      json[r'subject_user_email'] = null;
    }
      json[r'subject_type'] = this.subjectType;
    return json;
  }

  /// Returns a new [TeamSubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamSubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamSubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamSubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamSubject(
        id: mapValueOfType<int>(json, r'id')!,
        subjectId: mapValueOfType<int>(json, r'subject_id'),
        subjectUserEmail: mapValueOfType<String>(json, r'subject_user_email'),
        subjectType: SubjectType0b2Enum.fromJson(json[r'subject_type'])!,
      );
    }
    return null;
  }

  static List<TeamSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamSubject> mapFromJson(dynamic json) {
    final map = <String, TeamSubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamSubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamSubject-objects as value to a dart map
  static Map<String, List<TeamSubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamSubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TeamSubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'subject_type',
  };
}

