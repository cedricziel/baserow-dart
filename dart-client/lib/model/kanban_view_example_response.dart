//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class KanbanViewExampleResponse {
  /// Returns a new [KanbanViewExampleResponse] instance.
  KanbanViewExampleResponse({
    this.rows = const {},
    this.fieldOptions = const [],
    this.rowMetadata = const {},
  });

  /// Every select option related to the view's single select field can have its own entry like this.
  Map<String, KanbanViewExampleResponseStack> rows;

  List<KanbanViewFieldOptions> fieldOptions;

  /// An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so.
  Map<String, RowMetadata> rowMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KanbanViewExampleResponse &&
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
  String toString() => 'KanbanViewExampleResponse[rows=$rows, fieldOptions=$fieldOptions, rowMetadata=$rowMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rows'] = this.rows;
      json[r'field_options'] = this.fieldOptions;
      json[r'row_metadata'] = this.rowMetadata;
    return json;
  }

  /// Returns a new [KanbanViewExampleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KanbanViewExampleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KanbanViewExampleResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KanbanViewExampleResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KanbanViewExampleResponse(
        rows: KanbanViewExampleResponseStack.mapFromJson(json[r'rows']),
        fieldOptions: KanbanViewFieldOptions.listFromJson(json[r'field_options']),
        rowMetadata: RowMetadata.mapFromJson(json[r'row_metadata']),
      );
    }
    return null;
  }

  static List<KanbanViewExampleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KanbanViewExampleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KanbanViewExampleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KanbanViewExampleResponse> mapFromJson(dynamic json) {
    final map = <String, KanbanViewExampleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KanbanViewExampleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KanbanViewExampleResponse-objects as value to a dart map
  static Map<String, List<KanbanViewExampleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KanbanViewExampleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KanbanViewExampleResponse.listFromJson(entry.value, growable: growable,);
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

