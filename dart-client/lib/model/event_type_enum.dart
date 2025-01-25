//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted
class EventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rowsPeriodCreated = EventTypeEnum._(r'rows.created');
  static const rowsPeriodUpdated = EventTypeEnum._(r'rows.updated');
  static const rowsPeriodDeleted = EventTypeEnum._(r'rows.deleted');
  static const fieldPeriodCreated = EventTypeEnum._(r'field.created');
  static const fieldPeriodUpdated = EventTypeEnum._(r'field.updated');
  static const fieldPeriodDeleted = EventTypeEnum._(r'field.deleted');
  static const viewPeriodCreated = EventTypeEnum._(r'view.created');
  static const viewPeriodUpdated = EventTypeEnum._(r'view.updated');
  static const viewPeriodDeleted = EventTypeEnum._(r'view.deleted');

  /// List of all possible values in this [enum][EventTypeEnum].
  static const values = <EventTypeEnum>[
    rowsPeriodCreated,
    rowsPeriodUpdated,
    rowsPeriodDeleted,
    fieldPeriodCreated,
    fieldPeriodUpdated,
    fieldPeriodDeleted,
    viewPeriodCreated,
    viewPeriodUpdated,
    viewPeriodDeleted,
  ];

  static EventTypeEnum? fromJson(dynamic value) => EventTypeEnumTypeTransformer().decode(value);

  static List<EventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventTypeEnum] to String,
/// and [decode] dynamic data back to [EventTypeEnum].
class EventTypeEnumTypeTransformer {
  factory EventTypeEnumTypeTransformer() => _instance ??= const EventTypeEnumTypeTransformer._();

  const EventTypeEnumTypeTransformer._();

  String encode(EventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'rows.created': return EventTypeEnum.rowsPeriodCreated;
        case r'rows.updated': return EventTypeEnum.rowsPeriodUpdated;
        case r'rows.deleted': return EventTypeEnum.rowsPeriodDeleted;
        case r'field.created': return EventTypeEnum.fieldPeriodCreated;
        case r'field.updated': return EventTypeEnum.fieldPeriodUpdated;
        case r'field.deleted': return EventTypeEnum.fieldPeriodDeleted;
        case r'view.created': return EventTypeEnum.viewPeriodCreated;
        case r'view.updated': return EventTypeEnum.viewPeriodUpdated;
        case r'view.deleted': return EventTypeEnum.viewPeriodDeleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventTypeEnumTypeTransformer] instance.
  static EventTypeEnumTypeTransformer? _instance;
}

