//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RatingFieldUpdateField {
  /// Returns a new [RatingFieldUpdateField] instance.
  RatingFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.maxValue,
    this.color,
    this.style,
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
  bool operator ==(Object other) => identical(this, other) || other is RatingFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.maxValue == maxValue &&
    other.color == color &&
    other.style == style;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (maxValue == null ? 0 : maxValue!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (style == null ? 0 : style!.hashCode);

  @override
  String toString() => 'RatingFieldUpdateField[name=$name, type=$type, description=$description, maxValue=$maxValue, color=$color, style=$style]';

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

  /// Returns a new [RatingFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RatingFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RatingFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RatingFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RatingFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        maxValue: mapValueOfType<int>(json, r'max_value'),
        color: mapValueOfType<String>(json, r'color'),
        style: StyleEnum.fromJson(json[r'style']),
      );
    }
    return null;
  }

  static List<RatingFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RatingFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, RatingFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RatingFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RatingFieldUpdateField-objects as value to a dart map
  static Map<String, List<RatingFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RatingFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RatingFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

