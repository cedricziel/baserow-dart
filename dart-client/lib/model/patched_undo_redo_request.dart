//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUndoRedoRequest {
  /// Returns a new [PatchedUndoRedoRequest] instance.
  PatchedUndoRedoRequest({
    this.scopes,
  });

  /// A JSON object with keys and values representing the various action scopes to include when undoing or redoing. Every action in Baserow will be associated with a action scope, when undoing/redoing only actions which match any of the provided scope key:value pairs will included when this endpoint picks the next action to undo/redo. If no scopes are provided then all actions performed in the client session will be included when undoing/redoing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ActionScopes? scopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUndoRedoRequest &&
    other.scopes == scopes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scopes == null ? 0 : scopes!.hashCode);

  @override
  String toString() => 'PatchedUndoRedoRequest[scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scopes != null) {
      json[r'scopes'] = this.scopes;
    } else {
      json[r'scopes'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUndoRedoRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUndoRedoRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUndoRedoRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUndoRedoRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUndoRedoRequest(
        scopes: ActionScopes.fromJson(json[r'scopes']),
      );
    }
    return null;
  }

  static List<PatchedUndoRedoRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUndoRedoRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUndoRedoRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUndoRedoRequest> mapFromJson(dynamic json) {
    final map = <String, PatchedUndoRedoRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUndoRedoRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUndoRedoRequest-objects as value to a dart map
  static Map<String, List<PatchedUndoRedoRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUndoRedoRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUndoRedoRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

