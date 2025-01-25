//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Report {
  /// Returns a new [Report] instance.
  Report({
    this.failingRows = const {},
  });

  /// An object containing field in error by rows. The keys are the row indexes from original file and values are objects of errors by fields.
  Map<String, Map<String, List<String>>> failingRows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Report &&
    _deepEquality.equals(other.failingRows, failingRows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (failingRows.hashCode);

  @override
  String toString() => 'Report[failingRows=$failingRows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'failing_rows'] = this.failingRows;
    return json;
  }

  /// Returns a new [Report] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Report? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Report[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Report[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Report(
        failingRows: List.mapFromJson(json[r'failing_rows']),
      );
    }
    return null;
  }

  static List<Report> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Report>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Report.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Report> mapFromJson(dynamic json) {
    final map = <String, Report>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Report.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Report-objects as value to a dart map
  static Map<String, List<Report>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Report>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Report.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'failing_rows',
  };
}

