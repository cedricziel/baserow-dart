//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowIntegrationIntegration {
  /// Returns a new [LocalBaserowIntegrationIntegration] instance.
  LocalBaserowIntegrationIntegration({
    required this.id,
    required this.applicationId,
    required this.type,
    required this.name,
    required this.order,
    required this.contextData,
    required this.authorizedUser,
  });

  int id;

  int applicationId;

  /// The type of the integration.
  String type;

  String name;

  /// Lowest first.
  double order;

  LocalBaserowContextData contextData;

  SubjectUser authorizedUser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowIntegrationIntegration &&
    other.id == id &&
    other.applicationId == applicationId &&
    other.type == type &&
    other.name == name &&
    other.order == order &&
    other.contextData == contextData &&
    other.authorizedUser == authorizedUser;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (applicationId.hashCode) +
    (type.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (contextData.hashCode) +
    (authorizedUser.hashCode);

  @override
  String toString() => 'LocalBaserowIntegrationIntegration[id=$id, applicationId=$applicationId, type=$type, name=$name, order=$order, contextData=$contextData, authorizedUser=$authorizedUser]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'application_id'] = this.applicationId;
      json[r'type'] = this.type;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'context_data'] = this.contextData;
      json[r'authorized_user'] = this.authorizedUser;
    return json;
  }

  /// Returns a new [LocalBaserowIntegrationIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowIntegrationIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowIntegrationIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowIntegrationIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowIntegrationIntegration(
        id: mapValueOfType<int>(json, r'id')!,
        applicationId: mapValueOfType<int>(json, r'application_id')!,
        type: mapValueOfType<String>(json, r'type')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<double>(json, r'order')!,
        contextData: LocalBaserowContextData.fromJson(json[r'context_data'])!,
        authorizedUser: SubjectUser.fromJson(json[r'authorized_user'])!,
      );
    }
    return null;
  }

  static List<LocalBaserowIntegrationIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowIntegrationIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowIntegrationIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowIntegrationIntegration> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowIntegrationIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowIntegrationIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowIntegrationIntegration-objects as value to a dart map
  static Map<String, List<LocalBaserowIntegrationIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowIntegrationIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowIntegrationIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'application_id',
    'type',
    'name',
    'order',
    'context_data',
    'authorized_user',
  };
}

