//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LongTextFieldCreateField {
  /// Returns a new [LongTextFieldCreateField] instance.
  LongTextFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    this.longTextEnableRichText,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  /// Enable rich text formatting for the field.
  bool? longTextEnableRichText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LongTextFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.longTextEnableRichText == longTextEnableRichText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (longTextEnableRichText == null ? 0 : longTextEnableRichText!.hashCode);

  @override
  String toString() => 'LongTextFieldCreateField[name=$name, type=$type, description=$description, longTextEnableRichText=$longTextEnableRichText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
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

  /// Returns a new [LongTextFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LongTextFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LongTextFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LongTextFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LongTextFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        longTextEnableRichText: mapValueOfType<bool>(json, r'long_text_enable_rich_text'),
      );
    }
    return null;
  }

  static List<LongTextFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LongTextFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LongTextFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LongTextFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, LongTextFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LongTextFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LongTextFieldCreateField-objects as value to a dart map
  static Map<String, List<LongTextFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LongTextFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LongTextFieldCreateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
  };
}

