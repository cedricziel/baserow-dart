//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LogoutWorkflowActionBuilderWorkflowAction {
  /// Returns a new [LogoutWorkflowActionBuilderWorkflowAction] instance.
  LogoutWorkflowActionBuilderWorkflowAction({
    required this.id,
    required this.order,
    required this.elementId,
    required this.type,
    required this.event,
  });

  int id;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int? elementId;

  /// The type of the workflow action
  String type;

  /// The event that triggers the execution
  String event;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LogoutWorkflowActionBuilderWorkflowAction &&
    other.id == id &&
    other.order == order &&
    other.elementId == elementId &&
    other.type == type &&
    other.event == event;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (order.hashCode) +
    (elementId == null ? 0 : elementId!.hashCode) +
    (type.hashCode) +
    (event.hashCode);

  @override
  String toString() => 'LogoutWorkflowActionBuilderWorkflowAction[id=$id, order=$order, elementId=$elementId, type=$type, event=$event]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'order'] = this.order;
    if (this.elementId != null) {
      json[r'element_id'] = this.elementId;
    } else {
      json[r'element_id'] = null;
    }
      json[r'type'] = this.type;
      json[r'event'] = this.event;
    return json;
  }

  /// Returns a new [LogoutWorkflowActionBuilderWorkflowAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LogoutWorkflowActionBuilderWorkflowAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LogoutWorkflowActionBuilderWorkflowAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LogoutWorkflowActionBuilderWorkflowAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LogoutWorkflowActionBuilderWorkflowAction(
        id: mapValueOfType<int>(json, r'id')!,
        order: mapValueOfType<int>(json, r'order')!,
        elementId: mapValueOfType<int>(json, r'element_id'),
        type: mapValueOfType<String>(json, r'type')!,
        event: mapValueOfType<String>(json, r'event')!,
      );
    }
    return null;
  }

  static List<LogoutWorkflowActionBuilderWorkflowAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LogoutWorkflowActionBuilderWorkflowAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LogoutWorkflowActionBuilderWorkflowAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LogoutWorkflowActionBuilderWorkflowAction> mapFromJson(dynamic json) {
    final map = <String, LogoutWorkflowActionBuilderWorkflowAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LogoutWorkflowActionBuilderWorkflowAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LogoutWorkflowActionBuilderWorkflowAction-objects as value to a dart map
  static Map<String, List<LogoutWorkflowActionBuilderWorkflowAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LogoutWorkflowActionBuilderWorkflowAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LogoutWorkflowActionBuilderWorkflowAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'order',
    'element_id',
    'type',
    'event',
  };
}

