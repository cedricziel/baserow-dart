//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateRoleAssignment {
  /// Returns a new [CreateRoleAssignment] instance.
  CreateRoleAssignment({
    required this.subjectId,
    required this.subjectType,
    required this.role,
    required this.scopeId,
    required this.scopeType,
  });

  /// The subject ID. A subject is an actor that can do operations.
  ///
  /// Minimum value: 1
  int subjectId;

  /// The subject type.  * `auth.User` - auth.User * `anonymous` - anonymous * `user_source.user` - user_source.user * `core.Token` - core.Token * `baserow_enterprise.Team` - baserow_enterprise.Team
  SubjectType398Enum subjectType;

  /// The uid of the role you want to assign to the user or team in the given workspace. You can omit this property if you want to remove the role.
  String? role;

  /// The ID of the scope object. The scope object limit the role assignment to this scope and all its descendants.
  ///
  /// Minimum value: 1
  int scopeId;

  /// The scope object type.  * `core` - core * `application` - application * `workspace` - workspace * `workspace_invitation` - workspace_invitation * `snapshot` - snapshot * `workspace_user` - workspace_user * `integration` - integration * `user_source` - user_source * `database` - database * `database_table` - database_table * `database_field` - database_field * `database_view` - database_view * `database_view_decoration` - database_view_decoration * `database_view_sort` - database_view_sort * `database_view_group` - database_view_group * `database_view_filter` - database_view_filter * `database_view_filter_group` - database_view_filter_group * `token` - token * `builder` - builder * `builder_page` - builder_page * `builder_element` - builder_element * `builder_domain` - builder_domain * `builder_data_source` - builder_data_source * `builder_workflow_action` - builder_workflow_action * `team` - team * `team_subject` - team_subject * `license` - license
  ScopeTypeEnum scopeType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRoleAssignment &&
    other.subjectId == subjectId &&
    other.subjectType == subjectType &&
    other.role == role &&
    other.scopeId == scopeId &&
    other.scopeType == scopeType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subjectId.hashCode) +
    (subjectType.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (scopeId.hashCode) +
    (scopeType.hashCode);

  @override
  String toString() => 'CreateRoleAssignment[subjectId=$subjectId, subjectType=$subjectType, role=$role, scopeId=$scopeId, scopeType=$scopeType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject_id'] = this.subjectId;
      json[r'subject_type'] = this.subjectType;
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
      json[r'scope_id'] = this.scopeId;
      json[r'scope_type'] = this.scopeType;
    return json;
  }

  /// Returns a new [CreateRoleAssignment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRoleAssignment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRoleAssignment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRoleAssignment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRoleAssignment(
        subjectId: mapValueOfType<int>(json, r'subject_id')!,
        subjectType: SubjectType398Enum.fromJson(json[r'subject_type'])!,
        role: mapValueOfType<String>(json, r'role'),
        scopeId: mapValueOfType<int>(json, r'scope_id')!,
        scopeType: ScopeTypeEnum.fromJson(json[r'scope_type'])!,
      );
    }
    return null;
  }

  static List<CreateRoleAssignment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRoleAssignment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRoleAssignment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRoleAssignment> mapFromJson(dynamic json) {
    final map = <String, CreateRoleAssignment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRoleAssignment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRoleAssignment-objects as value to a dart map
  static Map<String, List<CreateRoleAssignment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRoleAssignment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRoleAssignment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject_id',
    'subject_type',
    'role',
    'scope_id',
    'scope_type',
  };
}

