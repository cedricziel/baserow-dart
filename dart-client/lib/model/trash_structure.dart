//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TrashStructure {
  /// Returns a new [TrashStructure] instance.
  TrashStructure({
    this.workspaces = const [],
  });

  /// An array of workspace trash structure records
  List<TrashStructureWorkspace> workspaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrashStructure &&
    _deepEquality.equals(other.workspaces, workspaces);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workspaces.hashCode);

  @override
  String toString() => 'TrashStructure[workspaces=$workspaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workspaces'] = this.workspaces;
    return json;
  }

  /// Returns a new [TrashStructure] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrashStructure? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrashStructure[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrashStructure[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrashStructure(
        workspaces: TrashStructureWorkspace.listFromJson(json[r'workspaces']),
      );
    }
    return null;
  }

  static List<TrashStructure> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrashStructure>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrashStructure.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrashStructure> mapFromJson(dynamic json) {
    final map = <String, TrashStructure>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrashStructure.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrashStructure-objects as value to a dart map
  static Map<String, List<TrashStructure>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrashStructure>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrashStructure.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workspaces',
  };
}

