//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ConditionalColorValueProviderConfColorFilterGroup {
  /// Returns a new [ConditionalColorValueProviderConfColorFilterGroup] instance.
  ConditionalColorValueProviderConfColorFilterGroup({
    required this.id,
    this.filterType = ConditionTypeEnum.AND,
    this.parentGroup,
  });

  /// A unique identifier for this condition.
  String id;

  /// The boolean operator used to group all conditions.  * `AND` - And * `OR` - Or
  ConditionTypeEnum filterType;

  /// The id of the parent filter group.
  String? parentGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionalColorValueProviderConfColorFilterGroup &&
    other.id == id &&
    other.filterType == filterType &&
    other.parentGroup == parentGroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (filterType.hashCode) +
    (parentGroup == null ? 0 : parentGroup!.hashCode);

  @override
  String toString() => 'ConditionalColorValueProviderConfColorFilterGroup[id=$id, filterType=$filterType, parentGroup=$parentGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'filter_type'] = this.filterType;
    if (this.parentGroup != null) {
      json[r'parent_group'] = this.parentGroup;
    } else {
      json[r'parent_group'] = null;
    }
    return json;
  }

  /// Returns a new [ConditionalColorValueProviderConfColorFilterGroup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionalColorValueProviderConfColorFilterGroup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionalColorValueProviderConfColorFilterGroup[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionalColorValueProviderConfColorFilterGroup[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionalColorValueProviderConfColorFilterGroup(
        id: mapValueOfType<String>(json, r'id')!,
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']) ?? ConditionTypeEnum.AND,
        parentGroup: mapValueOfType<String>(json, r'parent_group'),
      );
    }
    return null;
  }

  static List<ConditionalColorValueProviderConfColorFilterGroup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionalColorValueProviderConfColorFilterGroup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionalColorValueProviderConfColorFilterGroup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionalColorValueProviderConfColorFilterGroup> mapFromJson(dynamic json) {
    final map = <String, ConditionalColorValueProviderConfColorFilterGroup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionalColorValueProviderConfColorFilterGroup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionalColorValueProviderConfColorFilterGroup-objects as value to a dart map
  static Map<String, List<ConditionalColorValueProviderConfColorFilterGroup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionalColorValueProviderConfColorFilterGroup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionalColorValueProviderConfColorFilterGroup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

