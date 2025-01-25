//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class NumberFieldUpdateField {
  /// Returns a new [NumberFieldUpdateField] instance.
  NumberFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.numberDecimalPlaces,
    this.numberNegative,
    this.numberPrefix,
    this.numberSuffix,
    this.numberSeparator,
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

  /// The amount of digits allowed after the point.  * `0` - 1 * `1` - 1.0 * `2` - 1.00 * `3` - 1.000 * `4` - 1.0000 * `5` - 1.00000 * `6` - 1.000000 * `7` - 1.0000000 * `8` - 1.00000000 * `9` - 1.000000000 * `10` - 1.0000000000
  ///
  /// Minimum value: -2.147483648E9
  /// Maximum value: 2.147483647E9
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NumberDecimalPlacesEnum? numberDecimalPlaces;

  /// Indicates if negative values are allowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? numberNegative;

  /// The prefix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberPrefix;

  /// The suffix to use for the field.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numberSuffix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CountFieldCreateFieldNumberSeparator? numberSeparator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NumberFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.numberDecimalPlaces == numberDecimalPlaces &&
    other.numberNegative == numberNegative &&
    other.numberPrefix == numberPrefix &&
    other.numberSuffix == numberSuffix &&
    other.numberSeparator == numberSeparator;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (numberDecimalPlaces == null ? 0 : numberDecimalPlaces!.hashCode) +
    (numberNegative == null ? 0 : numberNegative!.hashCode) +
    (numberPrefix == null ? 0 : numberPrefix!.hashCode) +
    (numberSuffix == null ? 0 : numberSuffix!.hashCode) +
    (numberSeparator == null ? 0 : numberSeparator!.hashCode);

  @override
  String toString() => 'NumberFieldUpdateField[name=$name, type=$type, description=$description, numberDecimalPlaces=$numberDecimalPlaces, numberNegative=$numberNegative, numberPrefix=$numberPrefix, numberSuffix=$numberSuffix, numberSeparator=$numberSeparator]';

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
    if (this.numberDecimalPlaces != null) {
      json[r'number_decimal_places'] = this.numberDecimalPlaces;
    } else {
      json[r'number_decimal_places'] = null;
    }
    if (this.numberNegative != null) {
      json[r'number_negative'] = this.numberNegative;
    } else {
      json[r'number_negative'] = null;
    }
    if (this.numberPrefix != null) {
      json[r'number_prefix'] = this.numberPrefix;
    } else {
      json[r'number_prefix'] = null;
    }
    if (this.numberSuffix != null) {
      json[r'number_suffix'] = this.numberSuffix;
    } else {
      json[r'number_suffix'] = null;
    }
    if (this.numberSeparator != null) {
      json[r'number_separator'] = this.numberSeparator;
    } else {
      json[r'number_separator'] = null;
    }
    return json;
  }

  /// Returns a new [NumberFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NumberFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NumberFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NumberFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NumberFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        numberDecimalPlaces: NumberDecimalPlacesEnum.fromJson(json[r'number_decimal_places']),
        numberNegative: mapValueOfType<bool>(json, r'number_negative'),
        numberPrefix: mapValueOfType<String>(json, r'number_prefix'),
        numberSuffix: mapValueOfType<String>(json, r'number_suffix'),
        numberSeparator: CountFieldCreateFieldNumberSeparator.fromJson(json[r'number_separator']),
      );
    }
    return null;
  }

  static List<NumberFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NumberFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumberFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NumberFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, NumberFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NumberFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NumberFieldUpdateField-objects as value to a dart map
  static Map<String, List<NumberFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NumberFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NumberFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

