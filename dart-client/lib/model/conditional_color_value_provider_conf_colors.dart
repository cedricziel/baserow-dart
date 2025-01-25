//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ConditionalColorValueProviderConfColors {
  /// Returns a new [ConditionalColorValueProviderConfColors] instance.
  ConditionalColorValueProviderConfColors({
    this.colors = const [],
  });

  /// A list of color items. For each row, the value provider try to match the defined colors one by one in the given order. The first matching color is returned to the decorator.
  List<ConditionalColorValueProviderConfColor> colors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionalColorValueProviderConfColors &&
    _deepEquality.equals(other.colors, colors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (colors.hashCode);

  @override
  String toString() => 'ConditionalColorValueProviderConfColors[colors=$colors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'colors'] = this.colors;
    return json;
  }

  /// Returns a new [ConditionalColorValueProviderConfColors] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionalColorValueProviderConfColors? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionalColorValueProviderConfColors[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionalColorValueProviderConfColors[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionalColorValueProviderConfColors(
        colors: ConditionalColorValueProviderConfColor.listFromJson(json[r'colors']),
      );
    }
    return null;
  }

  static List<ConditionalColorValueProviderConfColors> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionalColorValueProviderConfColors>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionalColorValueProviderConfColors.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionalColorValueProviderConfColors> mapFromJson(dynamic json) {
    final map = <String, ConditionalColorValueProviderConfColors>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionalColorValueProviderConfColors.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionalColorValueProviderConfColors-objects as value to a dart map
  static Map<String, List<ConditionalColorValueProviderConfColors>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionalColorValueProviderConfColors>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionalColorValueProviderConfColors.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'colors',
  };
}

