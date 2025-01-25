//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions {
  /// Returns a new [LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions] instance.
  LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions({
    this.type,
    this.service,
  });

  /// The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type051Enum? type;

  /// The service which this workflow action is associated with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IntegrationService? service;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions &&
    other.type == type &&
    other.service == service;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (service == null ? 0 : service!.hashCode);

  @override
  String toString() => 'LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions[type=$type, service=$service]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions(
        type: Type051Enum.fromJson(json[r'type']),
        service: IntegrationService.fromJson(json[r'service']),
      );
    }
    return null;
  }

  static List<LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions-objects as value to a dart map
  static Map<String, List<LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

