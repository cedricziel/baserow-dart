//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `top` - Top * `center` - Center * `bottom` - Bottom
class AlignmentEnum {
  /// Instantiate a new enum with the provided [value].
  const AlignmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const top = AlignmentEnum._(r'top');
  static const center = AlignmentEnum._(r'center');
  static const bottom = AlignmentEnum._(r'bottom');

  /// List of all possible values in this [enum][AlignmentEnum].
  static const values = <AlignmentEnum>[
    top,
    center,
    bottom,
  ];

  static AlignmentEnum? fromJson(dynamic value) => AlignmentEnumTypeTransformer().decode(value);

  static List<AlignmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlignmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlignmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlignmentEnum] to String,
/// and [decode] dynamic data back to [AlignmentEnum].
class AlignmentEnumTypeTransformer {
  factory AlignmentEnumTypeTransformer() => _instance ??= const AlignmentEnumTypeTransformer._();

  const AlignmentEnumTypeTransformer._();

  String encode(AlignmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlignmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlignmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'top': return AlignmentEnum.top;
        case r'center': return AlignmentEnum.center;
        case r'bottom': return AlignmentEnum.bottom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlignmentEnumTypeTransformer] instance.
  static AlignmentEnumTypeTransformer? _instance;
}

