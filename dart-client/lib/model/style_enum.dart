//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `star` - Star * `heart` - Heart * `thumbs-up` - Thumbs-up * `flag` - Flags * `smile` - Smile
class StyleEnum {
  /// Instantiate a new enum with the provided [value].
  const StyleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const star = StyleEnum._(r'star');
  static const heart = StyleEnum._(r'heart');
  static const thumbsUp = StyleEnum._(r'thumbs-up');
  static const flag = StyleEnum._(r'flag');
  static const smile = StyleEnum._(r'smile');

  /// List of all possible values in this [enum][StyleEnum].
  static const values = <StyleEnum>[
    star,
    heart,
    thumbsUp,
    flag,
    smile,
  ];

  static StyleEnum? fromJson(dynamic value) => StyleEnumTypeTransformer().decode(value);

  static List<StyleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StyleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StyleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StyleEnum] to String,
/// and [decode] dynamic data back to [StyleEnum].
class StyleEnumTypeTransformer {
  factory StyleEnumTypeTransformer() => _instance ??= const StyleEnumTypeTransformer._();

  const StyleEnumTypeTransformer._();

  String encode(StyleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StyleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StyleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'star': return StyleEnum.star;
        case r'heart': return StyleEnum.heart;
        case r'thumbs-up': return StyleEnum.thumbsUp;
        case r'flag': return StyleEnum.flag;
        case r'smile': return StyleEnum.smile;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StyleEnumTypeTransformer] instance.
  static StyleEnumTypeTransformer? _instance;
}

