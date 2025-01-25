//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GenerativeAISettings {
  /// Returns a new [GenerativeAISettings] instance.
  GenerativeAISettings({
    this.openai,
    this.anthropic,
    this.mistral,
    this.ollama,
    this.openrouter,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenAISettings? openai;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AnthropicSettings? anthropic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MistralSettings? mistral;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OllamaSettings? ollama;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenRouterSettings? openrouter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerativeAISettings &&
    other.openai == openai &&
    other.anthropic == anthropic &&
    other.mistral == mistral &&
    other.ollama == ollama &&
    other.openrouter == openrouter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (openai == null ? 0 : openai!.hashCode) +
    (anthropic == null ? 0 : anthropic!.hashCode) +
    (mistral == null ? 0 : mistral!.hashCode) +
    (ollama == null ? 0 : ollama!.hashCode) +
    (openrouter == null ? 0 : openrouter!.hashCode);

  @override
  String toString() => 'GenerativeAISettings[openai=$openai, anthropic=$anthropic, mistral=$mistral, ollama=$ollama, openrouter=$openrouter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.openai != null) {
      json[r'openai'] = this.openai;
    } else {
      json[r'openai'] = null;
    }
    if (this.anthropic != null) {
      json[r'anthropic'] = this.anthropic;
    } else {
      json[r'anthropic'] = null;
    }
    if (this.mistral != null) {
      json[r'mistral'] = this.mistral;
    } else {
      json[r'mistral'] = null;
    }
    if (this.ollama != null) {
      json[r'ollama'] = this.ollama;
    } else {
      json[r'ollama'] = null;
    }
    if (this.openrouter != null) {
      json[r'openrouter'] = this.openrouter;
    } else {
      json[r'openrouter'] = null;
    }
    return json;
  }

  /// Returns a new [GenerativeAISettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerativeAISettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerativeAISettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerativeAISettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerativeAISettings(
        openai: OpenAISettings.fromJson(json[r'openai']),
        anthropic: AnthropicSettings.fromJson(json[r'anthropic']),
        mistral: MistralSettings.fromJson(json[r'mistral']),
        ollama: OllamaSettings.fromJson(json[r'ollama']),
        openrouter: OpenRouterSettings.fromJson(json[r'openrouter']),
      );
    }
    return null;
  }

  static List<GenerativeAISettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerativeAISettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerativeAISettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerativeAISettings> mapFromJson(dynamic json) {
    final map = <String, GenerativeAISettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerativeAISettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerativeAISettings-objects as value to a dart map
  static Map<String, List<GenerativeAISettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerativeAISettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerativeAISettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

