//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UndoRedoAction {
  /// Returns a new [UndoRedoAction] instance.
  UndoRedoAction({
    this.actionType,
    this.actionScope,
  });

  /// If an action was undone/redone/skipped due to an error this field will contain the type of the action that was undone/redone.
  String? actionType;

  /// If an action was undone/redone/skipped due to an error this field will contain the scope of the action that was undone/redone.
  String? actionScope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UndoRedoAction &&
    other.actionType == actionType &&
    other.actionScope == actionScope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actionType == null ? 0 : actionType!.hashCode) +
    (actionScope == null ? 0 : actionScope!.hashCode);

  @override
  String toString() => 'UndoRedoAction[actionType=$actionType, actionScope=$actionScope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actionType != null) {
      json[r'action_type'] = this.actionType;
    } else {
      json[r'action_type'] = null;
    }
    if (this.actionScope != null) {
      json[r'action_scope'] = this.actionScope;
    } else {
      json[r'action_scope'] = null;
    }
    return json;
  }

  /// Returns a new [UndoRedoAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UndoRedoAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UndoRedoAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UndoRedoAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UndoRedoAction(
        actionType: mapValueOfType<String>(json, r'action_type'),
        actionScope: mapValueOfType<String>(json, r'action_scope'),
      );
    }
    return null;
  }

  static List<UndoRedoAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UndoRedoAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UndoRedoAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UndoRedoAction> mapFromJson(dynamic json) {
    final map = <String, UndoRedoAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UndoRedoAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UndoRedoAction-objects as value to a dart map
  static Map<String, List<UndoRedoAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UndoRedoAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UndoRedoAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

