//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUpdateViewSort {
  /// Returns a new [PatchedUpdateViewSort] instance.
  PatchedUpdateViewSort({
    this.field,
    this.order,
  });

  /// The field that must be sorted on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? field;

  /// Indicates the sort order direction. ASC (Ascending) is from A to Z and DESC (Descending) is from Z to A.  * `ASC` - Ascending * `DESC` - Descending
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrderEnum? order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUpdateViewSort &&
    other.field == field &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field == null ? 0 : field!.hashCode) +
    (order == null ? 0 : order!.hashCode);

  @override
  String toString() => 'PatchedUpdateViewSort[field=$field, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUpdateViewSort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUpdateViewSort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUpdateViewSort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUpdateViewSort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUpdateViewSort(
        field: mapValueOfType<int>(json, r'field'),
        order: OrderEnum.fromJson(json[r'order']),
      );
    }
    return null;
  }

  static List<PatchedUpdateViewSort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUpdateViewSort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUpdateViewSort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUpdateViewSort> mapFromJson(dynamic json) {
    final map = <String, PatchedUpdateViewSort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUpdateViewSort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUpdateViewSort-objects as value to a dart map
  static Map<String, List<PatchedUpdateViewSort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUpdateViewSort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUpdateViewSort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

