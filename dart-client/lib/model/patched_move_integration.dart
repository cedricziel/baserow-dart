//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedMoveIntegration {
  /// Returns a new [PatchedMoveIntegration] instance.
  PatchedMoveIntegration({
    this.beforeId,
  });

  /// If provided, the integration is moved before the integration with this Id. Otherwise the integration is placed at the end of the page.
  int? beforeId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedMoveIntegration &&
    other.beforeId == beforeId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beforeId == null ? 0 : beforeId!.hashCode);

  @override
  String toString() => 'PatchedMoveIntegration[beforeId=$beforeId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beforeId != null) {
      json[r'before_id'] = this.beforeId;
    } else {
      json[r'before_id'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedMoveIntegration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedMoveIntegration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedMoveIntegration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedMoveIntegration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedMoveIntegration(
        beforeId: mapValueOfType<int>(json, r'before_id'),
      );
    }
    return null;
  }

  static List<PatchedMoveIntegration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedMoveIntegration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedMoveIntegration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedMoveIntegration> mapFromJson(dynamic json) {
    final map = <String, PatchedMoveIntegration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedMoveIntegration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedMoveIntegration-objects as value to a dart map
  static Map<String, List<PatchedMoveIntegration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedMoveIntegration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedMoveIntegration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

