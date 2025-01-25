//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Sender {
  /// Returns a new [Sender] instance.
  Sender({
    required this.id,
    required this.username,
    this.firstName,
  });

  int id;

  /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
  String username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sender &&
    other.id == id &&
    other.username == username &&
    other.firstName == firstName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (username.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode);

  @override
  String toString() => 'Sender[id=$id, username=$username, firstName=$firstName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'username'] = this.username;
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    return json;
  }

  /// Returns a new [Sender] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sender? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Sender[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Sender[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Sender(
        id: mapValueOfType<int>(json, r'id')!,
        username: mapValueOfType<String>(json, r'username')!,
        firstName: mapValueOfType<String>(json, r'first_name'),
      );
    }
    return null;
  }

  static List<Sender> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sender>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sender.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sender> mapFromJson(dynamic json) {
    final map = <String, Sender>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sender.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sender-objects as value to a dart map
  static Map<String, List<Sender>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sender>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sender.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'username',
  };
}

