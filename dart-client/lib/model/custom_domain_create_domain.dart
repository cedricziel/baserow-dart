//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CustomDomainCreateDomain {
  /// Returns a new [CustomDomainCreateDomain] instance.
  CustomDomainCreateDomain({
    required this.type,
    required this.domainName,
  });

  /// The type of the domain.  * `custom` - custom * `sub_domain` - sub_domain
  Type509Enum type;

  String domainName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomDomainCreateDomain &&
    other.type == type &&
    other.domainName == domainName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (domainName.hashCode);

  @override
  String toString() => 'CustomDomainCreateDomain[type=$type, domainName=$domainName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'domain_name'] = this.domainName;
    return json;
  }

  /// Returns a new [CustomDomainCreateDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomDomainCreateDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomDomainCreateDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomDomainCreateDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomDomainCreateDomain(
        type: Type509Enum.fromJson(json[r'type'])!,
        domainName: mapValueOfType<String>(json, r'domain_name')!,
      );
    }
    return null;
  }

  static List<CustomDomainCreateDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomDomainCreateDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomDomainCreateDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomDomainCreateDomain> mapFromJson(dynamic json) {
    final map = <String, CustomDomainCreateDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomDomainCreateDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomDomainCreateDomain-objects as value to a dart map
  static Map<String, List<CustomDomainCreateDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomDomainCreateDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomDomainCreateDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'domain_name',
  };
}

