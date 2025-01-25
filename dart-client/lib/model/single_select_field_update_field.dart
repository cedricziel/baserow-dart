//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SingleSelectFieldUpdateField {
  /// Returns a new [SingleSelectFieldUpdateField] instance.
  SingleSelectFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.selectOptions = const [],
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is SingleSelectFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    _deepEquality.equals(other.selectOptions, selectOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (selectOptions.hashCode);

  @override
  String toString() => 'SingleSelectFieldUpdateField[name=$name, type=$type, description=$description, selectOptions=$selectOptions]';

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
    return json;
  }

  /// Returns a new [SingleSelectFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SingleSelectFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SingleSelectFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SingleSelectFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SingleSelectFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        selectOptions: SelectOption.listFromJson(json[r'select_options']),
      );
    }
    return null;
  }

  static List<SingleSelectFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SingleSelectFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SingleSelectFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SingleSelectFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, SingleSelectFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SingleSelectFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SingleSelectFieldUpdateField-objects as value to a dart map
  static Map<String, List<SingleSelectFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SingleSelectFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SingleSelectFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

