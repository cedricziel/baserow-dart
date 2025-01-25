//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CollectionField {
  /// Returns a new [CollectionField] instance.
  CollectionField({
    required this.id,
    this.uid,
    required this.name,
    required this.type,
    this.styles,
  });

  int id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uid;

  /// The name of the field.
  String name;

  /// The type of the field.
  String type;

  /// The theme overrides for this field
  Object? styles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionField &&
    other.id == id &&
    other.uid == uid &&
    other.name == name &&
    other.type == type &&
    other.styles == styles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (name.hashCode) +
    (type.hashCode) +
    (styles == null ? 0 : styles!.hashCode);

  @override
  String toString() => 'CollectionField[id=$id, uid=$uid, name=$name, type=$type, styles=$styles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.styles != null) {
      json[r'styles'] = this.styles;
    } else {
      json[r'styles'] = null;
    }
    return json;
  }

  /// Returns a new [CollectionField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollectionField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollectionField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectionField(
        id: mapValueOfType<int>(json, r'id')!,
        uid: mapValueOfType<String>(json, r'uid'),
        name: mapValueOfType<String>(json, r'name')!,
        type: mapValueOfType<String>(json, r'type')!,
        styles: mapValueOfType<Object>(json, r'styles'),
      );
    }
    return null;
  }

  static List<CollectionField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollectionField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionField> mapFromJson(dynamic json) {
    final map = <String, CollectionField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionField-objects as value to a dart map
  static Map<String, List<CollectionField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollectionField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollectionField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'type',
  };
}

