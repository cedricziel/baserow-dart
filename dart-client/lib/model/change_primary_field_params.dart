//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ChangePrimaryFieldParams {
  /// Returns a new [ChangePrimaryFieldParams] instance.
  ChangePrimaryFieldParams({
    required this.newPrimaryFieldId,
  });

  /// The ID of the new primary field.
  int newPrimaryFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangePrimaryFieldParams &&
    other.newPrimaryFieldId == newPrimaryFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (newPrimaryFieldId.hashCode);

  @override
  String toString() => 'ChangePrimaryFieldParams[newPrimaryFieldId=$newPrimaryFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'new_primary_field_id'] = this.newPrimaryFieldId;
    return json;
  }

  /// Returns a new [ChangePrimaryFieldParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangePrimaryFieldParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangePrimaryFieldParams[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangePrimaryFieldParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangePrimaryFieldParams(
        newPrimaryFieldId: mapValueOfType<int>(json, r'new_primary_field_id')!,
      );
    }
    return null;
  }

  static List<ChangePrimaryFieldParams> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangePrimaryFieldParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangePrimaryFieldParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangePrimaryFieldParams> mapFromJson(dynamic json) {
    final map = <String, ChangePrimaryFieldParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangePrimaryFieldParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangePrimaryFieldParams-objects as value to a dart map
  static Map<String, List<ChangePrimaryFieldParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangePrimaryFieldParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangePrimaryFieldParams.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'new_primary_field_id',
  };
}

