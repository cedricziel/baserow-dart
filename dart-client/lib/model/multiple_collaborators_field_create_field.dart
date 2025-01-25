//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class MultipleCollaboratorsFieldCreateField {
  /// Returns a new [MultipleCollaboratorsFieldCreateField] instance.
  MultipleCollaboratorsFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    this.notifyUserWhenAdded,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? notifyUserWhenAdded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MultipleCollaboratorsFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.notifyUserWhenAdded == notifyUserWhenAdded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (notifyUserWhenAdded == null ? 0 : notifyUserWhenAdded!.hashCode);

  @override
  String toString() => 'MultipleCollaboratorsFieldCreateField[name=$name, type=$type, description=$description, notifyUserWhenAdded=$notifyUserWhenAdded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.notifyUserWhenAdded != null) {
      json[r'notify_user_when_added'] = this.notifyUserWhenAdded;
    } else {
      json[r'notify_user_when_added'] = null;
    }
    return json;
  }

  /// Returns a new [MultipleCollaboratorsFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultipleCollaboratorsFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MultipleCollaboratorsFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MultipleCollaboratorsFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MultipleCollaboratorsFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        notifyUserWhenAdded: mapValueOfType<bool>(json, r'notify_user_when_added'),
      );
    }
    return null;
  }

  static List<MultipleCollaboratorsFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultipleCollaboratorsFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultipleCollaboratorsFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MultipleCollaboratorsFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, MultipleCollaboratorsFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MultipleCollaboratorsFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MultipleCollaboratorsFieldCreateField-objects as value to a dart map
  static Map<String, List<MultipleCollaboratorsFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MultipleCollaboratorsFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MultipleCollaboratorsFieldCreateField.listFromJson(entry.value, growable: growable,);
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

