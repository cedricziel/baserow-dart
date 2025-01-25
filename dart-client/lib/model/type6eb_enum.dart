//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `text` - text * `long_text` - long_text * `url` - url * `email` - email * `number` - number * `rating` - rating * `boolean` - boolean * `date` - date * `last_modified` - last_modified * `last_modified_by` - last_modified_by * `created_on` - created_on * `created_by` - created_by * `duration` - duration * `link_row` - link_row * `file` - file * `single_select` - single_select * `multiple_select` - multiple_select * `phone_number` - phone_number * `formula` - formula * `count` - count * `rollup` - rollup * `lookup` - lookup * `multiple_collaborators` - multiple_collaborators * `uuid` - uuid * `autonumber` - autonumber * `password` - password * `ai` - ai
class Type6ebEnum {
  /// Instantiate a new enum with the provided [value].
  const Type6ebEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const text = Type6ebEnum._(r'text');
  static const longText = Type6ebEnum._(r'long_text');
  static const url = Type6ebEnum._(r'url');
  static const email = Type6ebEnum._(r'email');
  static const number = Type6ebEnum._(r'number');
  static const rating = Type6ebEnum._(r'rating');
  static const boolean = Type6ebEnum._(r'boolean');
  static const date = Type6ebEnum._(r'date');
  static const lastModified = Type6ebEnum._(r'last_modified');
  static const lastModifiedBy = Type6ebEnum._(r'last_modified_by');
  static const createdOn = Type6ebEnum._(r'created_on');
  static const createdBy = Type6ebEnum._(r'created_by');
  static const duration = Type6ebEnum._(r'duration');
  static const linkRow = Type6ebEnum._(r'link_row');
  static const file = Type6ebEnum._(r'file');
  static const singleSelect = Type6ebEnum._(r'single_select');
  static const multipleSelect = Type6ebEnum._(r'multiple_select');
  static const phoneNumber = Type6ebEnum._(r'phone_number');
  static const formula = Type6ebEnum._(r'formula');
  static const count = Type6ebEnum._(r'count');
  static const rollup = Type6ebEnum._(r'rollup');
  static const lookup = Type6ebEnum._(r'lookup');
  static const multipleCollaborators = Type6ebEnum._(r'multiple_collaborators');
  static const uuid = Type6ebEnum._(r'uuid');
  static const autonumber = Type6ebEnum._(r'autonumber');
  static const password = Type6ebEnum._(r'password');
  static const ai = Type6ebEnum._(r'ai');

  /// List of all possible values in this [enum][Type6ebEnum].
  static const values = <Type6ebEnum>[
    text,
    longText,
    url,
    email,
    number,
    rating,
    boolean,
    date,
    lastModified,
    lastModifiedBy,
    createdOn,
    createdBy,
    duration,
    linkRow,
    file,
    singleSelect,
    multipleSelect,
    phoneNumber,
    formula,
    count,
    rollup,
    lookup,
    multipleCollaborators,
    uuid,
    autonumber,
    password,
    ai,
  ];

  static Type6ebEnum? fromJson(dynamic value) => Type6ebEnumTypeTransformer().decode(value);

  static List<Type6ebEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type6ebEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type6ebEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type6ebEnum] to String,
/// and [decode] dynamic data back to [Type6ebEnum].
class Type6ebEnumTypeTransformer {
  factory Type6ebEnumTypeTransformer() => _instance ??= const Type6ebEnumTypeTransformer._();

  const Type6ebEnumTypeTransformer._();

  String encode(Type6ebEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type6ebEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type6ebEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text': return Type6ebEnum.text;
        case r'long_text': return Type6ebEnum.longText;
        case r'url': return Type6ebEnum.url;
        case r'email': return Type6ebEnum.email;
        case r'number': return Type6ebEnum.number;
        case r'rating': return Type6ebEnum.rating;
        case r'boolean': return Type6ebEnum.boolean;
        case r'date': return Type6ebEnum.date;
        case r'last_modified': return Type6ebEnum.lastModified;
        case r'last_modified_by': return Type6ebEnum.lastModifiedBy;
        case r'created_on': return Type6ebEnum.createdOn;
        case r'created_by': return Type6ebEnum.createdBy;
        case r'duration': return Type6ebEnum.duration;
        case r'link_row': return Type6ebEnum.linkRow;
        case r'file': return Type6ebEnum.file;
        case r'single_select': return Type6ebEnum.singleSelect;
        case r'multiple_select': return Type6ebEnum.multipleSelect;
        case r'phone_number': return Type6ebEnum.phoneNumber;
        case r'formula': return Type6ebEnum.formula;
        case r'count': return Type6ebEnum.count;
        case r'rollup': return Type6ebEnum.rollup;
        case r'lookup': return Type6ebEnum.lookup;
        case r'multiple_collaborators': return Type6ebEnum.multipleCollaborators;
        case r'uuid': return Type6ebEnum.uuid;
        case r'autonumber': return Type6ebEnum.autonumber;
        case r'password': return Type6ebEnum.password;
        case r'ai': return Type6ebEnum.ai;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type6ebEnumTypeTransformer] instance.
  static Type6ebEnumTypeTransformer? _instance;
}

