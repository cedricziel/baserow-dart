//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `grid` - grid * `gallery` - gallery * `form` - form * `kanban` - kanban * `calendar` - calendar * `timeline` - timeline
class TypeBc4Enum {
  /// Instantiate a new enum with the provided [value].
  const TypeBc4Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const grid = TypeBc4Enum._(r'grid');
  static const gallery = TypeBc4Enum._(r'gallery');
  static const form = TypeBc4Enum._(r'form');
  static const kanban = TypeBc4Enum._(r'kanban');
  static const calendar = TypeBc4Enum._(r'calendar');
  static const timeline = TypeBc4Enum._(r'timeline');

  /// List of all possible values in this [enum][TypeBc4Enum].
  static const values = <TypeBc4Enum>[
    grid,
    gallery,
    form,
    kanban,
    calendar,
    timeline,
  ];

  static TypeBc4Enum? fromJson(dynamic value) => TypeBc4EnumTypeTransformer().decode(value);

  static List<TypeBc4Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeBc4Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeBc4Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeBc4Enum] to String,
/// and [decode] dynamic data back to [TypeBc4Enum].
class TypeBc4EnumTypeTransformer {
  factory TypeBc4EnumTypeTransformer() => _instance ??= const TypeBc4EnumTypeTransformer._();

  const TypeBc4EnumTypeTransformer._();

  String encode(TypeBc4Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a TypeBc4Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeBc4Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'grid': return TypeBc4Enum.grid;
        case r'gallery': return TypeBc4Enum.gallery;
        case r'form': return TypeBc4Enum.form;
        case r'kanban': return TypeBc4Enum.kanban;
        case r'calendar': return TypeBc4Enum.calendar;
        case r'timeline': return TypeBc4Enum.timeline;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypeBc4EnumTypeTransformer] instance.
  static TypeBc4EnumTypeTransformer? _instance;
}

