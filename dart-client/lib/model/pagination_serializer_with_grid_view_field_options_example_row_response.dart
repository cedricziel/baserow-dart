//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PaginationSerializerWithGridViewFieldOptionsExampleRowResponse {
  /// Returns a new [PaginationSerializerWithGridViewFieldOptionsExampleRowResponse] instance.
  PaginationSerializerWithGridViewFieldOptionsExampleRowResponse({
    this.fieldOptions = const {},
    this.rowMetadata = const {},
    required this.count,
    required this.next,
    required this.previous,
    this.results = const [],
  });

  /// An object containing the field id as key and the properties related to view as value.
  Map<String, GridViewFieldOptions> fieldOptions;

  /// An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so.
  Map<String, RowMetadata> rowMetadata;

  /// The total amount of results.
  int count;

  /// URL to the next page.
  String? next;

  /// URL to the previous page.
  String? previous;

  List<ExampleRowResponse> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginationSerializerWithGridViewFieldOptionsExampleRowResponse &&
    _deepEquality.equals(other.fieldOptions, fieldOptions) &&
    _deepEquality.equals(other.rowMetadata, rowMetadata) &&
    other.count == count &&
    other.next == next &&
    other.previous == previous &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldOptions.hashCode) +
    (rowMetadata.hashCode) +
    (count.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (previous == null ? 0 : previous!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'PaginationSerializerWithGridViewFieldOptionsExampleRowResponse[fieldOptions=$fieldOptions, rowMetadata=$rowMetadata, count=$count, next=$next, previous=$previous, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_options'] = this.fieldOptions;
      json[r'row_metadata'] = this.rowMetadata;
      json[r'count'] = this.count;
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
    if (this.previous != null) {
      json[r'previous'] = this.previous;
    } else {
      json[r'previous'] = null;
    }
      json[r'results'] = this.results;
    return json;
  }

  /// Returns a new [PaginationSerializerWithGridViewFieldOptionsExampleRowResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginationSerializerWithGridViewFieldOptionsExampleRowResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginationSerializerWithGridViewFieldOptionsExampleRowResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginationSerializerWithGridViewFieldOptionsExampleRowResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginationSerializerWithGridViewFieldOptionsExampleRowResponse(
        fieldOptions: GridViewFieldOptions.mapFromJson(json[r'field_options']),
        rowMetadata: RowMetadata.mapFromJson(json[r'row_metadata']),
        count: mapValueOfType<int>(json, r'count')!,
        next: mapValueOfType<String>(json, r'next'),
        previous: mapValueOfType<String>(json, r'previous'),
        results: ExampleRowResponse.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<PaginationSerializerWithGridViewFieldOptionsExampleRowResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginationSerializerWithGridViewFieldOptionsExampleRowResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginationSerializerWithGridViewFieldOptionsExampleRowResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginationSerializerWithGridViewFieldOptionsExampleRowResponse> mapFromJson(dynamic json) {
    final map = <String, PaginationSerializerWithGridViewFieldOptionsExampleRowResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginationSerializerWithGridViewFieldOptionsExampleRowResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginationSerializerWithGridViewFieldOptionsExampleRowResponse-objects as value to a dart map
  static Map<String, List<PaginationSerializerWithGridViewFieldOptionsExampleRowResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginationSerializerWithGridViewFieldOptionsExampleRowResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginationSerializerWithGridViewFieldOptionsExampleRowResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'next',
    'previous',
    'results',
  };
}

