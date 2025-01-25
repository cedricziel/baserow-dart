//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TypographyConfigBlock {
  /// Returns a new [TypographyConfigBlock] instance.
  TypographyConfigBlock({
    this.typography,
  });

  /// Styles overrides for typography
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TypographyThemeConfigBlock? typography;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypographyConfigBlock &&
    other.typography == typography;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (typography == null ? 0 : typography!.hashCode);

  @override
  String toString() => 'TypographyConfigBlock[typography=$typography]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.typography != null) {
      json[r'typography'] = this.typography;
    } else {
      json[r'typography'] = null;
    }
    return json;
  }

  /// Returns a new [TypographyConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypographyConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TypographyConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TypographyConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TypographyConfigBlock(
        typography: TypographyThemeConfigBlock.fromJson(json[r'typography']),
      );
    }
    return null;
  }

  static List<TypographyConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypographyConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypographyConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypographyConfigBlock> mapFromJson(dynamic json) {
    final map = <String, TypographyConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypographyConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypographyConfigBlock-objects as value to a dart map
  static Map<String, List<TypographyConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TypographyConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypographyConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

