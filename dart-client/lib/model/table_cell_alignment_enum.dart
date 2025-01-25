//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `left` - Left * `center` - Center * `right` - Right
class TableCellAlignmentEnum {
  /// Instantiate a new enum with the provided [value].
  const TableCellAlignmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const left = TableCellAlignmentEnum._(r'left');
  static const center = TableCellAlignmentEnum._(r'center');
  static const right = TableCellAlignmentEnum._(r'right');

  /// List of all possible values in this [enum][TableCellAlignmentEnum].
  static const values = <TableCellAlignmentEnum>[
    left,
    center,
    right,
  ];

  static TableCellAlignmentEnum? fromJson(dynamic value) => TableCellAlignmentEnumTypeTransformer().decode(value);

  static List<TableCellAlignmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableCellAlignmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableCellAlignmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TableCellAlignmentEnum] to String,
/// and [decode] dynamic data back to [TableCellAlignmentEnum].
class TableCellAlignmentEnumTypeTransformer {
  factory TableCellAlignmentEnumTypeTransformer() => _instance ??= const TableCellAlignmentEnumTypeTransformer._();

  const TableCellAlignmentEnumTypeTransformer._();

  String encode(TableCellAlignmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TableCellAlignmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TableCellAlignmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'left': return TableCellAlignmentEnum.left;
        case r'center': return TableCellAlignmentEnum.center;
        case r'right': return TableCellAlignmentEnum.right;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TableCellAlignmentEnumTypeTransformer] instance.
  static TableCellAlignmentEnumTypeTransformer? _instance;
}

