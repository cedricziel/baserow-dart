//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedTokenUpdate {
  /// Returns a new [PatchedTokenUpdate] instance.
  PatchedTokenUpdate({
    this.name,
    this.permissions,
    this.rotateKey = false,
  });

  /// The human readable name of the database token for the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PatchedTokenUpdatePermissions? permissions;

  /// Indicates if a new key must be generated.
  bool rotateKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedTokenUpdate &&
    other.name == name &&
    other.permissions == permissions &&
    other.rotateKey == rotateKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (rotateKey.hashCode);

  @override
  String toString() => 'PatchedTokenUpdate[name=$name, permissions=$permissions, rotateKey=$rotateKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
      json[r'rotate_key'] = this.rotateKey;
    return json;
  }

  /// Returns a new [PatchedTokenUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedTokenUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedTokenUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedTokenUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedTokenUpdate(
        name: mapValueOfType<String>(json, r'name'),
        permissions: PatchedTokenUpdatePermissions.fromJson(json[r'permissions']),
        rotateKey: mapValueOfType<bool>(json, r'rotate_key') ?? false,
      );
    }
    return null;
  }

  static List<PatchedTokenUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedTokenUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedTokenUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedTokenUpdate> mapFromJson(dynamic json) {
    final map = <String, PatchedTokenUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedTokenUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedTokenUpdate-objects as value to a dart map
  static Map<String, List<PatchedTokenUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedTokenUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedTokenUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

