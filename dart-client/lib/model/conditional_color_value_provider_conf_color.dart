//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ConditionalColorValueProviderConfColor {
  /// Returns a new [ConditionalColorValueProviderConfColor] instance.
  ConditionalColorValueProviderConfColor({
    required this.id,
    required this.color,
    this.filters = const [],
    this.filterGroups = const [],
    this.operator_ = ConditionTypeEnum.AND,
  });

  /// A unique identifier for this condition.
  String id;

  /// The color the decorator should take if the defined conditions apply.
  String color;

  /// A list of conditions that the row must meet to get the selected color. This list of conditions can be empty, in that case, this color will always match the row values.
  List<ConditionalColorValueProviderConfColorFilter> filters;

  /// A list of filter groups that the row must meet to get the selected color. 
  List<ConditionalColorValueProviderConfColorFilterGroup> filterGroups;

  /// The boolean operator used to group all conditions.  * `AND` - And * `OR` - Or
  ConditionTypeEnum operator_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionalColorValueProviderConfColor &&
    other.id == id &&
    other.color == color &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.filterGroups, filterGroups) &&
    other.operator_ == operator_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (color.hashCode) +
    (filters.hashCode) +
    (filterGroups.hashCode) +
    (operator_.hashCode);

  @override
  String toString() => 'ConditionalColorValueProviderConfColor[id=$id, color=$color, filters=$filters, filterGroups=$filterGroups, operator_=$operator_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'color'] = this.color;
      json[r'filters'] = this.filters;
      json[r'filter_groups'] = this.filterGroups;
      json[r'operator'] = this.operator_;
    return json;
  }

  /// Returns a new [ConditionalColorValueProviderConfColor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionalColorValueProviderConfColor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionalColorValueProviderConfColor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionalColorValueProviderConfColor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionalColorValueProviderConfColor(
        id: mapValueOfType<String>(json, r'id')!,
        color: mapValueOfType<String>(json, r'color')!,
        filters: ConditionalColorValueProviderConfColorFilter.listFromJson(json[r'filters']),
        filterGroups: ConditionalColorValueProviderConfColorFilterGroup.listFromJson(json[r'filter_groups']),
        operator_: ConditionTypeEnum.fromJson(json[r'operator']) ?? ConditionTypeEnum.AND,
      );
    }
    return null;
  }

  static List<ConditionalColorValueProviderConfColor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionalColorValueProviderConfColor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionalColorValueProviderConfColor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionalColorValueProviderConfColor> mapFromJson(dynamic json) {
    final map = <String, ConditionalColorValueProviderConfColor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionalColorValueProviderConfColor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionalColorValueProviderConfColor-objects as value to a dart map
  static Map<String, List<ConditionalColorValueProviderConfColor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionalColorValueProviderConfColor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionalColorValueProviderConfColor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'color',
    'filters',
  };
}

