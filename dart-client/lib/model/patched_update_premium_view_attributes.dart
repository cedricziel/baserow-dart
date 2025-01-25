//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUpdatePremiumViewAttributes {
  /// Returns a new [PatchedUpdatePremiumViewAttributes] instance.
  PatchedUpdatePremiumViewAttributes({
    this.showLogo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showLogo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUpdatePremiumViewAttributes &&
    other.showLogo == showLogo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (showLogo == null ? 0 : showLogo!.hashCode);

  @override
  String toString() => 'PatchedUpdatePremiumViewAttributes[showLogo=$showLogo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.showLogo != null) {
      json[r'show_logo'] = this.showLogo;
    } else {
      json[r'show_logo'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUpdatePremiumViewAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUpdatePremiumViewAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUpdatePremiumViewAttributes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUpdatePremiumViewAttributes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUpdatePremiumViewAttributes(
        showLogo: mapValueOfType<bool>(json, r'show_logo'),
      );
    }
    return null;
  }

  static List<PatchedUpdatePremiumViewAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUpdatePremiumViewAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUpdatePremiumViewAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUpdatePremiumViewAttributes> mapFromJson(dynamic json) {
    final map = <String, PatchedUpdatePremiumViewAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUpdatePremiumViewAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUpdatePremiumViewAttributes-objects as value to a dart map
  static Map<String, List<PatchedUpdatePremiumViewAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUpdatePremiumViewAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUpdatePremiumViewAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

