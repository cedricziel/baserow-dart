//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UndoRedoResponse {
  /// Returns a new [UndoRedoResponse] instance.
  UndoRedoResponse({
    this.actions = const [],
    required this.resultCode,
  });

  List<UndoRedoAction> actions;

  /// Indicates the result of the undo/redo operation. Will be 'SUCCESS' on success, 'NOTHING_TO_DO' when there is no action to undo/redo and 'SKIPPED_DUE_TO_ERROR' when the undo/redo failed due to a conflict or error and was skipped over.
  String resultCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UndoRedoResponse &&
    _deepEquality.equals(other.actions, actions) &&
    other.resultCode == resultCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions.hashCode) +
    (resultCode.hashCode);

  @override
  String toString() => 'UndoRedoResponse[actions=$actions, resultCode=$resultCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actions'] = this.actions;
      json[r'result_code'] = this.resultCode;
    return json;
  }

  /// Returns a new [UndoRedoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UndoRedoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UndoRedoResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UndoRedoResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UndoRedoResponse(
        actions: UndoRedoAction.listFromJson(json[r'actions']),
        resultCode: mapValueOfType<String>(json, r'result_code')!,
      );
    }
    return null;
  }

  static List<UndoRedoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UndoRedoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UndoRedoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UndoRedoResponse> mapFromJson(dynamic json) {
    final map = <String, UndoRedoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UndoRedoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UndoRedoResponse-objects as value to a dart map
  static Map<String, List<UndoRedoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UndoRedoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UndoRedoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actions',
    'result_code',
  };
}

