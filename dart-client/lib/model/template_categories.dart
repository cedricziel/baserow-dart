//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TemplateCategories {
  /// Returns a new [TemplateCategories] instance.
  TemplateCategories({
    required this.id,
    required this.name,
    this.templates = const [],
  });

  int id;

  String name;

  List<Template> templates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateCategories &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.templates, templates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (templates.hashCode);

  @override
  String toString() => 'TemplateCategories[id=$id, name=$name, templates=$templates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'templates'] = this.templates;
    return json;
  }

  /// Returns a new [TemplateCategories] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateCategories? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TemplateCategories[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TemplateCategories[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TemplateCategories(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        templates: Template.listFromJson(json[r'templates']),
      );
    }
    return null;
  }

  static List<TemplateCategories> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateCategories>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateCategories.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateCategories> mapFromJson(dynamic json) {
    final map = <String, TemplateCategories>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateCategories.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateCategories-objects as value to a dart map
  static Map<String, List<TemplateCategories>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateCategories>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateCategories.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'templates',
  };
}

