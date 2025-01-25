//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedTokenUpdatePermissions {
  /// Returns a new [PatchedTokenUpdatePermissions] instance.
  PatchedTokenUpdatePermissions({
    this.create,
    this.read,
    this.update,
    this.delete,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatchedTokenUpdatePermissionsCreate? create;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatchedTokenUpdatePermissionsCreate? read;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatchedTokenUpdatePermissionsCreate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatchedTokenUpdatePermissionsCreate? delete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedTokenUpdatePermissions &&
    other.create == create &&
    other.read == read &&
    other.update == update &&
    other.delete == delete;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (create == null ? 0 : create!.hashCode) +
    (read == null ? 0 : read!.hashCode) +
    (update == null ? 0 : update!.hashCode) +
    (delete == null ? 0 : delete!.hashCode);

  @override
  String toString() => 'PatchedTokenUpdatePermissions[create=$create, read=$read, update=$update, delete=$delete]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.create != null) {
      json[r'create'] = this.create;
    } else {
      json[r'create'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedTokenUpdatePermissions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedTokenUpdatePermissions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedTokenUpdatePermissions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedTokenUpdatePermissions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedTokenUpdatePermissions(
        create: PatchedTokenUpdatePermissionsCreate.fromJson(json[r'create']),
        read: PatchedTokenUpdatePermissionsCreate.fromJson(json[r'read']),
        update: PatchedTokenUpdatePermissionsCreate.fromJson(json[r'update']),
        delete: PatchedTokenUpdatePermissionsCreate.fromJson(json[r'delete']),
      );
    }
    return null;
  }

  static List<PatchedTokenUpdatePermissions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedTokenUpdatePermissions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedTokenUpdatePermissions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedTokenUpdatePermissions> mapFromJson(dynamic json) {
    final map = <String, PatchedTokenUpdatePermissions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedTokenUpdatePermissions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedTokenUpdatePermissions-objects as value to a dart map
  static Map<String, List<PatchedTokenUpdatePermissions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedTokenUpdatePermissions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedTokenUpdatePermissions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

