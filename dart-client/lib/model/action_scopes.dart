//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ActionScopes {
  /// Returns a new [ActionScopes] instance.
  ActionScopes({
    this.root,
    this.workspace,
    this.application,
    this.table,
    this.view,
    this.teamsInWorkspace,
  });

  /// If set to true then actions registered in the root scope will be included when undoing or redoing.
  bool? root;

  /// If set to a workspaces id then any actions directly related to that workspace will be be included when undoing or redoing.
  ///
  /// Minimum value: 0
  int? workspace;

  /// If set to an applications id then any actions directly related to that application will be be included when undoing or redoing.
  ///
  /// Minimum value: 0
  int? application;

  /// If set to a table id then any actions directly related to that table will be be included when undoing or redoing.
  ///
  /// Minimum value: 0
  int? table;

  /// If set to an view id then any actions directly related to that view will be be included when undoing or redoing.
  ///
  /// Minimum value: 0
  int? view;

  /// If set to a workspace id then any actions directly related to that workspace will be be included when undoing or redoing.
  ///
  /// Minimum value: 0
  int? teamsInWorkspace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActionScopes &&
    other.root == root &&
    other.workspace == workspace &&
    other.application == application &&
    other.table == table &&
    other.view == view &&
    other.teamsInWorkspace == teamsInWorkspace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (root == null ? 0 : root!.hashCode) +
    (workspace == null ? 0 : workspace!.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (table == null ? 0 : table!.hashCode) +
    (view == null ? 0 : view!.hashCode) +
    (teamsInWorkspace == null ? 0 : teamsInWorkspace!.hashCode);

  @override
  String toString() => 'ActionScopes[root=$root, workspace=$workspace, application=$application, table=$table, view=$view, teamsInWorkspace=$teamsInWorkspace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.root != null) {
      json[r'root'] = this.root;
    } else {
      json[r'root'] = null;
    }
    if (this.workspace != null) {
      json[r'workspace'] = this.workspace;
    } else {
      json[r'workspace'] = null;
    }
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
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
    if (this.teamsInWorkspace != null) {
      json[r'teams_in_workspace'] = this.teamsInWorkspace;
    } else {
      json[r'teams_in_workspace'] = null;
    }
    return json;
  }

  /// Returns a new [ActionScopes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActionScopes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActionScopes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActionScopes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActionScopes(
        root: mapValueOfType<bool>(json, r'root'),
        workspace: mapValueOfType<int>(json, r'workspace'),
        application: mapValueOfType<int>(json, r'application'),
        table: mapValueOfType<int>(json, r'table'),
        view: mapValueOfType<int>(json, r'view'),
        teamsInWorkspace: mapValueOfType<int>(json, r'teams_in_workspace'),
      );
    }
    return null;
  }

  static List<ActionScopes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionScopes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionScopes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActionScopes> mapFromJson(dynamic json) {
    final map = <String, ActionScopes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActionScopes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActionScopes-objects as value to a dart map
  static Map<String, List<ActionScopes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActionScopes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActionScopes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

