//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ListDatabaseTableRowNames200Response {
  /// Returns a new [ListDatabaseTableRowNames200Response] instance.
  ListDatabaseTableRowNames200Response({
    this.leftCurlyBracketTableIdRightCurlyBracketStar,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ListDatabaseTableRowNames200ResponseTableId? leftCurlyBracketTableIdRightCurlyBracketStar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListDatabaseTableRowNames200Response &&
    other.leftCurlyBracketTableIdRightCurlyBracketStar == leftCurlyBracketTableIdRightCurlyBracketStar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leftCurlyBracketTableIdRightCurlyBracketStar == null ? 0 : leftCurlyBracketTableIdRightCurlyBracketStar!.hashCode);

  @override
  String toString() => 'ListDatabaseTableRowNames200Response[leftCurlyBracketTableIdRightCurlyBracketStar=$leftCurlyBracketTableIdRightCurlyBracketStar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leftCurlyBracketTableIdRightCurlyBracketStar != null) {
      json[r'{table_id}*'] = this.leftCurlyBracketTableIdRightCurlyBracketStar;
    } else {
      json[r'{table_id}*'] = null;
    }
    return json;
  }

  /// Returns a new [ListDatabaseTableRowNames200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDatabaseTableRowNames200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListDatabaseTableRowNames200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListDatabaseTableRowNames200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListDatabaseTableRowNames200Response(
        leftCurlyBracketTableIdRightCurlyBracketStar: ListDatabaseTableRowNames200ResponseTableId.fromJson(json[r'{table_id}*']),
      );
    }
    return null;
  }

  static List<ListDatabaseTableRowNames200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListDatabaseTableRowNames200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListDatabaseTableRowNames200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListDatabaseTableRowNames200Response> mapFromJson(dynamic json) {
    final map = <String, ListDatabaseTableRowNames200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListDatabaseTableRowNames200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListDatabaseTableRowNames200Response-objects as value to a dart map
  static Map<String, List<ListDatabaseTableRowNames200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListDatabaseTableRowNames200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListDatabaseTableRowNames200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

