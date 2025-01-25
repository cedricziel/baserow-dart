//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedWorkspace {
  /// Returns a new [PatchedWorkspace] instance.
  PatchedWorkspace({
    this.id,
    this.name,
    this.generativeAiModelsEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generativeAiModelsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedWorkspace &&
    other.id == id &&
    other.name == name &&
    other.generativeAiModelsEnabled == generativeAiModelsEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (generativeAiModelsEnabled == null ? 0 : generativeAiModelsEnabled!.hashCode);

  @override
  String toString() => 'PatchedWorkspace[id=$id, name=$name, generativeAiModelsEnabled=$generativeAiModelsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.generativeAiModelsEnabled != null) {
      json[r'generative_ai_models_enabled'] = this.generativeAiModelsEnabled;
    } else {
      json[r'generative_ai_models_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedWorkspace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedWorkspace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedWorkspace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedWorkspace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedWorkspace(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        generativeAiModelsEnabled: mapValueOfType<String>(json, r'generative_ai_models_enabled'),
      );
    }
    return null;
  }

  static List<PatchedWorkspace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedWorkspace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedWorkspace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedWorkspace> mapFromJson(dynamic json) {
    final map = <String, PatchedWorkspace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedWorkspace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedWorkspace-objects as value to a dart map
  static Map<String, List<PatchedWorkspace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedWorkspace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedWorkspace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

