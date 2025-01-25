//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowIntegrationUpdateIntegration {
  /// Returns a new [LocalBaserowIntegrationUpdateIntegration] instance.
  LocalBaserowIntegrationUpdateIntegration({
    this.name,
    required this.contextData,
    required this.authorizedUser,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  LocalBaserowContextData contextData;

  SubjectUser authorizedUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowIntegrationUpdateIntegration &&
    other.name == name &&
    other.contextData == contextData &&
    other.authorizedUser == authorizedUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (contextData.hashCode) +
    (authorizedUser.hashCode);

  @override
  String toString() => 'LocalBaserowIntegrationUpdateIntegration[name=$name, contextData=$contextData, authorizedUser=$authorizedUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'context_data'] = this.contextData;
      json[r'authorized_user'] = this.authorizedUser;
    return json;
  }

  /// Returns a new [LocalBaserowIntegrationUpdateIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowIntegrationUpdateIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowIntegrationUpdateIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowIntegrationUpdateIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowIntegrationUpdateIntegration(
        name: mapValueOfType<String>(json, r'name'),
        contextData: LocalBaserowContextData.fromJson(json[r'context_data'])!,
        authorizedUser: SubjectUser.fromJson(json[r'authorized_user'])!,
      );
    }
    return null;
  }

  static List<LocalBaserowIntegrationUpdateIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowIntegrationUpdateIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowIntegrationUpdateIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowIntegrationUpdateIntegration> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowIntegrationUpdateIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowIntegrationUpdateIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowIntegrationUpdateIntegration-objects as value to a dart map
  static Map<String, List<LocalBaserowIntegrationUpdateIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowIntegrationUpdateIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowIntegrationUpdateIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'context_data',
    'authorized_user',
  };
}

