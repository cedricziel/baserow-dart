//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Workspace {
  /// Returns a new [Workspace] instance.
  Workspace({
    required this.id,
    required this.name,
    required this.generativeAiModelsEnabled,
  });

  int id;

  String name;

  String generativeAiModelsEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Workspace &&
    other.id == id &&
    other.name == name &&
    other.generativeAiModelsEnabled == generativeAiModelsEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (generativeAiModelsEnabled.hashCode);

  @override
  String toString() => 'Workspace[id=$id, name=$name, generativeAiModelsEnabled=$generativeAiModelsEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'generative_ai_models_enabled'] = this.generativeAiModelsEnabled;
    return json;
  }

  /// Returns a new [Workspace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Workspace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Workspace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Workspace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Workspace(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        generativeAiModelsEnabled: mapValueOfType<String>(json, r'generative_ai_models_enabled')!,
      );
    }
    return null;
  }

  static List<Workspace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Workspace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Workspace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Workspace> mapFromJson(dynamic json) {
    final map = <String, Workspace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Workspace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Workspace-objects as value to a dart map
  static Map<String, List<Workspace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Workspace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Workspace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'generative_ai_models_enabled',
  };
}

