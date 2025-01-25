//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUpdateDomain {
  /// Returns a new [PatchedUpdateDomain] instance.
  PatchedUpdateDomain({
    this.type,
    this.domainName,
  });

  /// The type of the domain.  * `custom` - custom * `sub_domain` - sub_domain
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type509Enum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUpdateDomain &&
    other.type == type &&
    other.domainName == domainName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (domainName == null ? 0 : domainName!.hashCode);

  @override
  String toString() => 'PatchedUpdateDomain[type=$type, domainName=$domainName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.domainName != null) {
      json[r'domain_name'] = this.domainName;
    } else {
      json[r'domain_name'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUpdateDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUpdateDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUpdateDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUpdateDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUpdateDomain(
        type: Type509Enum.fromJson(json[r'type']),
        domainName: mapValueOfType<String>(json, r'domain_name'),
      );
    }
    return null;
  }

  static List<PatchedUpdateDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUpdateDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUpdateDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUpdateDomain> mapFromJson(dynamic json) {
    final map = <String, PatchedUpdateDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUpdateDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUpdateDomain-objects as value to a dart map
  static Map<String, List<PatchedUpdateDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUpdateDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUpdateDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

