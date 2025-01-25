//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GalleryViewFieldOptions {
  /// Returns a new [GalleryViewFieldOptions] instance.
  GalleryViewFieldOptions({
    this.fieldOptions = const {},
  });

  /// An object containing the field id as key and the properties related to view as value.
  Map<String, GalleryViewFieldOptions> fieldOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GalleryViewFieldOptions &&
    _deepEquality.equals(other.fieldOptions, fieldOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldOptions.hashCode);

  @override
  String toString() => 'GalleryViewFieldOptions[fieldOptions=$fieldOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_options'] = this.fieldOptions;
    return json;
  }

  /// Returns a new [GalleryViewFieldOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GalleryViewFieldOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GalleryViewFieldOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GalleryViewFieldOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GalleryViewFieldOptions(
        fieldOptions: GalleryViewFieldOptions.mapFromJson(json[r'field_options']),
      );
    }
    return null;
  }

  static List<GalleryViewFieldOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GalleryViewFieldOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GalleryViewFieldOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GalleryViewFieldOptions> mapFromJson(dynamic json) {
    final map = <String, GalleryViewFieldOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GalleryViewFieldOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GalleryViewFieldOptions-objects as value to a dart map
  static Map<String, List<GalleryViewFieldOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GalleryViewFieldOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GalleryViewFieldOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_options',
  };
}

