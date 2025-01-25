//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TextFieldCreateField {
  /// Returns a new [TextFieldCreateField] instance.
  TextFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    this.textDefault,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  /// If set, this value is going to be added every time a new row created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? textDefault;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TextFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.textDefault == textDefault;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (textDefault == null ? 0 : textDefault!.hashCode);

  @override
  String toString() => 'TextFieldCreateField[name=$name, type=$type, description=$description, textDefault=$textDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.textDefault != null) {
      json[r'text_default'] = this.textDefault;
    } else {
      json[r'text_default'] = null;
    }
    return json;
  }

  /// Returns a new [TextFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TextFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TextFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TextFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TextFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        textDefault: mapValueOfType<String>(json, r'text_default'),
      );
    }
    return null;
  }

  static List<TextFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TextFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TextFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TextFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, TextFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TextFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TextFieldCreateField-objects as value to a dart map
  static Map<String, List<TextFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TextFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TextFieldCreateField.listFromJson(entry.value, growable: growable,);
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

