//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWebhook {
  /// Returns a new [TableWebhook] instance.
  TableWebhook({
    required this.id,
    this.events = const {},
    this.eventConfig = const [],
    this.headers = const {},
    this.calls = const [],
    required this.createdOn,
    required this.updatedOn,
    this.useUserFieldNames,
    required this.url,
    this.requestMethod,
    required this.name,
    this.includeAllEvents,
    this.failedTriggers,
    this.active,
  });

  int id;

  /// A list containing the events that will trigger this webhook.
  Map<String, Object> events;

  /// A list containing the addition event options.
  List<TableWebhookEventConfig> eventConfig;

  /// The additional headers as an object where the key is the name and the value the value.
  Map<String, Object> headers;

  /// All the calls that this webhook made.
  List<TableWebhookCall> calls;

  DateTime createdOn;

  DateTime updatedOn;

  /// Indicates whether the field names must be used as payload key instead of the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useUserFieldNames;

  /// The URL that must be called when the webhook is triggered.
  String url;

  /// The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RequestMethodEnum? requestMethod;

  /// An internal name of the webhook.
  String name;

  /// Indicates whether this webhook should listen to all events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeAllEvents;

  /// The amount of failed webhook calls.
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedTriggers;

  /// Indicates whether the web hook is active. When a webhook has failed multiple times, it will automatically be deactivated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWebhook &&
    other.id == id &&
    _deepEquality.equals(other.events, events) &&
    _deepEquality.equals(other.eventConfig, eventConfig) &&
    _deepEquality.equals(other.headers, headers) &&
    _deepEquality.equals(other.calls, calls) &&
    other.createdOn == createdOn &&
    other.updatedOn == updatedOn &&
    other.useUserFieldNames == useUserFieldNames &&
    other.url == url &&
    other.requestMethod == requestMethod &&
    other.name == name &&
    other.includeAllEvents == includeAllEvents &&
    other.failedTriggers == failedTriggers &&
    other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (events.hashCode) +
    (eventConfig.hashCode) +
    (headers.hashCode) +
    (calls.hashCode) +
    (createdOn.hashCode) +
    (updatedOn.hashCode) +
    (useUserFieldNames == null ? 0 : useUserFieldNames!.hashCode) +
    (url.hashCode) +
    (requestMethod == null ? 0 : requestMethod!.hashCode) +
    (name.hashCode) +
    (includeAllEvents == null ? 0 : includeAllEvents!.hashCode) +
    (failedTriggers == null ? 0 : failedTriggers!.hashCode) +
    (active == null ? 0 : active!.hashCode);

  @override
  String toString() => 'TableWebhook[id=$id, events=$events, eventConfig=$eventConfig, headers=$headers, calls=$calls, createdOn=$createdOn, updatedOn=$updatedOn, useUserFieldNames=$useUserFieldNames, url=$url, requestMethod=$requestMethod, name=$name, includeAllEvents=$includeAllEvents, failedTriggers=$failedTriggers, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'events'] = this.events;
      json[r'event_config'] = this.eventConfig;
      json[r'headers'] = this.headers;
      json[r'calls'] = this.calls;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'updated_on'] = this.updatedOn.toUtc().toIso8601String();
    if (this.useUserFieldNames != null) {
      json[r'use_user_field_names'] = this.useUserFieldNames;
    } else {
      json[r'use_user_field_names'] = null;
    }
      json[r'url'] = this.url;
    if (this.requestMethod != null) {
      json[r'request_method'] = this.requestMethod;
    } else {
      json[r'request_method'] = null;
    }
      json[r'name'] = this.name;
    if (this.includeAllEvents != null) {
      json[r'include_all_events'] = this.includeAllEvents;
    } else {
      json[r'include_all_events'] = null;
    }
    if (this.failedTriggers != null) {
      json[r'failed_triggers'] = this.failedTriggers;
    } else {
      json[r'failed_triggers'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    return json;
  }

  /// Returns a new [TableWebhook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWebhook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWebhook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWebhook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWebhook(
        id: mapValueOfType<int>(json, r'id')!,
        events: mapCastOfType<String, Object>(json, r'events')!,
        eventConfig: TableWebhookEventConfig.listFromJson(json[r'event_config']),
        headers: mapCastOfType<String, Object>(json, r'headers')!,
        calls: TableWebhookCall.listFromJson(json[r'calls']),
        createdOn: mapDateTime(json, r'created_on', r'')!,
        updatedOn: mapDateTime(json, r'updated_on', r'')!,
        useUserFieldNames: mapValueOfType<bool>(json, r'use_user_field_names'),
        url: mapValueOfType<String>(json, r'url')!,
        requestMethod: RequestMethodEnum.fromJson(json[r'request_method']),
        name: mapValueOfType<String>(json, r'name')!,
        includeAllEvents: mapValueOfType<bool>(json, r'include_all_events'),
        failedTriggers: mapValueOfType<int>(json, r'failed_triggers'),
        active: mapValueOfType<bool>(json, r'active'),
      );
    }
    return null;
  }

  static List<TableWebhook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWebhook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWebhook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWebhook> mapFromJson(dynamic json) {
    final map = <String, TableWebhook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWebhook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWebhook-objects as value to a dart map
  static Map<String, List<TableWebhook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWebhook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWebhook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'events',
    'event_config',
    'headers',
    'calls',
    'created_on',
    'updated_on',
    'url',
    'name',
  };
}

