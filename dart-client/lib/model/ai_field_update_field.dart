//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AIFieldUpdateField {
  /// Returns a new [AIFieldUpdateField] instance.
  AIFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.selectOptions = const [],
    this.aiGenerativeAiType,
    this.aiGenerativeAiModel,
    this.aiOutputType,
    this.aiTemperature,
    this.aiPrompt = '',
    this.aiFileFieldId,
  });

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
  Type6ebEnum? type;

  /// Field description
  String? description;

  List<SelectOption> selectOptions;

  String? aiGenerativeAiType;

  String? aiGenerativeAiModel;

  /// The desired output type of the field. It will try to force the response of the prompt to match it.  * `text` - text * `choice` - choice
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiOutputTypeEnum? aiOutputType;

  /// Between 0 and 2, adjusts response randomness—lower values yield focused answers, while higher values increase creativity.
  ///
  /// Minimum value: 0
  /// Maximum value: 2
  double? aiTemperature;

  /// The prompt that must run for each row. Must be an formula.
  String aiPrompt;

  /// File field that will be used as a knowledge base for the AI model.
  ///
  /// Minimum value: 1
  int? aiFileFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    _deepEquality.equals(other.selectOptions, selectOptions) &&
    other.aiGenerativeAiType == aiGenerativeAiType &&
    other.aiGenerativeAiModel == aiGenerativeAiModel &&
    other.aiOutputType == aiOutputType &&
    other.aiTemperature == aiTemperature &&
    other.aiPrompt == aiPrompt &&
    other.aiFileFieldId == aiFileFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (selectOptions.hashCode) +
    (aiGenerativeAiType == null ? 0 : aiGenerativeAiType!.hashCode) +
    (aiGenerativeAiModel == null ? 0 : aiGenerativeAiModel!.hashCode) +
    (aiOutputType == null ? 0 : aiOutputType!.hashCode) +
    (aiTemperature == null ? 0 : aiTemperature!.hashCode) +
    (aiPrompt.hashCode) +
    (aiFileFieldId == null ? 0 : aiFileFieldId!.hashCode);

  @override
  String toString() => 'AIFieldUpdateField[name=$name, type=$type, description=$description, selectOptions=$selectOptions, aiGenerativeAiType=$aiGenerativeAiType, aiGenerativeAiModel=$aiGenerativeAiModel, aiOutputType=$aiOutputType, aiTemperature=$aiTemperature, aiPrompt=$aiPrompt, aiFileFieldId=$aiFileFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'select_options'] = this.selectOptions;
    if (this.aiGenerativeAiType != null) {
      json[r'ai_generative_ai_type'] = this.aiGenerativeAiType;
    } else {
      json[r'ai_generative_ai_type'] = null;
    }
    if (this.aiGenerativeAiModel != null) {
      json[r'ai_generative_ai_model'] = this.aiGenerativeAiModel;
    } else {
      json[r'ai_generative_ai_model'] = null;
    }
    if (this.aiOutputType != null) {
      json[r'ai_output_type'] = this.aiOutputType;
    } else {
      json[r'ai_output_type'] = null;
    }
    if (this.aiTemperature != null) {
      json[r'ai_temperature'] = this.aiTemperature;
    } else {
      json[r'ai_temperature'] = null;
    }
      json[r'ai_prompt'] = this.aiPrompt;
    if (this.aiFileFieldId != null) {
      json[r'ai_file_field_id'] = this.aiFileFieldId;
    } else {
      json[r'ai_file_field_id'] = null;
    }
    return json;
  }

  /// Returns a new [AIFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        selectOptions: SelectOption.listFromJson(json[r'select_options']),
        aiGenerativeAiType: mapValueOfType<String>(json, r'ai_generative_ai_type'),
        aiGenerativeAiModel: mapValueOfType<String>(json, r'ai_generative_ai_model'),
        aiOutputType: AiOutputTypeEnum.fromJson(json[r'ai_output_type']),
        aiTemperature: mapValueOfType<double>(json, r'ai_temperature'),
        aiPrompt: mapValueOfType<String>(json, r'ai_prompt') ?? '',
        aiFileFieldId: mapValueOfType<int>(json, r'ai_file_field_id'),
      );
    }
    return null;
  }

  static List<AIFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, AIFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIFieldUpdateField-objects as value to a dart map
  static Map<String, List<AIFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

