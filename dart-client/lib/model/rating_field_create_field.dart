//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RatingFieldCreateField {
  /// Returns a new [RatingFieldCreateField] instance.
  RatingFieldCreateField({
    required this.name,
    required this.type,
    this.description,
    this.maxValue,
    this.color,
    this.style,
  });

  String name;

  Type6ebEnum type;

  /// Field description
  String? description;

  /// Maximum value the rating can take.
  ///
  /// Minimum value: 1
  /// Maximum value: 10
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxValue;

  /// Color of the symbols.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  /// Rating style. Allowed values: star, heart, thumbs-up, flag, smile.  * `star` - Star * `heart` - Heart * `thumbs-up` - Thumbs-up * `flag` - Flags * `smile` - Smile
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StyleEnum? style;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RatingFieldCreateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.maxValue == maxValue &&
    other.color == color &&
    other.style == style;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (style == null ? 0 : style!.hashCode);

  @override
  String toString() => 'RatingFieldCreateField[name=$name, type=$type, description=$description, maxValue=$maxValue, color=$color, style=$style]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.maxValue != null) {
      json[r'max_value'] = this.maxValue;
    } else {
      json[r'max_value'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.style != null) {
      json[r'style'] = this.style;
    } else {
      json[r'style'] = null;
    }
    return json;
  }

  /// Returns a new [RatingFieldCreateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingFieldCreateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RatingFieldCreateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RatingFieldCreateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RatingFieldCreateField(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type6ebEnum.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        maxValue: mapValueOfType<int>(json, r'max_value'),
        color: mapValueOfType<String>(json, r'color'),
        style: StyleEnum.fromJson(json[r'style']),
      );
    }
    return null;
  }

  static List<RatingFieldCreateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingFieldCreateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingFieldCreateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RatingFieldCreateField> mapFromJson(dynamic json) {
    final map = <String, RatingFieldCreateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RatingFieldCreateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RatingFieldCreateField-objects as value to a dart map
  static Map<String, List<RatingFieldCreateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RatingFieldCreateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RatingFieldCreateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
  };
}

