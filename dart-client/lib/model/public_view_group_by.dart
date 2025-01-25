//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicViewGroupBy {
  /// Returns a new [PublicViewGroupBy] instance.
  PublicViewGroupBy({
    required this.id,
    required this.view,
    required this.field,
    this.order,
    this.width,
  });

  int id;

  String view;

  /// The field that must be grouped by.
  int field;

  /// Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderEnum? order;

  /// The pixel width of the group by in the related view.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicViewGroupBy &&
    other.id == id &&
    other.view == view &&
    other.field == field &&
    other.order == order &&
    other.width == width;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (view.hashCode) +
    (field.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (width == null ? 0 : width!.hashCode);

  @override
  String toString() => 'PublicViewGroupBy[id=$id, view=$view, field=$field, order=$order, width=$width]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'view'] = this.view;
      json[r'field'] = this.field;
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    return json;
  }

  /// Returns a new [PublicViewGroupBy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicViewGroupBy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicViewGroupBy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicViewGroupBy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicViewGroupBy(
        id: mapValueOfType<int>(json, r'id')!,
        view: mapValueOfType<String>(json, r'view')!,
        field: mapValueOfType<int>(json, r'field')!,
        order: OrderEnum.fromJson(json[r'order']),
        width: mapValueOfType<int>(json, r'width'),
      );
    }
    return null;
  }

  static List<PublicViewGroupBy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicViewGroupBy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicViewGroupBy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicViewGroupBy> mapFromJson(dynamic json) {
    final map = <String, PublicViewGroupBy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicViewGroupBy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicViewGroupBy-objects as value to a dart map
  static Map<String, List<PublicViewGroupBy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicViewGroupBy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicViewGroupBy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'view',
    'field',
  };
}

