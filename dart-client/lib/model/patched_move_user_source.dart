//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedMoveUserSource {
  /// Returns a new [PatchedMoveUserSource] instance.
  PatchedMoveUserSource({
    this.beforeId,
  });

  /// If provided, the user_source is moved before the user_source with this Id. Otherwise the user_source is placed at the end of the page.
  int? beforeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedMoveUserSource &&
    other.beforeId == beforeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beforeId == null ? 0 : beforeId!.hashCode);

  @override
  String toString() => 'PatchedMoveUserSource[beforeId=$beforeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedMoveUserSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedMoveUserSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedMoveUserSource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedMoveUserSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedMoveUserSource(
        beforeId: mapValueOfType<int>(json, r'before_id'),
      );
    }
    return null;
  }

  static List<PatchedMoveUserSource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedMoveUserSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedMoveUserSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedMoveUserSource> mapFromJson(dynamic json) {
    final map = <String, PatchedMoveUserSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedMoveUserSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedMoveUserSource-objects as value to a dart map
  static Map<String, List<PatchedMoveUserSource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedMoveUserSource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedMoveUserSource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

