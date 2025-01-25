//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OllamaSettings {
  /// Returns a new [OllamaSettings] instance.
  OllamaSettings({
    this.models = const [],
    this.host,
  });

  /// The models that are enabled for this AI type.
  List<String> models;

  /// The host that is used to authenticate with the Ollama API.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OllamaSettings &&
    _deepEquality.equals(other.models, models) &&
    other.host == host;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode) +
    (host == null ? 0 : host!.hashCode);

  @override
  String toString() => 'OllamaSettings[models=$models, host=$host]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    return json;
  }

  /// Returns a new [OllamaSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OllamaSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OllamaSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OllamaSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OllamaSettings(
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        host: mapValueOfType<String>(json, r'host'),
      );
    }
    return null;
  }

  static List<OllamaSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OllamaSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OllamaSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OllamaSettings> mapFromJson(dynamic json) {
    final map = <String, OllamaSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OllamaSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OllamaSettings-objects as value to a dart map
  static Map<String, List<OllamaSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OllamaSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OllamaSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

