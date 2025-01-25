//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OpenRouterSettings {
  /// Returns a new [OpenRouterSettings] instance.
  OpenRouterSettings({
    this.models = const [],
    this.apiKey,
    this.organization,
  });

  /// The models that are enabled for this AI type.
  List<String> models;

  /// The OpenRouter API key that is used to authenticate with the OpenAI API.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiKey;

  /// The organization that the OpenRouter API key belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organization;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenRouterSettings &&
    _deepEquality.equals(other.models, models) &&
    other.apiKey == apiKey &&
    other.organization == organization;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode) +
    (apiKey == null ? 0 : apiKey!.hashCode) +
    (organization == null ? 0 : organization!.hashCode);

  @override
  String toString() => 'OpenRouterSettings[models=$models, apiKey=$apiKey, organization=$organization]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
    if (this.apiKey != null) {
      json[r'api_key'] = this.apiKey;
    } else {
      json[r'api_key'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    return json;
  }

  /// Returns a new [OpenRouterSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenRouterSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenRouterSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenRouterSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenRouterSettings(
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        apiKey: mapValueOfType<String>(json, r'api_key'),
        organization: mapValueOfType<String>(json, r'organization'),
      );
    }
    return null;
  }

  static List<OpenRouterSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenRouterSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenRouterSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenRouterSettings> mapFromJson(dynamic json) {
    final map = <String, OpenRouterSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenRouterSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenRouterSettings-objects as value to a dart map
  static Map<String, List<OpenRouterSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenRouterSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenRouterSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

