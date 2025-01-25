//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TrashStructureWorkspace {
  /// Returns a new [TrashStructureWorkspace] instance.
  TrashStructureWorkspace({
    required this.id,
    required this.trashed,
    required this.name,
    this.applications = const [],
  });

  /// Minimum value: 0
  int id;

  bool trashed;

  String name;

  List<TrashStructureApplication> applications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrashStructureWorkspace &&
    other.id == id &&
    other.trashed == trashed &&
    other.name == name &&
    _deepEquality.equals(other.applications, applications);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (trashed.hashCode) +
    (name.hashCode) +
    (applications.hashCode);

  @override
  String toString() => 'TrashStructureWorkspace[id=$id, trashed=$trashed, name=$name, applications=$applications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'trashed'] = this.trashed;
      json[r'name'] = this.name;
      json[r'applications'] = this.applications;
    return json;
  }

  /// Returns a new [TrashStructureWorkspace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrashStructureWorkspace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrashStructureWorkspace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrashStructureWorkspace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrashStructureWorkspace(
        id: mapValueOfType<int>(json, r'id')!,
        trashed: mapValueOfType<bool>(json, r'trashed')!,
        name: mapValueOfType<String>(json, r'name')!,
        applications: TrashStructureApplication.listFromJson(json[r'applications']),
      );
    }
    return null;
  }

  static List<TrashStructureWorkspace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrashStructureWorkspace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrashStructureWorkspace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrashStructureWorkspace> mapFromJson(dynamic json) {
    final map = <String, TrashStructureWorkspace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrashStructureWorkspace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrashStructureWorkspace-objects as value to a dart map
  static Map<String, List<TrashStructureWorkspace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrashStructureWorkspace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrashStructureWorkspace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'trashed',
    'name',
    'applications',
  };
}

