//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class MistralSettings {
  /// Returns a new [MistralSettings] instance.
  MistralSettings({
    this.models = const [],
    this.apiKey,
  });

  /// The models that are enabled for this AI type.
  List<String> models;

  /// The Mistral API key that is used to authenticate with the Mistral API.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MistralSettings &&
    _deepEquality.equals(other.models, models) &&
    other.apiKey == apiKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode) +
    (apiKey == null ? 0 : apiKey!.hashCode);

  @override
  String toString() => 'MistralSettings[models=$models, apiKey=$apiKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
    if (this.apiKey != null) {
      json[r'api_key'] = this.apiKey;
    } else {
      json[r'api_key'] = null;
    }
    return json;
  }

  /// Returns a new [MistralSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MistralSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MistralSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MistralSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MistralSettings(
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        apiKey: mapValueOfType<String>(json, r'api_key'),
      );
    }
    return null;
  }

  static List<MistralSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MistralSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MistralSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MistralSettings> mapFromJson(dynamic json) {
    final map = <String, MistralSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MistralSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MistralSettings-objects as value to a dart map
  static Map<String, List<MistralSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MistralSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MistralSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

