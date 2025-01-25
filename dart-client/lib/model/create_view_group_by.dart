//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreateViewGroupBy {
  /// Returns a new [CreateViewGroupBy] instance.
  CreateViewGroupBy({
    required this.field,
    this.order = OrderEnum.ASC,
    this.width = 200,
  });

  /// The field that must be grouped by.
  int field;

  /// Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending
  OrderEnum order;

  /// The pixel width of the group by in the related view.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateViewGroupBy &&
    other.field == field &&
    other.order == order &&
    other.width == width;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field.hashCode) +
    (order.hashCode) +
    (width.hashCode);

  @override
  String toString() => 'CreateViewGroupBy[field=$field, order=$order, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field'] = this.field;
      json[r'order'] = this.order;
      json[r'width'] = this.width;
    return json;
  }

  /// Returns a new [CreateViewGroupBy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateViewGroupBy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateViewGroupBy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateViewGroupBy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateViewGroupBy(
        field: mapValueOfType<int>(json, r'field')!,
        order: OrderEnum.fromJson(json[r'order']) ?? OrderEnum.ASC,
        width: mapValueOfType<int>(json, r'width') ?? 200,
      );
    }
    return null;
  }

  static List<CreateViewGroupBy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateViewGroupBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateViewGroupBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateViewGroupBy> mapFromJson(dynamic json) {
    final map = <String, CreateViewGroupBy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateViewGroupBy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateViewGroupBy-objects as value to a dart map
  static Map<String, List<CreateViewGroupBy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateViewGroupBy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateViewGroupBy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field',
  };
}

