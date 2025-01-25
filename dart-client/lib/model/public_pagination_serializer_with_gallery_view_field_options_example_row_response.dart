//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse {
  /// Returns a new [PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse] instance.
  PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse({
    this.fieldOptions = const {},
    required this.count,
    required this.next,
    required this.previous,
    this.results = const [],
  });

  /// An object containing the field id as key and the properties related to view as value.
  Map<String, GalleryViewFieldOptions> fieldOptions;

  /// The total amount of results.
  int count;

  /// URL to the next page.
  String? next;

  /// URL to the previous page.
  String? previous;

  List<ExampleRowResponse> results;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse &&
    _deepEquality.equals(other.fieldOptions, fieldOptions) &&
    other.count == count &&
    other.next == next &&
    other.previous == previous &&
    _deepEquality.equals(other.results, results);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldOptions.hashCode) +
    (count.hashCode) +
    (next == null ? 0 : next!.hashCode) +
    (previous == null ? 0 : previous!.hashCode) +
    (results.hashCode);

  @override
  String toString() => 'PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse[fieldOptions=$fieldOptions, count=$count, next=$next, previous=$previous, results=$results]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_options'] = this.fieldOptions;
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

  /// Returns a new [PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse(
        fieldOptions: GalleryViewFieldOptions.mapFromJson(json[r'field_options']),
        count: mapValueOfType<int>(json, r'count')!,
        next: mapValueOfType<String>(json, r'next'),
        previous: mapValueOfType<String>(json, r'previous'),
        results: ExampleRowResponse.listFromJson(json[r'results']),
      );
    }
    return null;
  }

  static List<PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse> mapFromJson(dynamic json) {
    final map = <String, PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse-objects as value to a dart map
  static Map<String, List<PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse.listFromJson(entry.value, growable: growable,);
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

