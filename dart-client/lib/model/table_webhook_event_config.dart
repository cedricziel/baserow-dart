//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWebhookEventConfig {
  /// Returns a new [TableWebhookEventConfig] instance.
  TableWebhookEventConfig({
    required this.eventType,
    this.fields = const [],
  });

  /// The type of the event.  * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted
  EventTypeEnum eventType;

  /// A list of field IDs that are related to the event.
  List<int> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWebhookEventConfig &&
    other.eventType == eventType &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (eventType.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'TableWebhookEventConfig[eventType=$eventType, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'event_type'] = this.eventType;
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [TableWebhookEventConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWebhookEventConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWebhookEventConfig[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWebhookEventConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWebhookEventConfig(
        eventType: EventTypeEnum.fromJson(json[r'event_type'])!,
        fields: json[r'fields'] is Iterable
            ? (json[r'fields'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TableWebhookEventConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWebhookEventConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWebhookEventConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWebhookEventConfig> mapFromJson(dynamic json) {
    final map = <String, TableWebhookEventConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWebhookEventConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWebhookEventConfig-objects as value to a dart map
  static Map<String, List<TableWebhookEventConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWebhookEventConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWebhookEventConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'event_type',
    'fields',
  };
}

