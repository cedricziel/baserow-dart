//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions {
  /// Returns a new [RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions] instance.
  RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions({
    this.type,
    this.dataSourceId,
  });

  /// The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type051Enum? type;

  /// The ID of the Data Source to be refreshed.
  int? dataSourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions &&
    other.type == type &&
    other.dataSourceId == dataSourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (dataSourceId == null ? 0 : dataSourceId!.hashCode);

  @override
  String toString() => 'RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions[type=$type, dataSourceId=$dataSourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.dataSourceId != null) {
      json[r'data_source_id'] = this.dataSourceId;
    } else {
      json[r'data_source_id'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions(
        type: Type051Enum.fromJson(json[r'type']),
        dataSourceId: mapValueOfType<int>(json, r'data_source_id'),
      );
    }
    return null;
  }

  static List<RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions> mapFromJson(dynamic json) {
    final map = <String, RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions-objects as value to a dart map
  static Map<String, List<RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

