//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CollectionElementPropertyOptions {
  /// Returns a new [CollectionElementPropertyOptions] instance.
  CollectionElementPropertyOptions({
    required this.schemaProperty,
    this.filterable,
    this.sortable,
    this.searchable,
  });

  /// The name of the property in the schema this option belongs to.
  String schemaProperty;

  /// Whether this element is filterable or not by visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filterable;

  /// Whether this element is sortable or not by visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sortable;

  /// Whether this element is searchable or not by visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? searchable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CollectionElementPropertyOptions &&
    other.schemaProperty == schemaProperty &&
    other.filterable == filterable &&
    other.sortable == sortable &&
    other.searchable == searchable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (schemaProperty.hashCode) +
    (filterable == null ? 0 : filterable!.hashCode) +
    (sortable == null ? 0 : sortable!.hashCode) +
    (searchable == null ? 0 : searchable!.hashCode);

  @override
  String toString() => 'CollectionElementPropertyOptions[schemaProperty=$schemaProperty, filterable=$filterable, sortable=$sortable, searchable=$searchable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'schema_property'] = this.schemaProperty;
    if (this.filterable != null) {
      json[r'filterable'] = this.filterable;
    } else {
      json[r'filterable'] = null;
    }
    if (this.sortable != null) {
      json[r'sortable'] = this.sortable;
    } else {
      json[r'sortable'] = null;
    }
    if (this.searchable != null) {
      json[r'searchable'] = this.searchable;
    } else {
      json[r'searchable'] = null;
    }
    return json;
  }

  /// Returns a new [CollectionElementPropertyOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CollectionElementPropertyOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CollectionElementPropertyOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CollectionElementPropertyOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CollectionElementPropertyOptions(
        schemaProperty: mapValueOfType<String>(json, r'schema_property')!,
        filterable: mapValueOfType<bool>(json, r'filterable'),
        sortable: mapValueOfType<bool>(json, r'sortable'),
        searchable: mapValueOfType<bool>(json, r'searchable'),
      );
    }
    return null;
  }

  static List<CollectionElementPropertyOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CollectionElementPropertyOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CollectionElementPropertyOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CollectionElementPropertyOptions> mapFromJson(dynamic json) {
    final map = <String, CollectionElementPropertyOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CollectionElementPropertyOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CollectionElementPropertyOptions-objects as value to a dart map
  static Map<String, List<CollectionElementPropertyOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CollectionElementPropertyOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CollectionElementPropertyOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schema_property',
  };
}

