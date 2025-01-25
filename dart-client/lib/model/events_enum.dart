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
class EventsEnum {
  /// Instantiate a new enum with the provided [value].
  const EventsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rowsPeriodCreated = EventsEnum._(r'rows.created');
  static const rowsPeriodUpdated = EventsEnum._(r'rows.updated');
  static const rowsPeriodDeleted = EventsEnum._(r'rows.deleted');
  static const fieldPeriodCreated = EventsEnum._(r'field.created');
  static const fieldPeriodUpdated = EventsEnum._(r'field.updated');
  static const fieldPeriodDeleted = EventsEnum._(r'field.deleted');
  static const viewPeriodCreated = EventsEnum._(r'view.created');
  static const viewPeriodUpdated = EventsEnum._(r'view.updated');
  static const viewPeriodDeleted = EventsEnum._(r'view.deleted');

  /// List of all possible values in this [enum][EventsEnum].
  static const values = <EventsEnum>[
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

  static EventsEnum? fromJson(dynamic value) => EventsEnumTypeTransformer().decode(value);

  static List<EventsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventsEnum] to String,
/// and [decode] dynamic data back to [EventsEnum].
class EventsEnumTypeTransformer {
  factory EventsEnumTypeTransformer() => _instance ??= const EventsEnumTypeTransformer._();

  const EventsEnumTypeTransformer._();

  String encode(EventsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'rows.created': return EventsEnum.rowsPeriodCreated;
        case r'rows.updated': return EventsEnum.rowsPeriodUpdated;
        case r'rows.deleted': return EventsEnum.rowsPeriodDeleted;
        case r'field.created': return EventsEnum.fieldPeriodCreated;
        case r'field.updated': return EventsEnum.fieldPeriodUpdated;
        case r'field.deleted': return EventsEnum.fieldPeriodDeleted;
        case r'view.created': return EventsEnum.viewPeriodCreated;
        case r'view.updated': return EventsEnum.viewPeriodUpdated;
        case r'view.deleted': return EventsEnum.viewPeriodDeleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventsEnumTypeTransformer] instance.
  static EventsEnumTypeTransformer? _instance;
}

