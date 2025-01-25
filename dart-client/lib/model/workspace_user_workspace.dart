//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class WorkspaceUserWorkspace {
  /// Returns a new [WorkspaceUserWorkspace] instance.
  WorkspaceUserWorkspace({
    required this.id,
    required this.name,
    this.users = const [],
    required this.order,
    required this.permissions,
    required this.unreadNotificationsCount,
    required this.generativeAiModelsEnabled,
  });

  /// Workspace id.
  int id;

  /// Workspace name.
  String name;

  /// List of all workspace users.
  List<WorkspaceUser> users;

  /// The requesting user's order within the workspace users.
  int order;

  /// The requesting user's permissions for the workspace.
  String permissions;

  /// The number of unread notifications for the requesting user.
  int unreadNotificationsCount;

  /// Generative AI models available in this workspace.
  String generativeAiModelsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceUserWorkspace &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.users, users) &&
    other.order == order &&
    other.permissions == permissions &&
    other.unreadNotificationsCount == unreadNotificationsCount &&
    other.generativeAiModelsEnabled == generativeAiModelsEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (users.hashCode) +
    (order.hashCode) +
    (permissions.hashCode) +
    (unreadNotificationsCount.hashCode) +
    (generativeAiModelsEnabled.hashCode);

  @override
  String toString() => 'WorkspaceUserWorkspace[id=$id, name=$name, users=$users, order=$order, permissions=$permissions, unreadNotificationsCount=$unreadNotificationsCount, generativeAiModelsEnabled=$generativeAiModelsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'users'] = this.users;
      json[r'order'] = this.order;
      json[r'permissions'] = this.permissions;
      json[r'unread_notifications_count'] = this.unreadNotificationsCount;
      json[r'generative_ai_models_enabled'] = this.generativeAiModelsEnabled;
    return json;
  }

  /// Returns a new [WorkspaceUserWorkspace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceUserWorkspace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkspaceUserWorkspace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkspaceUserWorkspace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkspaceUserWorkspace(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        users: WorkspaceUser.listFromJson(json[r'users']),
        order: mapValueOfType<int>(json, r'order')!,
        permissions: mapValueOfType<String>(json, r'permissions')!,
        unreadNotificationsCount: mapValueOfType<int>(json, r'unread_notifications_count')!,
        generativeAiModelsEnabled: mapValueOfType<String>(json, r'generative_ai_models_enabled')!,
      );
    }
    return null;
  }

  static List<WorkspaceUserWorkspace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceUserWorkspace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceUserWorkspace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceUserWorkspace> mapFromJson(dynamic json) {
    final map = <String, WorkspaceUserWorkspace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceUserWorkspace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceUserWorkspace-objects as value to a dart map
  static Map<String, List<WorkspaceUserWorkspace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceUserWorkspace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceUserWorkspace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'users',
    'order',
    'permissions',
    'unread_notifications_count',
    'generative_ai_models_enabled',
  };
}

