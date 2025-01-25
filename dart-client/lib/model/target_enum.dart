//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `self` - Self * `blank` - Blank
class TargetEnum {
  /// Instantiate a new enum with the provided [value].
  const TargetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const self = TargetEnum._(r'self');
  static const blank = TargetEnum._(r'blank');

  /// List of all possible values in this [enum][TargetEnum].
  static const values = <TargetEnum>[
    self,
    blank,
  ];

  static TargetEnum? fromJson(dynamic value) => TargetEnumTypeTransformer().decode(value);

  static List<TargetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TargetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TargetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TargetEnum] to String,
/// and [decode] dynamic data back to [TargetEnum].
class TargetEnumTypeTransformer {
  factory TargetEnumTypeTransformer() => _instance ??= const TargetEnumTypeTransformer._();

  const TargetEnumTypeTransformer._();

  String encode(TargetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TargetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TargetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'self': return TargetEnum.self;
        case r'blank': return TargetEnum.blank;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TargetEnumTypeTransformer] instance.
  static TargetEnumTypeTransformer? _instance;
}

