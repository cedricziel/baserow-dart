//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `all` - All * `logged-in` - Logged In
class VisibilityC5fEnum {
  /// Instantiate a new enum with the provided [value].
  const VisibilityC5fEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = VisibilityC5fEnum._(r'all');
  static const loggedIn = VisibilityC5fEnum._(r'logged-in');

  /// List of all possible values in this [enum][VisibilityC5fEnum].
  static const values = <VisibilityC5fEnum>[
    all,
    loggedIn,
  ];

  static VisibilityC5fEnum? fromJson(dynamic value) => VisibilityC5fEnumTypeTransformer().decode(value);

  static List<VisibilityC5fEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VisibilityC5fEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VisibilityC5fEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VisibilityC5fEnum] to String,
/// and [decode] dynamic data back to [VisibilityC5fEnum].
class VisibilityC5fEnumTypeTransformer {
  factory VisibilityC5fEnumTypeTransformer() => _instance ??= const VisibilityC5fEnumTypeTransformer._();

  const VisibilityC5fEnumTypeTransformer._();

  String encode(VisibilityC5fEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VisibilityC5fEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VisibilityC5fEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return VisibilityC5fEnum.all;
        case r'logged-in': return VisibilityC5fEnum.loggedIn;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VisibilityC5fEnumTypeTransformer] instance.
  static VisibilityC5fEnumTypeTransformer? _instance;
}

