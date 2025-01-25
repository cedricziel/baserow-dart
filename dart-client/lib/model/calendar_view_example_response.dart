//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CalendarViewExampleResponse {
  /// Returns a new [CalendarViewExampleResponse] instance.
  CalendarViewExampleResponse({
    this.rows = const {},
    this.fieldOptions = const [],
    this.rowMetadata = const {},
  });

  /// Every date bucket (e.g. '2023-01-01') related to the view's date field can have its own entry like this.
  Map<String, CalendarViewExampleResponseStack> rows;

  List<CalendarViewFieldOptions> fieldOptions;

  /// An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so.
  Map<String, RowMetadata> rowMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarViewExampleResponse &&
    _deepEquality.equals(other.rows, rows) &&
    _deepEquality.equals(other.fieldOptions, fieldOptions) &&
    _deepEquality.equals(other.rowMetadata, rowMetadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rows.hashCode) +
    (fieldOptions.hashCode) +
    (rowMetadata.hashCode);

  @override
  String toString() => 'CalendarViewExampleResponse[rows=$rows, fieldOptions=$fieldOptions, rowMetadata=$rowMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rows'] = this.rows;
      json[r'field_options'] = this.fieldOptions;
      json[r'row_metadata'] = this.rowMetadata;
    return json;
  }

  /// Returns a new [CalendarViewExampleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarViewExampleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarViewExampleResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarViewExampleResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarViewExampleResponse(
        rows: CalendarViewExampleResponseStack.mapFromJson(json[r'rows']),
        fieldOptions: CalendarViewFieldOptions.listFromJson(json[r'field_options']),
        rowMetadata: RowMetadata.mapFromJson(json[r'row_metadata']),
      );
    }
    return null;
  }

  static List<CalendarViewExampleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarViewExampleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarViewExampleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarViewExampleResponse> mapFromJson(dynamic json) {
    final map = <String, CalendarViewExampleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarViewExampleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarViewExampleResponse-objects as value to a dart map
  static Map<String, List<CalendarViewExampleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarViewExampleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarViewExampleResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rows',
    'field_options',
  };
}

