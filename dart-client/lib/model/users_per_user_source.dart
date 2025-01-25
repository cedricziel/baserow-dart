//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class UsersPerUserSource {
  /// Returns a new [UsersPerUserSource] instance.
  UsersPerUserSource({
    this.usersPerUserSources = const {},
  });

  /// An object keyed by the id of the user source and the value being the list of users for this user source.
  Map<String, List<UserSourceUser>> usersPerUserSources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsersPerUserSource &&
    _deepEquality.equals(other.usersPerUserSources, usersPerUserSources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (usersPerUserSources.hashCode);

  @override
  String toString() => 'UsersPerUserSource[usersPerUserSources=$usersPerUserSources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'users_per_user_sources'] = this.usersPerUserSources;
    return json;
  }

  /// Returns a new [UsersPerUserSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsersPerUserSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsersPerUserSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsersPerUserSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsersPerUserSource(
        usersPerUserSources: json[r'users_per_user_sources'] == null
          ? const {}
            : UserSourceUser.mapListFromJson(json[r'users_per_user_sources']),
      );
    }
    return null;
  }

  static List<UsersPerUserSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsersPerUserSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsersPerUserSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsersPerUserSource> mapFromJson(dynamic json) {
    final map = <String, UsersPerUserSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsersPerUserSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsersPerUserSource-objects as value to a dart map
  static Map<String, List<UsersPerUserSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsersPerUserSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsersPerUserSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'users_per_user_sources',
  };
}

