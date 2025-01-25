//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenCreate {
  /// Returns a new [TokenCreate] instance.
  TokenCreate({
    required this.name,
    required this.workspace,
  });

  /// The human readable name of the database token for the user.
  String name;

  /// Only the tables of the workspace can be accessed.
  int workspace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenCreate &&
    other.name == name &&
    other.workspace == workspace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (workspace.hashCode);

  @override
  String toString() => 'TokenCreate[name=$name, workspace=$workspace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'workspace'] = this.workspace;
    return json;
  }

  /// Returns a new [TokenCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenCreate(
        name: mapValueOfType<String>(json, r'name')!,
        workspace: mapValueOfType<int>(json, r'workspace')!,
      );
    }
    return null;
  }

  static List<TokenCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenCreate> mapFromJson(dynamic json) {
    final map = <String, TokenCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenCreate-objects as value to a dart map
  static Map<String, List<TokenCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'workspace',
  };
}

