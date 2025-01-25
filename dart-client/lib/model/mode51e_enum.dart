//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `form` - form * `survey` - survey
class Mode51eEnum {
  /// Instantiate a new enum with the provided [value].
  const Mode51eEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const form = Mode51eEnum._(r'form');
  static const survey = Mode51eEnum._(r'survey');

  /// List of all possible values in this [enum][Mode51eEnum].
  static const values = <Mode51eEnum>[
    form,
    survey,
  ];

  static Mode51eEnum? fromJson(dynamic value) => Mode51eEnumTypeTransformer().decode(value);

  static List<Mode51eEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Mode51eEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mode51eEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Mode51eEnum] to String,
/// and [decode] dynamic data back to [Mode51eEnum].
class Mode51eEnumTypeTransformer {
  factory Mode51eEnumTypeTransformer() => _instance ??= const Mode51eEnumTypeTransformer._();

  const Mode51eEnumTypeTransformer._();

  String encode(Mode51eEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Mode51eEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Mode51eEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'form': return Mode51eEnum.form;
        case r'survey': return Mode51eEnum.survey;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Mode51eEnumTypeTransformer] instance.
  static Mode51eEnumTypeTransformer? _instance;
}

