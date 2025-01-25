//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowUserSourceUserSourceRoles {
  /// Returns a new [LocalBaserowUserSourceUserSourceRoles] instance.
  LocalBaserowUserSourceUserSourceRoles({
    required this.id,
    this.roles = const [],
    this.tableId,
    this.emailFieldId,
    this.nameFieldId,
    this.roleFieldId,
  });

  int id;

  List<String> roles;

  /// The id of the Baserow table we want the data for.
  int? tableId;

  /// The id of the field to use as email for the user account.
  int? emailFieldId;

  /// The id of the field that contains the user name.
  int? nameFieldId;

  /// The id of the field that contains the user role.
  int? roleFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowUserSourceUserSourceRoles &&
    other.id == id &&
    _deepEquality.equals(other.roles, roles) &&
    other.tableId == tableId &&
    other.emailFieldId == emailFieldId &&
    other.nameFieldId == nameFieldId &&
    other.roleFieldId == roleFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (roles.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (emailFieldId == null ? 0 : emailFieldId!.hashCode) +
    (nameFieldId == null ? 0 : nameFieldId!.hashCode) +
    (roleFieldId == null ? 0 : roleFieldId!.hashCode);

  @override
  String toString() => 'LocalBaserowUserSourceUserSourceRoles[id=$id, roles=$roles, tableId=$tableId, emailFieldId=$emailFieldId, nameFieldId=$nameFieldId, roleFieldId=$roleFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'roles'] = this.roles;
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

  /// Returns a new [LocalBaserowUserSourceUserSourceRoles] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowUserSourceUserSourceRoles? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowUserSourceUserSourceRoles[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowUserSourceUserSourceRoles[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowUserSourceUserSourceRoles(
        id: mapValueOfType<int>(json, r'id')!,
        roles: json[r'roles'] is Iterable
            ? (json[r'roles'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tableId: mapValueOfType<int>(json, r'table_id'),
        emailFieldId: mapValueOfType<int>(json, r'email_field_id'),
        nameFieldId: mapValueOfType<int>(json, r'name_field_id'),
        roleFieldId: mapValueOfType<int>(json, r'role_field_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowUserSourceUserSourceRoles> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowUserSourceUserSourceRoles>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowUserSourceUserSourceRoles.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowUserSourceUserSourceRoles> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowUserSourceUserSourceRoles>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowUserSourceUserSourceRoles.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowUserSourceUserSourceRoles-objects as value to a dart map
  static Map<String, List<LocalBaserowUserSourceUserSourceRoles>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowUserSourceUserSourceRoles>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowUserSourceUserSourceRoles.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'roles',
  };
}

