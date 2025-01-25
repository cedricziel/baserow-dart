//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction {
  /// Returns a new [RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction] instance.
  RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction({
    required this.id,
    this.elementId,
    required this.type,
    required this.event,
    this.dataSourceId,
  });

  int id;

  /// The id of the element the workflow action is associated with
  int? elementId;

  /// The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
  Type051Enum type;

  /// The event that triggers the execution
  String event;

  /// The ID of the Data Source to be refreshed.
  int? dataSourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction &&
    other.id == id &&
    other.elementId == elementId &&
    other.type == type &&
    other.event == event &&
    other.dataSourceId == dataSourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (elementId == null ? 0 : elementId!.hashCode) +
    (type.hashCode) +
    (event.hashCode) +
    (dataSourceId == null ? 0 : dataSourceId!.hashCode);

  @override
  String toString() => 'RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction[id=$id, elementId=$elementId, type=$type, event=$event, dataSourceId=$dataSourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.elementId != null) {
      json[r'element_id'] = this.elementId;
    } else {
      json[r'element_id'] = null;
    }
      json[r'type'] = this.type;
      json[r'event'] = this.event;
    if (this.dataSourceId != null) {
      json[r'data_source_id'] = this.dataSourceId;
    } else {
      json[r'data_source_id'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction(
        id: mapValueOfType<int>(json, r'id')!,
        elementId: mapValueOfType<int>(json, r'element_id'),
        type: Type051Enum.fromJson(json[r'type'])!,
        event: mapValueOfType<String>(json, r'event')!,
        dataSourceId: mapValueOfType<int>(json, r'data_source_id'),
      );
    }
    return null;
  }

  static List<RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction> mapFromJson(dynamic json) {
    final map = <String, RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction-objects as value to a dart map
  static Map<String, List<RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'event',
  };
}

