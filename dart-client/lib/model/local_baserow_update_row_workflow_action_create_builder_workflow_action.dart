//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction {
  /// Returns a new [LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction] instance.
  LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction({
    required this.id,
    this.elementId,
    required this.type,
    required this.event,
    this.service,
  });

  int id;

  /// The id of the element the workflow action is associated with
  int? elementId;

  /// The type of the workflow action  * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
  Type051Enum type;

  /// The event that triggers the execution
  String event;

  /// The service which this workflow action is associated with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IntegrationService? service;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction &&
    other.id == id &&
    other.elementId == elementId &&
    other.type == type &&
    other.event == event &&
    other.service == service;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (elementId == null ? 0 : elementId!.hashCode) +
    (type.hashCode) +
    (event.hashCode) +
    (service == null ? 0 : service!.hashCode);

  @override
  String toString() => 'LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction[id=$id, elementId=$elementId, type=$type, event=$event, service=$service]';

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
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction(
        id: mapValueOfType<int>(json, r'id')!,
        elementId: mapValueOfType<int>(json, r'element_id'),
        type: Type051Enum.fromJson(json[r'type'])!,
        event: mapValueOfType<String>(json, r'event')!,
        service: IntegrationService.fromJson(json[r'service']),
      );
    }
    return null;
  }

  static List<LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction-objects as value to a dart map
  static Map<String, List<LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction.listFromJson(entry.value, growable: growable,);
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

