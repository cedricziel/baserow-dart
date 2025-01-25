//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RelatedFields {
  /// Returns a new [RelatedFields] instance.
  RelatedFields({
    this.relatedFields = const [],
  });

  /// A list of related fields which also changed.
  List<Field> relatedFields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RelatedFields &&
    _deepEquality.equals(other.relatedFields, relatedFields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relatedFields.hashCode);

  @override
  String toString() => 'RelatedFields[relatedFields=$relatedFields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'related_fields'] = this.relatedFields;
    return json;
  }

  /// Returns a new [RelatedFields] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RelatedFields? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RelatedFields[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RelatedFields[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RelatedFields(
        relatedFields: Field.listFromJson(json[r'related_fields']),
      );
    }
    return null;
  }

  static List<RelatedFields> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelatedFields>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelatedFields.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RelatedFields> mapFromJson(dynamic json) {
    final map = <String, RelatedFields>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelatedFields.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RelatedFields-objects as value to a dart map
  static Map<String, List<RelatedFields>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RelatedFields>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RelatedFields.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'related_fields',
  };
}

