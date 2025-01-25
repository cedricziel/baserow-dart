//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class DurationFieldUpdateField {
  /// Returns a new [DurationFieldUpdateField] instance.
  DurationFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.durationFormat,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type6ebEnum? type;

  /// Field description
  String? description;

  /// The format of the duration.  * `h:mm` - hours:minutes * `h:mm:ss` - hours:minutes:seconds * `h:mm:ss.s` - hours:minutes:seconds:deciseconds * `h:mm:ss.ss` - hours:minutes:seconds:centiseconds * `h:mm:ss.sss` - hours:minutes:seconds:milliseconds * `d h` - days:hours * `d h:mm` - days:hours:minutes * `d h:mm:ss` - days:hours:minutes:seconds * `d h mm` - days:hours:minutes:with_spaces * `d h mm ss` - days:hours:minutes:seconds:with_spaces
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationFormatEnum? durationFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DurationFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.durationFormat == durationFormat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (durationFormat == null ? 0 : durationFormat!.hashCode);

  @override
  String toString() => 'DurationFieldUpdateField[name=$name, type=$type, description=$description, durationFormat=$durationFormat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.durationFormat != null) {
      json[r'duration_format'] = this.durationFormat;
    } else {
      json[r'duration_format'] = null;
    }
    return json;
  }

  /// Returns a new [DurationFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DurationFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DurationFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DurationFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DurationFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        durationFormat: DurationFormatEnum.fromJson(json[r'duration_format']),
      );
    }
    return null;
  }

  static List<DurationFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DurationFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DurationFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DurationFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, DurationFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DurationFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DurationFieldUpdateField-objects as value to a dart map
  static Map<String, List<DurationFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DurationFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DurationFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

