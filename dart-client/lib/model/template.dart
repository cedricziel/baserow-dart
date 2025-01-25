//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Template {
  /// Returns a new [Template] instance.
  Template({
    required this.id,
    required this.name,
    required this.slug,
    required this.icon,
    this.keywords,
    required this.workspaceId,
    required this.isDefault,
  });

  int id;

  String name;

  /// The template slug that is used to match the template with the JSON file name.
  String slug;

  /// The icon class name that can be used for displaying purposes.
  String icon;

  /// Keywords related to the template that can be used for search.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keywords;

  /// The group containing the applications related to the template. The read endpoints related to that group are publicly accessible for preview purposes.
  int? workspaceId;

  /// Indicates if the template must be selected by default. The web-frontend automatically selects the first `is_default` template that it can find.
  String isDefault;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Template &&
    other.id == id &&
    other.name == name &&
    other.slug == slug &&
    other.icon == icon &&
    other.keywords == keywords &&
    other.workspaceId == workspaceId &&
    other.isDefault == isDefault;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (slug.hashCode) +
    (icon.hashCode) +
    (keywords == null ? 0 : keywords!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (isDefault.hashCode);

  @override
  String toString() => 'Template[id=$id, name=$name, slug=$slug, icon=$icon, keywords=$keywords, workspaceId=$workspaceId, isDefault=$isDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'slug'] = this.slug;
      json[r'icon'] = this.icon;
    if (this.keywords != null) {
      json[r'keywords'] = this.keywords;
    } else {
      json[r'keywords'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
      json[r'is_default'] = this.isDefault;
    return json;
  }

  /// Returns a new [Template] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Template? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Template[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Template[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Template(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        icon: mapValueOfType<String>(json, r'icon')!,
        keywords: mapValueOfType<String>(json, r'keywords'),
        workspaceId: mapValueOfType<int>(json, r'workspace_id'),
        isDefault: mapValueOfType<String>(json, r'is_default')!,
      );
    }
    return null;
  }

  static List<Template> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Template>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Template.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Template> mapFromJson(dynamic json) {
    final map = <String, Template>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Template.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Template-objects as value to a dart map
  static Map<String, List<Template>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Template>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Template.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'slug',
    'icon',
    'workspace_id',
    'is_default',
  };
}

