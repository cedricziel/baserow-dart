//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CreatePage {
  /// Returns a new [CreatePage] instance.
  CreatePage({
    required this.name,
    required this.path,
    this.pathParams = const [],
  });

  String name;

  String path;

  List<PathParam> pathParams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePage &&
    other.name == name &&
    other.path == path &&
    _deepEquality.equals(other.pathParams, pathParams);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (path.hashCode) +
    (pathParams.hashCode);

  @override
  String toString() => 'CreatePage[name=$name, path=$path, pathParams=$pathParams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'path'] = this.path;
      json[r'path_params'] = this.pathParams;
    return json;
  }

  /// Returns a new [CreatePage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePage(
        name: mapValueOfType<String>(json, r'name')!,
        path: mapValueOfType<String>(json, r'path')!,
        pathParams: PathParam.listFromJson(json[r'path_params']),
      );
    }
    return null;
  }

  static List<CreatePage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePage> mapFromJson(dynamic json) {
    final map = <String, CreatePage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePage-objects as value to a dart map
  static Map<String, List<CreatePage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'path',
  };
}

