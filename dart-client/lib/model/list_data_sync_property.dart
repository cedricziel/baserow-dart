//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ListDataSyncProperty {
  /// Returns a new [ListDataSyncProperty] instance.
  ListDataSyncProperty({
    required this.uniquePrimary,
    required this.key,
    required this.name,
    required this.fieldType,
    required this.initiallySelected,
  });

  bool uniquePrimary;

  String key;

  String name;

  String fieldType;

  bool initiallySelected;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListDataSyncProperty &&
    other.uniquePrimary == uniquePrimary &&
    other.key == key &&
    other.name == name &&
    other.fieldType == fieldType &&
    other.initiallySelected == initiallySelected;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uniquePrimary.hashCode) +
    (key.hashCode) +
    (name.hashCode) +
    (fieldType.hashCode) +
    (initiallySelected.hashCode);

  @override
  String toString() => 'ListDataSyncProperty[uniquePrimary=$uniquePrimary, key=$key, name=$name, fieldType=$fieldType, initiallySelected=$initiallySelected]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'unique_primary'] = this.uniquePrimary;
      json[r'key'] = this.key;
      json[r'name'] = this.name;
      json[r'field_type'] = this.fieldType;
      json[r'initially_selected'] = this.initiallySelected;
    return json;
  }

  /// Returns a new [ListDataSyncProperty] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDataSyncProperty? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListDataSyncProperty[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListDataSyncProperty[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListDataSyncProperty(
        uniquePrimary: mapValueOfType<bool>(json, r'unique_primary')!,
        key: mapValueOfType<String>(json, r'key')!,
        name: mapValueOfType<String>(json, r'name')!,
        fieldType: mapValueOfType<String>(json, r'field_type')!,
        initiallySelected: mapValueOfType<bool>(json, r'initially_selected')!,
      );
    }
    return null;
  }

  static List<ListDataSyncProperty> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListDataSyncProperty>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListDataSyncProperty.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListDataSyncProperty> mapFromJson(dynamic json) {
    final map = <String, ListDataSyncProperty>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListDataSyncProperty.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListDataSyncProperty-objects as value to a dart map
  static Map<String, List<ListDataSyncProperty>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListDataSyncProperty>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListDataSyncProperty.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'unique_primary',
    'key',
    'name',
    'field_type',
    'initially_selected',
  };
}

