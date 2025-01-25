//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CustomDomainDomain {
  /// Returns a new [CustomDomainDomain] instance.
  CustomDomainDomain({
    required this.id,
    required this.type,
    required this.domainName,
    required this.order,
    required this.builderId,
    this.lastPublished,
  });

  int id;

  /// The type of the domain.
  String type;

  String domainName;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int builderId;

  /// Last publication date of this domain
  DateTime? lastPublished;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomDomainDomain &&
    other.id == id &&
    other.type == type &&
    other.domainName == domainName &&
    other.order == order &&
    other.builderId == builderId &&
    other.lastPublished == lastPublished;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (domainName.hashCode) +
    (order.hashCode) +
    (builderId.hashCode) +
    (lastPublished == null ? 0 : lastPublished!.hashCode);

  @override
  String toString() => 'CustomDomainDomain[id=$id, type=$type, domainName=$domainName, order=$order, builderId=$builderId, lastPublished=$lastPublished]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'domain_name'] = this.domainName;
      json[r'order'] = this.order;
      json[r'builder_id'] = this.builderId;
    if (this.lastPublished != null) {
      json[r'last_published'] = this.lastPublished!.toUtc().toIso8601String();
    } else {
      json[r'last_published'] = null;
    }
    return json;
  }

  /// Returns a new [CustomDomainDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomDomainDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomDomainDomain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomDomainDomain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomDomainDomain(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        domainName: mapValueOfType<String>(json, r'domain_name')!,
        order: mapValueOfType<int>(json, r'order')!,
        builderId: mapValueOfType<int>(json, r'builder_id')!,
        lastPublished: mapDateTime(json, r'last_published', r''),
      );
    }
    return null;
  }

  static List<CustomDomainDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomDomainDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomDomainDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomDomainDomain> mapFromJson(dynamic json) {
    final map = <String, CustomDomainDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomDomainDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomDomainDomain-objects as value to a dart map
  static Map<String, List<CustomDomainDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomDomainDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomDomainDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'domain_name',
    'order',
    'builder_id',
  };
}

