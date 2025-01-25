//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GenerateFormulaWithAIRequest {
  /// Returns a new [GenerateFormulaWithAIRequest] instance.
  GenerateFormulaWithAIRequest({
    required this.aiType,
    required this.aiModel,
    this.aiTemperature,
    required this.aiPrompt,
  });

  /// The AI model type that must be used when generating the formula.
  String aiType;

  /// The AI model that must be used when generating the formula.
  String aiModel;

  /// Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity.
  ///
  /// Minimum value: 0
  /// Maximum value: 2
  double? aiTemperature;

  /// The human readable input used to generate the formula.
  String aiPrompt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateFormulaWithAIRequest &&
    other.aiType == aiType &&
    other.aiModel == aiModel &&
    other.aiTemperature == aiTemperature &&
    other.aiPrompt == aiPrompt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aiType.hashCode) +
    (aiModel.hashCode) +
    (aiTemperature == null ? 0 : aiTemperature!.hashCode) +
    (aiPrompt.hashCode);

  @override
  String toString() => 'GenerateFormulaWithAIRequest[aiType=$aiType, aiModel=$aiModel, aiTemperature=$aiTemperature, aiPrompt=$aiPrompt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ai_type'] = this.aiType;
      json[r'ai_model'] = this.aiModel;
    if (this.aiTemperature != null) {
      json[r'ai_temperature'] = this.aiTemperature;
    } else {
      json[r'ai_temperature'] = null;
    }
      json[r'ai_prompt'] = this.aiPrompt;
    return json;
  }

  /// Returns a new [GenerateFormulaWithAIRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateFormulaWithAIRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateFormulaWithAIRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateFormulaWithAIRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateFormulaWithAIRequest(
        aiType: mapValueOfType<String>(json, r'ai_type')!,
        aiModel: mapValueOfType<String>(json, r'ai_model')!,
        aiTemperature: mapValueOfType<double>(json, r'ai_temperature'),
        aiPrompt: mapValueOfType<String>(json, r'ai_prompt')!,
      );
    }
    return null;
  }

  static List<GenerateFormulaWithAIRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateFormulaWithAIRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateFormulaWithAIRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateFormulaWithAIRequest> mapFromJson(dynamic json) {
    final map = <String, GenerateFormulaWithAIRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateFormulaWithAIRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateFormulaWithAIRequest-objects as value to a dart map
  static Map<String, List<GenerateFormulaWithAIRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateFormulaWithAIRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateFormulaWithAIRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ai_type',
    'ai_model',
    'ai_prompt',
  };
}

