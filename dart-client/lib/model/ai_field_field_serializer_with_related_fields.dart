//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AIFieldFieldSerializerWithRelatedFields {
  /// Returns a new [AIFieldFieldSerializerWithRelatedFields] instance.
  AIFieldFieldSerializerWithRelatedFields({
    required this.id,
    required this.tableId,
    required this.name,
    required this.order,
    required this.type,
    this.primary,
    required this.readOnly,
    required this.immutableType,
    required this.immutableProperties,
    this.description,
    this.relatedFields = const [],
    this.selectOptions = const [],
    this.aiGenerativeAiType,
    this.aiGenerativeAiModel,
    this.aiOutputType,
    this.aiTemperature,
    this.aiPrompt = '',
    this.aiFileFieldId,
  });

  int id;

  int tableId;

  String name;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  /// The type of the related field.
  String type;

  /// Indicates if the field is a primary field. If `true` the field cannot be deleted and the value should represent the whole row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? primary;

  /// Indicates whether the field is a read only field. If true, it's not possible to update the cell value.
  bool readOnly;

  /// Indicates whether the field type is immutable. If true, then it won't be possible to change the field type via the API.
  bool? immutableType;

  /// Indicates whether the field properties are immutable. If true, then it won't be possible to change the properties and the type via the API.
  bool? immutableProperties;

  /// Field description
  String? description;

  /// A list of related fields which also changed.
  List<Field> relatedFields;

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
  bool operator ==(Object other) => identical(this, other) || other is AIFieldFieldSerializerWithRelatedFields &&
    other.id == id &&
    other.tableId == tableId &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    other.primary == primary &&
    other.readOnly == readOnly &&
    other.immutableType == immutableType &&
    other.immutableProperties == immutableProperties &&
    other.description == description &&
    _deepEquality.equals(other.relatedFields, relatedFields) &&
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
    (id.hashCode) +
    (tableId.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (primary == null ? 0 : primary!.hashCode) +
    (readOnly.hashCode) +
    (immutableType == null ? 0 : immutableType!.hashCode) +
    (immutableProperties == null ? 0 : immutableProperties!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (relatedFields.hashCode) +
    (selectOptions.hashCode) +
    (aiGenerativeAiType == null ? 0 : aiGenerativeAiType!.hashCode) +
    (aiGenerativeAiModel == null ? 0 : aiGenerativeAiModel!.hashCode) +
    (aiOutputType == null ? 0 : aiOutputType!.hashCode) +
    (aiTemperature == null ? 0 : aiTemperature!.hashCode) +
    (aiPrompt.hashCode) +
    (aiFileFieldId == null ? 0 : aiFileFieldId!.hashCode);

  @override
  String toString() => 'AIFieldFieldSerializerWithRelatedFields[id=$id, tableId=$tableId, name=$name, order=$order, type=$type, primary=$primary, readOnly=$readOnly, immutableType=$immutableType, immutableProperties=$immutableProperties, description=$description, relatedFields=$relatedFields, selectOptions=$selectOptions, aiGenerativeAiType=$aiGenerativeAiType, aiGenerativeAiModel=$aiGenerativeAiModel, aiOutputType=$aiOutputType, aiTemperature=$aiTemperature, aiPrompt=$aiPrompt, aiFileFieldId=$aiFileFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'table_id'] = this.tableId;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
    if (this.primary != null) {
      json[r'primary'] = this.primary;
    } else {
      json[r'primary'] = null;
    }
      json[r'read_only'] = this.readOnly;
    if (this.immutableType != null) {
      json[r'immutable_type'] = this.immutableType;
    } else {
      json[r'immutable_type'] = null;
    }
    if (this.immutableProperties != null) {
      json[r'immutable_properties'] = this.immutableProperties;
    } else {
      json[r'immutable_properties'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'related_fields'] = this.relatedFields;
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

  /// Returns a new [AIFieldFieldSerializerWithRelatedFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIFieldFieldSerializerWithRelatedFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIFieldFieldSerializerWithRelatedFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIFieldFieldSerializerWithRelatedFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIFieldFieldSerializerWithRelatedFields(
        id: mapValueOfType<int>(json, r'id')!,
        tableId: mapValueOfType<int>(json, r'table_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        primary: mapValueOfType<bool>(json, r'primary'),
        readOnly: mapValueOfType<bool>(json, r'read_only')!,
        immutableType: mapValueOfType<bool>(json, r'immutable_type'),
        immutableProperties: mapValueOfType<bool>(json, r'immutable_properties'),
        description: mapValueOfType<String>(json, r'description'),
        relatedFields: Field.listFromJson(json[r'related_fields']),
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

  static List<AIFieldFieldSerializerWithRelatedFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIFieldFieldSerializerWithRelatedFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIFieldFieldSerializerWithRelatedFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIFieldFieldSerializerWithRelatedFields> mapFromJson(dynamic json) {
    final map = <String, AIFieldFieldSerializerWithRelatedFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIFieldFieldSerializerWithRelatedFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIFieldFieldSerializerWithRelatedFields-objects as value to a dart map
  static Map<String, List<AIFieldFieldSerializerWithRelatedFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIFieldFieldSerializerWithRelatedFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIFieldFieldSerializerWithRelatedFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'table_id',
    'name',
    'order',
    'type',
    'read_only',
    'immutable_type',
    'immutable_properties',
    'related_fields',
  };
}

