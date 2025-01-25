//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LongTextFieldUpdateField {
  /// Returns a new [LongTextFieldUpdateField] instance.
  LongTextFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.longTextEnableRichText,
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

  /// Enable rich text formatting for the field.
  bool? longTextEnableRichText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LongTextFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.longTextEnableRichText == longTextEnableRichText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (longTextEnableRichText == null ? 0 : longTextEnableRichText!.hashCode);

  @override
  String toString() => 'LongTextFieldUpdateField[name=$name, type=$type, description=$description, longTextEnableRichText=$longTextEnableRichText]';

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
    if (this.longTextEnableRichText != null) {
      json[r'long_text_enable_rich_text'] = this.longTextEnableRichText;
    } else {
      json[r'long_text_enable_rich_text'] = null;
    }
    return json;
  }

  /// Returns a new [LongTextFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LongTextFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LongTextFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LongTextFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LongTextFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        longTextEnableRichText: mapValueOfType<bool>(json, r'long_text_enable_rich_text'),
      );
    }
    return null;
  }

  static List<LongTextFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LongTextFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongTextFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LongTextFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, LongTextFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LongTextFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LongTextFieldUpdateField-objects as value to a dart map
  static Map<String, List<LongTextFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LongTextFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LongTextFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

