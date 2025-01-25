//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ListDatabaseTableRowNames200ResponseTableId {
  /// Returns a new [ListDatabaseTableRowNames200ResponseTableId] instance.
  ListDatabaseTableRowNames200ResponseTableId({
    this.leftCurlyBracketRowIdRightCurlyBracketStar,
  });

  /// the name of the row with id `row_id` from table with id `table_id`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? leftCurlyBracketRowIdRightCurlyBracketStar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListDatabaseTableRowNames200ResponseTableId &&
    other.leftCurlyBracketRowIdRightCurlyBracketStar == leftCurlyBracketRowIdRightCurlyBracketStar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (leftCurlyBracketRowIdRightCurlyBracketStar == null ? 0 : leftCurlyBracketRowIdRightCurlyBracketStar!.hashCode);

  @override
  String toString() => 'ListDatabaseTableRowNames200ResponseTableId[leftCurlyBracketRowIdRightCurlyBracketStar=$leftCurlyBracketRowIdRightCurlyBracketStar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.leftCurlyBracketRowIdRightCurlyBracketStar != null) {
      json[r'{row_id}*'] = this.leftCurlyBracketRowIdRightCurlyBracketStar;
    } else {
      json[r'{row_id}*'] = null;
    }
    return json;
  }

  /// Returns a new [ListDatabaseTableRowNames200ResponseTableId] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListDatabaseTableRowNames200ResponseTableId? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListDatabaseTableRowNames200ResponseTableId[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListDatabaseTableRowNames200ResponseTableId[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListDatabaseTableRowNames200ResponseTableId(
        leftCurlyBracketRowIdRightCurlyBracketStar: mapValueOfType<String>(json, r'{row_id}*'),
      );
    }
    return null;
  }

  static List<ListDatabaseTableRowNames200ResponseTableId> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListDatabaseTableRowNames200ResponseTableId>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListDatabaseTableRowNames200ResponseTableId.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListDatabaseTableRowNames200ResponseTableId> mapFromJson(dynamic json) {
    final map = <String, ListDatabaseTableRowNames200ResponseTableId>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListDatabaseTableRowNames200ResponseTableId.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListDatabaseTableRowNames200ResponseTableId-objects as value to a dart map
  static Map<String, List<ListDatabaseTableRowNames200ResponseTableId>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListDatabaseTableRowNames200ResponseTableId>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListDatabaseTableRowNames200ResponseTableId.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

