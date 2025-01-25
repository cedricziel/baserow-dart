//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TokenBlacklist {
  /// Returns a new [TokenBlacklist] instance.
  TokenBlacklist({
    required this.refresh,
  });

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenBlacklist &&
    other.refresh == refresh;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (refresh.hashCode);

  @override
  String toString() => 'TokenBlacklist[refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'refresh'] = this.refresh;
    return json;
  }

  /// Returns a new [TokenBlacklist] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenBlacklist? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenBlacklist[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenBlacklist[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenBlacklist(
        refresh: mapValueOfType<String>(json, r'refresh')!,
      );
    }
    return null;
  }

  static List<TokenBlacklist> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenBlacklist>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenBlacklist.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenBlacklist> mapFromJson(dynamic json) {
    final map = <String, TokenBlacklist>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenBlacklist.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenBlacklist-objects as value to a dart map
  static Map<String, List<TokenBlacklist>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenBlacklist>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenBlacklist.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refresh',
  };
}

