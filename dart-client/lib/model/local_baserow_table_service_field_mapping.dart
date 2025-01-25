//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowTableServiceFieldMapping {
  /// Returns a new [LocalBaserowTableServiceFieldMapping] instance.
  LocalBaserowTableServiceFieldMapping({
    required this.fieldId,
    required this.enabled,
    required this.value,
  });

  /// The primary key of the associated database table field.
  int fieldId;

  /// Indicates whether the field mapping is enabled or not.
  bool enabled;

  String value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowTableServiceFieldMapping &&
    other.fieldId == fieldId &&
    other.enabled == enabled &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldId.hashCode) +
    (enabled.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'LocalBaserowTableServiceFieldMapping[fieldId=$fieldId, enabled=$enabled, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_id'] = this.fieldId;
      json[r'enabled'] = this.enabled;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [LocalBaserowTableServiceFieldMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowTableServiceFieldMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowTableServiceFieldMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowTableServiceFieldMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowTableServiceFieldMapping(
        fieldId: mapValueOfType<int>(json, r'field_id')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        value: mapValueOfType<String>(json, r'value')!,
      );
    }
    return null;
  }

  static List<LocalBaserowTableServiceFieldMapping> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowTableServiceFieldMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowTableServiceFieldMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowTableServiceFieldMapping> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowTableServiceFieldMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowTableServiceFieldMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowTableServiceFieldMapping-objects as value to a dart map
  static Map<String, List<LocalBaserowTableServiceFieldMapping>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowTableServiceFieldMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowTableServiceFieldMapping.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_id',
    'enabled',
    'value',
  };
}

