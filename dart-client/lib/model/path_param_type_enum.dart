//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `text` - text * `numeric` - numeric
class PathParamTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PathParamTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const text = PathParamTypeEnum._(r'text');
  static const numeric = PathParamTypeEnum._(r'numeric');

  /// List of all possible values in this [enum][PathParamTypeEnum].
  static const values = <PathParamTypeEnum>[
    text,
    numeric,
  ];

  static PathParamTypeEnum? fromJson(dynamic value) => PathParamTypeEnumTypeTransformer().decode(value);

  static List<PathParamTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PathParamTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PathParamTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PathParamTypeEnum] to String,
/// and [decode] dynamic data back to [PathParamTypeEnum].
class PathParamTypeEnumTypeTransformer {
  factory PathParamTypeEnumTypeTransformer() => _instance ??= const PathParamTypeEnumTypeTransformer._();

  const PathParamTypeEnumTypeTransformer._();

  String encode(PathParamTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PathParamTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PathParamTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text': return PathParamTypeEnum.text;
        case r'numeric': return PathParamTypeEnum.numeric;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PathParamTypeEnumTypeTransformer] instance.
  static PathParamTypeEnumTypeTransformer? _instance;
}

