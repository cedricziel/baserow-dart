//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OrderWorkflowActions {
  /// Returns a new [OrderWorkflowActions] instance.
  OrderWorkflowActions({
    this.workflowActionIds = const [],
    this.elementId,
  });

  /// The ids of the workflow actions in the order they are supposed to be set in
  List<int> workflowActionIds;

  /// The element the workflow actions belong to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? elementId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderWorkflowActions &&
    _deepEquality.equals(other.workflowActionIds, workflowActionIds) &&
    other.elementId == elementId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workflowActionIds.hashCode) +
    (elementId == null ? 0 : elementId!.hashCode);

  @override
  String toString() => 'OrderWorkflowActions[workflowActionIds=$workflowActionIds, elementId=$elementId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workflow_action_ids'] = this.workflowActionIds;
    if (this.elementId != null) {
      json[r'element_id'] = this.elementId;
    } else {
      json[r'element_id'] = null;
    }
    return json;
  }

  /// Returns a new [OrderWorkflowActions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderWorkflowActions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderWorkflowActions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderWorkflowActions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderWorkflowActions(
        workflowActionIds: json[r'workflow_action_ids'] is Iterable
            ? (json[r'workflow_action_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        elementId: mapValueOfType<int>(json, r'element_id'),
      );
    }
    return null;
  }

  static List<OrderWorkflowActions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrderWorkflowActions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderWorkflowActions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderWorkflowActions> mapFromJson(dynamic json) {
    final map = <String, OrderWorkflowActions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderWorkflowActions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderWorkflowActions-objects as value to a dart map
  static Map<String, List<OrderWorkflowActions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrderWorkflowActions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderWorkflowActions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workflow_action_ids',
  };
}

