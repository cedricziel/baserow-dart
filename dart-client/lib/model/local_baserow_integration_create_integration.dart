//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowIntegrationCreateIntegration {
  /// Returns a new [LocalBaserowIntegrationCreateIntegration] instance.
  LocalBaserowIntegrationCreateIntegration({
    this.beforeId,
    required this.type,
    required this.name,
    required this.contextData,
    required this.authorizedUser,
  });

  /// If provided, creates the integration before the integration with the given id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? beforeId;

  /// The type of the integration.  * `local_baserow` - local_baserow
  Type050Enum type;

  String name;

  LocalBaserowContextData contextData;

  SubjectUser authorizedUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowIntegrationCreateIntegration &&
    other.beforeId == beforeId &&
    other.type == type &&
    other.name == name &&
    other.contextData == contextData &&
    other.authorizedUser == authorizedUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beforeId == null ? 0 : beforeId!.hashCode) +
    (type.hashCode) +
    (name.hashCode) +
    (contextData.hashCode) +
    (authorizedUser.hashCode);

  @override
  String toString() => 'LocalBaserowIntegrationCreateIntegration[beforeId=$beforeId, type=$type, name=$name, contextData=$contextData, authorizedUser=$authorizedUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
    }
      json[r'type'] = this.type;
      json[r'name'] = this.name;
      json[r'context_data'] = this.contextData;
      json[r'authorized_user'] = this.authorizedUser;
    return json;
  }

  /// Returns a new [LocalBaserowIntegrationCreateIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowIntegrationCreateIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowIntegrationCreateIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowIntegrationCreateIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowIntegrationCreateIntegration(
        beforeId: mapValueOfType<int>(json, r'before_id'),
        type: Type050Enum.fromJson(json[r'type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        contextData: LocalBaserowContextData.fromJson(json[r'context_data'])!,
        authorizedUser: SubjectUser.fromJson(json[r'authorized_user'])!,
      );
    }
    return null;
  }

  static List<LocalBaserowIntegrationCreateIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowIntegrationCreateIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowIntegrationCreateIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowIntegrationCreateIntegration> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowIntegrationCreateIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowIntegrationCreateIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowIntegrationCreateIntegration-objects as value to a dart map
  static Map<String, List<LocalBaserowIntegrationCreateIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowIntegrationCreateIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowIntegrationCreateIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'name',
    'context_data',
    'authorized_user',
  };
}

