//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `all` - all * `mentions` - mentions
class Mode884Enum {
  /// Instantiate a new enum with the provided [value].
  const Mode884Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = Mode884Enum._(r'all');
  static const mentions = Mode884Enum._(r'mentions');

  /// List of all possible values in this [enum][Mode884Enum].
  static const values = <Mode884Enum>[
    all,
    mentions,
  ];

  static Mode884Enum? fromJson(dynamic value) => Mode884EnumTypeTransformer().decode(value);

  static List<Mode884Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Mode884Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mode884Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Mode884Enum] to String,
/// and [decode] dynamic data back to [Mode884Enum].
class Mode884EnumTypeTransformer {
  factory Mode884EnumTypeTransformer() => _instance ??= const Mode884EnumTypeTransformer._();

  const Mode884EnumTypeTransformer._();

  String encode(Mode884Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Mode884Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Mode884Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return Mode884Enum.all;
        case r'mentions': return Mode884Enum.mentions;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Mode884EnumTypeTransformer] instance.
  static Mode884EnumTypeTransformer? _instance;
}

