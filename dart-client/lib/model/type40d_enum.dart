//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `local_baserow_get_row` - local_baserow_get_row * `local_baserow_list_rows` - local_baserow_list_rows * `local_baserow_aggregate_rows` - local_baserow_aggregate_rows * `local_baserow_upsert_row` - local_baserow_upsert_row * `local_baserow_delete_row` - local_baserow_delete_row
class Type40dEnum {
  /// Instantiate a new enum with the provided [value].
  const Type40dEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const localBaserowGetRow = Type40dEnum._(r'local_baserow_get_row');
  static const localBaserowListRows = Type40dEnum._(r'local_baserow_list_rows');
  static const localBaserowAggregateRows = Type40dEnum._(r'local_baserow_aggregate_rows');
  static const localBaserowUpsertRow = Type40dEnum._(r'local_baserow_upsert_row');
  static const localBaserowDeleteRow = Type40dEnum._(r'local_baserow_delete_row');

  /// List of all possible values in this [enum][Type40dEnum].
  static const values = <Type40dEnum>[
    localBaserowGetRow,
    localBaserowListRows,
    localBaserowAggregateRows,
    localBaserowUpsertRow,
    localBaserowDeleteRow,
  ];

  static Type40dEnum? fromJson(dynamic value) => Type40dEnumTypeTransformer().decode(value);

  static List<Type40dEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type40dEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type40dEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type40dEnum] to String,
/// and [decode] dynamic data back to [Type40dEnum].
class Type40dEnumTypeTransformer {
  factory Type40dEnumTypeTransformer() => _instance ??= const Type40dEnumTypeTransformer._();

  const Type40dEnumTypeTransformer._();

  String encode(Type40dEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type40dEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type40dEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'local_baserow_get_row': return Type40dEnum.localBaserowGetRow;
        case r'local_baserow_list_rows': return Type40dEnum.localBaserowListRows;
        case r'local_baserow_aggregate_rows': return Type40dEnum.localBaserowAggregateRows;
        case r'local_baserow_upsert_row': return Type40dEnum.localBaserowUpsertRow;
        case r'local_baserow_delete_row': return Type40dEnum.localBaserowDeleteRow;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type40dEnumTypeTransformer] instance.
  static Type40dEnumTypeTransformer? _instance;
}

