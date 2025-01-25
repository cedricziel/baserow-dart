//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ExampleRowResponseSerializerWithUserFieldNames {
  /// Returns a new [ExampleRowResponseSerializerWithUserFieldNames] instance.
  ExampleRowResponseSerializerWithUserFieldNames({
    required this.id,
    this.order,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    this.field6 = 0,
    this.field7 = false,
    this.field8,
    this.field9,
    this.field10,
    this.field11,
    this.field12,
    this.field13,
    this.field14 = const [],
    this.field15 = const [],
    this.field16,
    this.field17 = const [],
    this.field18,
    this.field19,
    this.field20,
    this.field21,
    this.field22,
    this.field23 = const [],
    this.field24,
    this.field25,
    this.field26,
    this.field27,
  });

  /// The unique identifier of the row in the table.
  int id;

  /// Indicates the position of the row, lowest first and highest last.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? order;

  /// This field represents the `text` field. The number in field_1 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field1;

  /// This field represents the `long_text` field. The number in field_2 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field2;

  /// This field represents the `url` field. The number in field_3 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field3;

  /// This field represents the `email` field. The number in field_4 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field4;

  /// This field represents the `number` field. The number in field_5 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  double? field5;

  /// This field represents the `rating` field. The number in field_6 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  ///
  /// Minimum value: 0
  /// Maximum value: 5
  int field6;

  /// This field represents the `boolean` field. The number in field_7 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  bool field7;

  /// This field represents the `date` field. The number in field_8 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  DateTime? field8;

  /// This field represents the `last_modified` field. The number in field_9 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? field9;

  /// This field represents the `last_modified_by` field. The number in field_10 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Collaborator? field10;

  /// This field represents the `created_on` field. The number in field_11 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? field11;

  /// This field represents the `created_by` field. The number in field_12 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Collaborator? field12;

  /// This field represents the `duration` field. The number in field_13 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. The provided value can be a string in one of the available formats or a number representing the duration in seconds. In any case, the value will be rounded to match the field's duration format.
  double? field13;

  /// This field represents the `link_row` field. The number in field_14 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. This field accepts an `array` containing the ids or the names of the related rows. A name is the value of the primary key of the related row. This field also accepts a string with names separated by a comma or an array of row names. You can also provide a unique row Id.The response contains a list of objects containing the `id` and the primary field's `value` as a string for display purposes.
  List<LinkRowValue> field14;

  /// This field represents the `file` field. The number in field_15 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. This field accepts an `array` containing objects with the name of the file. The response contains an `array` of more detailed objects related to the files.
  List<FileFieldResponse> field15;

  /// This field represents the `single_select` field. The number in field_16 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. This field accepts an `integer` representing the chosen select option id related to the field. Available ids can be found when getting or listing the field. The response represents chosen field, but also the value and color is exposed.
  SelectOption? field16;

  /// This field represents the `multiple_select` field. The number in field_17 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. This field accepts a list of `integer` each of which representing the chosen select option id related to the field. Available ids can be foundwhen getting or listing the field. You can also send a list of option names in which case the option are searched by name. The first one that matches is used. This field also accepts a string with names separated by a comma or an array of file names. The response represents chosen field, but also the value and color is exposed.
  List<SelectOption>? field17;

  /// This field represents the `phone_number` field. The number in field_18 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field18;

  /// This field represents the `formula` field. The number in field_19 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field19;

  /// This field represents the `count` field. The number in field_20 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field20;

  /// This field represents the `rollup` field. The number in field_21 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field21;

  /// This field represents the `lookup` field. The number in field_22 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. 
  String? field22;

  /// This field represents the `multiple_collaborators` field. The number in field_23 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. This field accepts a list of objects representing the chosen collaborators through the object's `id` property. The id is Baserow user id. The response objects also contains the collaborator name directly along with its id.
  List<Collaborator> field23;

  /// This field represents the `uuid` field. The number in field_24 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. Contains a unique and persistent UUID for every row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? field24;

  /// This field represents the `autonumber` field. The number in field_25 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. Contains a unique and persistent incremental integer number for every row.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? field25;

  /// This field represents the `password` field. The number in field_26 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. Allows setting a write only password value. Providing a string will set the password, `null` will unset it, `true` will be ignored. The response will respond with `true` is a password is set, but will never expose the password itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? field26;

  /// This field represents the `ai` field. The number in field_27 is in a normal request or response the id of the field. If the GET parameter user_field_names is provided and its value is one of the following: `y`, `yes`, `true`, `t`, `on`, `1`, or empty, then the key will instead be the actual name of the field. Holds a value that is generated by a generative AI model using a dynamic prompt.
  String? field27;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExampleRowResponseSerializerWithUserFieldNames &&
    other.id == id &&
    other.order == order &&
    other.field1 == field1 &&
    other.field2 == field2 &&
    other.field3 == field3 &&
    other.field4 == field4 &&
    other.field5 == field5 &&
    other.field6 == field6 &&
    other.field7 == field7 &&
    other.field8 == field8 &&
    other.field9 == field9 &&
    other.field10 == field10 &&
    other.field11 == field11 &&
    other.field12 == field12 &&
    other.field13 == field13 &&
    _deepEquality.equals(other.field14, field14) &&
    _deepEquality.equals(other.field15, field15) &&
    other.field16 == field16 &&
    _deepEquality.equals(other.field17, field17) &&
    other.field18 == field18 &&
    other.field19 == field19 &&
    other.field20 == field20 &&
    other.field21 == field21 &&
    other.field22 == field22 &&
    _deepEquality.equals(other.field23, field23) &&
    other.field24 == field24 &&
    other.field25 == field25 &&
    other.field26 == field26 &&
    other.field27 == field27;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (field1 == null ? 0 : field1!.hashCode) +
    (field2 == null ? 0 : field2!.hashCode) +
    (field3 == null ? 0 : field3!.hashCode) +
    (field4 == null ? 0 : field4!.hashCode) +
    (field5 == null ? 0 : field5!.hashCode) +
    (field6.hashCode) +
    (field7.hashCode) +
    (field8 == null ? 0 : field8!.hashCode) +
    (field9 == null ? 0 : field9!.hashCode) +
    (field10 == null ? 0 : field10!.hashCode) +
    (field11 == null ? 0 : field11!.hashCode) +
    (field12 == null ? 0 : field12!.hashCode) +
    (field13 == null ? 0 : field13!.hashCode) +
    (field14.hashCode) +
    (field15.hashCode) +
    (field16 == null ? 0 : field16!.hashCode) +
    (field17 == null ? 0 : field17!.hashCode) +
    (field18 == null ? 0 : field18!.hashCode) +
    (field19 == null ? 0 : field19!.hashCode) +
    (field20 == null ? 0 : field20!.hashCode) +
    (field21 == null ? 0 : field21!.hashCode) +
    (field22 == null ? 0 : field22!.hashCode) +
    (field23.hashCode) +
    (field24 == null ? 0 : field24!.hashCode) +
    (field25 == null ? 0 : field25!.hashCode) +
    (field26 == null ? 0 : field26!.hashCode) +
    (field27 == null ? 0 : field27!.hashCode);

  @override
  String toString() => 'ExampleRowResponseSerializerWithUserFieldNames[id=$id, order=$order, field1=$field1, field2=$field2, field3=$field3, field4=$field4, field5=$field5, field6=$field6, field7=$field7, field8=$field8, field9=$field9, field10=$field10, field11=$field11, field12=$field12, field13=$field13, field14=$field14, field15=$field15, field16=$field16, field17=$field17, field18=$field18, field19=$field19, field20=$field20, field21=$field21, field22=$field22, field23=$field23, field24=$field24, field25=$field25, field26=$field26, field27=$field27]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.field1 != null) {
      json[r'field_1'] = this.field1;
    } else {
      json[r'field_1'] = null;
    }
    if (this.field2 != null) {
      json[r'field_2'] = this.field2;
    } else {
      json[r'field_2'] = null;
    }
    if (this.field3 != null) {
      json[r'field_3'] = this.field3;
    } else {
      json[r'field_3'] = null;
    }
    if (this.field4 != null) {
      json[r'field_4'] = this.field4;
    } else {
      json[r'field_4'] = null;
    }
    if (this.field5 != null) {
      json[r'field_5'] = this.field5;
    } else {
      json[r'field_5'] = null;
    }
      json[r'field_6'] = this.field6;
      json[r'field_7'] = this.field7;
    if (this.field8 != null) {
      json[r'field_8'] = _dateFormatter.format(this.field8!.toUtc());
    } else {
      json[r'field_8'] = null;
    }
    if (this.field9 != null) {
      json[r'field_9'] = this.field9!.toUtc().toIso8601String();
    } else {
      json[r'field_9'] = null;
    }
    if (this.field10 != null) {
      json[r'field_10'] = this.field10;
    } else {
      json[r'field_10'] = null;
    }
    if (this.field11 != null) {
      json[r'field_11'] = this.field11!.toUtc().toIso8601String();
    } else {
      json[r'field_11'] = null;
    }
    if (this.field12 != null) {
      json[r'field_12'] = this.field12;
    } else {
      json[r'field_12'] = null;
    }
    if (this.field13 != null) {
      json[r'field_13'] = this.field13;
    } else {
      json[r'field_13'] = null;
    }
      json[r'field_14'] = this.field14;
      json[r'field_15'] = this.field15;
    if (this.field16 != null) {
      json[r'field_16'] = this.field16;
    } else {
      json[r'field_16'] = null;
    }
    if (this.field17 != null) {
      json[r'field_17'] = this.field17;
    } else {
      json[r'field_17'] = null;
    }
    if (this.field18 != null) {
      json[r'field_18'] = this.field18;
    } else {
      json[r'field_18'] = null;
    }
    if (this.field19 != null) {
      json[r'field_19'] = this.field19;
    } else {
      json[r'field_19'] = null;
    }
    if (this.field20 != null) {
      json[r'field_20'] = this.field20;
    } else {
      json[r'field_20'] = null;
    }
    if (this.field21 != null) {
      json[r'field_21'] = this.field21;
    } else {
      json[r'field_21'] = null;
    }
    if (this.field22 != null) {
      json[r'field_22'] = this.field22;
    } else {
      json[r'field_22'] = null;
    }
      json[r'field_23'] = this.field23;
    if (this.field24 != null) {
      json[r'field_24'] = this.field24;
    } else {
      json[r'field_24'] = null;
    }
    if (this.field25 != null) {
      json[r'field_25'] = this.field25;
    } else {
      json[r'field_25'] = null;
    }
    if (this.field26 != null) {
      json[r'field_26'] = this.field26;
    } else {
      json[r'field_26'] = null;
    }
    if (this.field27 != null) {
      json[r'field_27'] = this.field27;
    } else {
      json[r'field_27'] = null;
    }
    return json;
  }

  /// Returns a new [ExampleRowResponseSerializerWithUserFieldNames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExampleRowResponseSerializerWithUserFieldNames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExampleRowResponseSerializerWithUserFieldNames[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExampleRowResponseSerializerWithUserFieldNames[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExampleRowResponseSerializerWithUserFieldNames(
        id: mapValueOfType<int>(json, r'id')!,
        order: mapValueOfType<double>(json, r'order'),
        field1: mapValueOfType<String>(json, r'field_1'),
        field2: mapValueOfType<String>(json, r'field_2'),
        field3: mapValueOfType<String>(json, r'field_3'),
        field4: mapValueOfType<String>(json, r'field_4'),
        field5: mapValueOfType<double>(json, r'field_5'),
        field6: mapValueOfType<int>(json, r'field_6') ?? 0,
        field7: mapValueOfType<bool>(json, r'field_7') ?? false,
        field8: mapDateTime(json, r'field_8', r''),
        field9: mapDateTime(json, r'field_9', r''),
        field10: Collaborator.fromJson(json[r'field_10']),
        field11: mapDateTime(json, r'field_11', r''),
        field12: Collaborator.fromJson(json[r'field_12']),
        field13: mapValueOfType<double>(json, r'field_13'),
        field14: LinkRowValue.listFromJson(json[r'field_14']),
        field15: FileFieldResponse.listFromJson(json[r'field_15']),
        field16: SelectOption.fromJson(json[r'field_16']),
        field17: SelectOption.listFromJson(json[r'field_17']),
        field18: mapValueOfType<String>(json, r'field_18'),
        field19: mapValueOfType<String>(json, r'field_19'),
        field20: mapValueOfType<String>(json, r'field_20'),
        field21: mapValueOfType<String>(json, r'field_21'),
        field22: mapValueOfType<String>(json, r'field_22'),
        field23: Collaborator.listFromJson(json[r'field_23']),
        field24: mapValueOfType<String>(json, r'field_24'),
        field25: mapValueOfType<int>(json, r'field_25'),
        field26: mapValueOfType<bool>(json, r'field_26'),
        field27: mapValueOfType<String>(json, r'field_27'),
      );
    }
    return null;
  }

  static List<ExampleRowResponseSerializerWithUserFieldNames> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExampleRowResponseSerializerWithUserFieldNames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExampleRowResponseSerializerWithUserFieldNames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExampleRowResponseSerializerWithUserFieldNames> mapFromJson(dynamic json) {
    final map = <String, ExampleRowResponseSerializerWithUserFieldNames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExampleRowResponseSerializerWithUserFieldNames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExampleRowResponseSerializerWithUserFieldNames-objects as value to a dart map
  static Map<String, List<ExampleRowResponseSerializerWithUserFieldNames>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExampleRowResponseSerializerWithUserFieldNames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExampleRowResponseSerializerWithUserFieldNames.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

