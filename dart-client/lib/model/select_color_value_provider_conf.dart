//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SelectColorValueProviderConf {
  /// Returns a new [SelectColorValueProviderConf] instance.
  SelectColorValueProviderConf({
    required this.fieldId,
  });

  /// An id of a select field of the table. The value provider return the color of the selected option for each row.
  int? fieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SelectColorValueProviderConf &&
    other.fieldId == fieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldId == null ? 0 : fieldId!.hashCode);

  @override
  String toString() => 'SelectColorValueProviderConf[fieldId=$fieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fieldId != null) {
      json[r'field_id'] = this.fieldId;
    } else {
      json[r'field_id'] = null;
    }
    return json;
  }

  /// Returns a new [SelectColorValueProviderConf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SelectColorValueProviderConf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SelectColorValueProviderConf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SelectColorValueProviderConf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SelectColorValueProviderConf(
        fieldId: mapValueOfType<int>(json, r'field_id'),
      );
    }
    return null;
  }

  static List<SelectColorValueProviderConf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SelectColorValueProviderConf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SelectColorValueProviderConf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SelectColorValueProviderConf> mapFromJson(dynamic json) {
    final map = <String, SelectColorValueProviderConf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SelectColorValueProviderConf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SelectColorValueProviderConf-objects as value to a dart map
  static Map<String, List<SelectColorValueProviderConf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SelectColorValueProviderConf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SelectColorValueProviderConf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_id',
  };
}

