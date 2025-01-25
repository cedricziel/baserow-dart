//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowUserSourceUpdateUserSource {
  /// Returns a new [LocalBaserowUserSourceUpdateUserSource] instance.
  LocalBaserowUserSourceUpdateUserSource({
    this.name,
    this.integrationId,
    this.authProviders = const [],
    this.tableId,
    this.emailFieldId,
    this.nameFieldId,
    this.roleFieldId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The related integration id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? integrationId;

  /// Auth providers related to this user source.
  List<AppAuthProviderBaseAppAuthProvider> authProviders;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the field to use as email for the user account.
  int? emailFieldId;

  /// The id of the field that contains the user name.
  int? nameFieldId;

  /// The id of the field that contains the user role.
  int? roleFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowUserSourceUpdateUserSource &&
    other.name == name &&
    other.integrationId == integrationId &&
    _deepEquality.equals(other.authProviders, authProviders) &&
    other.tableId == tableId &&
    other.emailFieldId == emailFieldId &&
    other.nameFieldId == nameFieldId &&
    other.roleFieldId == roleFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (integrationId == null ? 0 : integrationId!.hashCode) +
    (authProviders.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (emailFieldId == null ? 0 : emailFieldId!.hashCode) +
    (nameFieldId == null ? 0 : nameFieldId!.hashCode) +
    (roleFieldId == null ? 0 : roleFieldId!.hashCode);

  @override
  String toString() => 'LocalBaserowUserSourceUpdateUserSource[name=$name, integrationId=$integrationId, authProviders=$authProviders, tableId=$tableId, emailFieldId=$emailFieldId, nameFieldId=$nameFieldId, roleFieldId=$roleFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.integrationId != null) {
      json[r'integration_id'] = this.integrationId;
    } else {
      json[r'integration_id'] = null;
    }
      json[r'auth_providers'] = this.authProviders;
    if (this.tableId != null) {
      json[r'table_id'] = this.tableId;
    } else {
      json[r'table_id'] = null;
    }
    if (this.emailFieldId != null) {
      json[r'email_field_id'] = this.emailFieldId;
    } else {
      json[r'email_field_id'] = null;
    }
    if (this.nameFieldId != null) {
      json[r'name_field_id'] = this.nameFieldId;
    } else {
      json[r'name_field_id'] = null;
    }
    if (this.roleFieldId != null) {
      json[r'role_field_id'] = this.roleFieldId;
    } else {
      json[r'role_field_id'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowUserSourceUpdateUserSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowUserSourceUpdateUserSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowUserSourceUpdateUserSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowUserSourceUpdateUserSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowUserSourceUpdateUserSource(
        name: mapValueOfType<String>(json, r'name'),
        integrationId: mapValueOfType<int>(json, r'integration_id'),
        authProviders: AppAuthProviderBaseAppAuthProvider.listFromJson(json[r'auth_providers']),
        tableId: mapValueOfType<int>(json, r'table_id'),
        emailFieldId: mapValueOfType<int>(json, r'email_field_id'),
        nameFieldId: mapValueOfType<int>(json, r'name_field_id'),
        roleFieldId: mapValueOfType<int>(json, r'role_field_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowUserSourceUpdateUserSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowUserSourceUpdateUserSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowUserSourceUpdateUserSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowUserSourceUpdateUserSource> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowUserSourceUpdateUserSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowUserSourceUpdateUserSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowUserSourceUpdateUserSource-objects as value to a dart map
  static Map<String, List<LocalBaserowUserSourceUpdateUserSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowUserSourceUpdateUserSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowUserSourceUpdateUserSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

