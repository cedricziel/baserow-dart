//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `small` - Small * `medium` - Medium * `large` - Large
class RowHeightSizeEnum {
  /// Instantiate a new enum with the provided [value].
  const RowHeightSizeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const small = RowHeightSizeEnum._(r'small');
  static const medium = RowHeightSizeEnum._(r'medium');
  static const large = RowHeightSizeEnum._(r'large');

  /// List of all possible values in this [enum][RowHeightSizeEnum].
  static const values = <RowHeightSizeEnum>[
    small,
    medium,
    large,
  ];

  static RowHeightSizeEnum? fromJson(dynamic value) => RowHeightSizeEnumTypeTransformer().decode(value);

  static List<RowHeightSizeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowHeightSizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowHeightSizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RowHeightSizeEnum] to String,
/// and [decode] dynamic data back to [RowHeightSizeEnum].
class RowHeightSizeEnumTypeTransformer {
  factory RowHeightSizeEnumTypeTransformer() => _instance ??= const RowHeightSizeEnumTypeTransformer._();

  const RowHeightSizeEnumTypeTransformer._();

  String encode(RowHeightSizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RowHeightSizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RowHeightSizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'small': return RowHeightSizeEnum.small;
        case r'medium': return RowHeightSizeEnum.medium;
        case r'large': return RowHeightSizeEnum.large;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RowHeightSizeEnumTypeTransformer] instance.
  static RowHeightSizeEnumTypeTransformer? _instance;
}

