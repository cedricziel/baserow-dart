//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedMoveElement {
  /// Returns a new [PatchedMoveElement] instance.
  PatchedMoveElement({
    this.beforeId,
    this.parentElementId,
    this.placeInContainer,
  });

  /// If provided, the element is moved before the element with this Id. Otherwise the element is placed at the end of the page.
  int? beforeId;

  /// If provided, the element is moved as a child of the element with the given id.
  int? parentElementId;

  /// The place in the container.
  String? placeInContainer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedMoveElement &&
    other.beforeId == beforeId &&
    other.parentElementId == parentElementId &&
    other.placeInContainer == placeInContainer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beforeId == null ? 0 : beforeId!.hashCode) +
    (parentElementId == null ? 0 : parentElementId!.hashCode) +
    (placeInContainer == null ? 0 : placeInContainer!.hashCode);

  @override
  String toString() => 'PatchedMoveElement[beforeId=$beforeId, parentElementId=$parentElementId, placeInContainer=$placeInContainer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
    }
    if (this.parentElementId != null) {
      json[r'parent_element_id'] = this.parentElementId;
    } else {
      json[r'parent_element_id'] = null;
    }
    if (this.placeInContainer != null) {
      json[r'place_in_container'] = this.placeInContainer;
    } else {
      json[r'place_in_container'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedMoveElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedMoveElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedMoveElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedMoveElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedMoveElement(
        beforeId: mapValueOfType<int>(json, r'before_id'),
        parentElementId: mapValueOfType<int>(json, r'parent_element_id'),
        placeInContainer: mapValueOfType<String>(json, r'place_in_container'),
      );
    }
    return null;
  }

  static List<PatchedMoveElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedMoveElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedMoveElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedMoveElement> mapFromJson(dynamic json) {
    final map = <String, PatchedMoveElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedMoveElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedMoveElement-objects as value to a dart map
  static Map<String, List<PatchedMoveElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedMoveElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedMoveElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

