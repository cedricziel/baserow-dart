//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class KanbanViewExampleResponseStack {
  /// Returns a new [KanbanViewExampleResponseStack] instance.
  KanbanViewExampleResponseStack({
    required this.count,
    this.results = const [],
  });

  /// The total count of rows that are included in this group.
  int count;

  /// All the rows that belong in this group related with the provided `limit` and `offset`.
  List<ExampleRowResponse> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KanbanViewExampleResponseStack &&
    other.count == count &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'KanbanViewExampleResponseStack[count=$count, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'count'] = this.count;
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [KanbanViewExampleResponseStack] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KanbanViewExampleResponseStack? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KanbanViewExampleResponseStack[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KanbanViewExampleResponseStack[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KanbanViewExampleResponseStack(
        count: mapValueOfType<int>(json, r'count')!,
        results: ExampleRowResponse.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<KanbanViewExampleResponseStack> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KanbanViewExampleResponseStack>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KanbanViewExampleResponseStack.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KanbanViewExampleResponseStack> mapFromJson(dynamic json) {
    final map = <String, KanbanViewExampleResponseStack>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KanbanViewExampleResponseStack.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KanbanViewExampleResponseStack-objects as value to a dart map
  static Map<String, List<KanbanViewExampleResponseStack>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KanbanViewExampleResponseStack>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KanbanViewExampleResponseStack.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'results',
  };
}

