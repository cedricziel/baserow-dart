//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TypeFormulaRequest {
  /// Returns a new [TypeFormulaRequest] instance.
  TypeFormulaRequest({
    required this.formula,
    required this.name,
  });

  String formula;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypeFormulaRequest &&
    other.formula == formula &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formula.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'TypeFormulaRequest[formula=$formula, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'formula'] = this.formula;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [TypeFormulaRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypeFormulaRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TypeFormulaRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TypeFormulaRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TypeFormulaRequest(
        formula: mapValueOfType<String>(json, r'formula')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<TypeFormulaRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeFormulaRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeFormulaRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypeFormulaRequest> mapFromJson(dynamic json) {
    final map = <String, TypeFormulaRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypeFormulaRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypeFormulaRequest-objects as value to a dart map
  static Map<String, List<TypeFormulaRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TypeFormulaRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypeFormulaRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'formula',
    'name',
  };
}

