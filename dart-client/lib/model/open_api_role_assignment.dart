//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OpenApiRoleAssignment {
  /// Returns a new [OpenApiRoleAssignment] instance.
  OpenApiRoleAssignment({
    required this.id,
    required this.role,
    required this.subject,
    required this.subjectId,
    required this.scopeId,
    required this.subjectType,
    required this.scopeType,
  });

  int id;

  /// The uid of the role assigned to the user or team in the given workspace.
  String role;

  /// The structure of the subject field depends on the subject typereturned and will have additional fields accordingly
  OpenApiSubjectField subject;

  /// The subject ID.
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int subjectId;

  /// The unique scope ID.
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int scopeId;

  /// The subject type.  * `auth.User` - auth.User * `anonymous` - anonymous * `user_source.user` - user_source.user * `core.Token` - core.Token * `baserow_enterprise.Team` - baserow_enterprise.Team
  SubjectType398Enum subjectType;

  /// The type of the scope object. The scope object limit the role assignment to this scope and all its descendants.  * `core` - core * `application` - application * `workspace` - workspace * `workspace_invitation` - workspace_invitation * `snapshot` - snapshot * `workspace_user` - workspace_user * `integration` - integration * `user_source` - user_source * `database` - database * `database_table` - database_table * `database_field` - database_field * `database_view` - database_view * `database_view_decoration` - database_view_decoration * `database_view_sort` - database_view_sort * `database_view_group` - database_view_group * `database_view_filter` - database_view_filter * `database_view_filter_group` - database_view_filter_group * `token` - token * `builder` - builder * `builder_page` - builder_page * `builder_element` - builder_element * `builder_domain` - builder_domain * `builder_data_source` - builder_data_source * `builder_workflow_action` - builder_workflow_action * `team` - team * `team_subject` - team_subject * `license` - license
  ScopeTypeEnum scopeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenApiRoleAssignment &&
    other.id == id &&
    other.role == role &&
    other.subject == subject &&
    other.subjectId == subjectId &&
    other.scopeId == scopeId &&
    other.subjectType == subjectType &&
    other.scopeType == scopeType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (role.hashCode) +
    (subject.hashCode) +
    (subjectId.hashCode) +
    (scopeId.hashCode) +
    (subjectType.hashCode) +
    (scopeType.hashCode);

  @override
  String toString() => 'OpenApiRoleAssignment[id=$id, role=$role, subject=$subject, subjectId=$subjectId, scopeId=$scopeId, subjectType=$subjectType, scopeType=$scopeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'role'] = this.role;
      json[r'subject'] = this.subject;
      json[r'subject_id'] = this.subjectId;
      json[r'scope_id'] = this.scopeId;
      json[r'subject_type'] = this.subjectType;
      json[r'scope_type'] = this.scopeType;
    return json;
  }

  /// Returns a new [OpenApiRoleAssignment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenApiRoleAssignment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenApiRoleAssignment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenApiRoleAssignment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenApiRoleAssignment(
        id: mapValueOfType<int>(json, r'id')!,
        role: mapValueOfType<String>(json, r'role')!,
        subject: OpenApiSubjectField.fromJson(json[r'subject'])!,
        subjectId: mapValueOfType<int>(json, r'subject_id')!,
        scopeId: mapValueOfType<int>(json, r'scope_id')!,
        subjectType: SubjectType398Enum.fromJson(json[r'subject_type'])!,
        scopeType: ScopeTypeEnum.fromJson(json[r'scope_type'])!,
      );
    }
    return null;
  }

  static List<OpenApiRoleAssignment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenApiRoleAssignment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenApiRoleAssignment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenApiRoleAssignment> mapFromJson(dynamic json) {
    final map = <String, OpenApiRoleAssignment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenApiRoleAssignment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenApiRoleAssignment-objects as value to a dart map
  static Map<String, List<OpenApiRoleAssignment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenApiRoleAssignment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenApiRoleAssignment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'role',
    'subject',
    'subject_id',
    'scope_id',
    'subject_type',
    'scope_type',
  };
}

