//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `workspace` - workspace * `application` - application * `table` - table * `field` - field * `row` - row * `rows` - rows * `view` - view * `builder_domain` - builder_domain * `row_comment` - row_comment * `team` - team
class TrashItemTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TrashItemTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const workspace = TrashItemTypeEnum._(r'workspace');
  static const application = TrashItemTypeEnum._(r'application');
  static const table = TrashItemTypeEnum._(r'table');
  static const field = TrashItemTypeEnum._(r'field');
  static const row = TrashItemTypeEnum._(r'row');
  static const rows = TrashItemTypeEnum._(r'rows');
  static const view = TrashItemTypeEnum._(r'view');
  static const builderDomain = TrashItemTypeEnum._(r'builder_domain');
  static const rowComment = TrashItemTypeEnum._(r'row_comment');
  static const team = TrashItemTypeEnum._(r'team');

  /// List of all possible values in this [enum][TrashItemTypeEnum].
  static const values = <TrashItemTypeEnum>[
    workspace,
    application,
    table,
    field,
    row,
    rows,
    view,
    builderDomain,
    rowComment,
    team,
  ];

  static TrashItemTypeEnum? fromJson(dynamic value) => TrashItemTypeEnumTypeTransformer().decode(value);

  static List<TrashItemTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrashItemTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrashItemTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TrashItemTypeEnum] to String,
/// and [decode] dynamic data back to [TrashItemTypeEnum].
class TrashItemTypeEnumTypeTransformer {
  factory TrashItemTypeEnumTypeTransformer() => _instance ??= const TrashItemTypeEnumTypeTransformer._();

  const TrashItemTypeEnumTypeTransformer._();

  String encode(TrashItemTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TrashItemTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TrashItemTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'workspace': return TrashItemTypeEnum.workspace;
        case r'application': return TrashItemTypeEnum.application;
        case r'table': return TrashItemTypeEnum.table;
        case r'field': return TrashItemTypeEnum.field;
        case r'row': return TrashItemTypeEnum.row;
        case r'rows': return TrashItemTypeEnum.rows;
        case r'view': return TrashItemTypeEnum.view;
        case r'builder_domain': return TrashItemTypeEnum.builderDomain;
        case r'row_comment': return TrashItemTypeEnum.rowComment;
        case r'team': return TrashItemTypeEnum.team;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TrashItemTypeEnumTypeTransformer] instance.
  static TrashItemTypeEnumTypeTransformer? _instance;
}

