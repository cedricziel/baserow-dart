//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedTableWebhookUpdateRequest {
  /// Returns a new [PatchedTableWebhookUpdateRequest] instance.
  PatchedTableWebhookUpdateRequest({
    this.url,
    this.includeAllEvents,
    this.events = const [],
    this.eventConfig = const [],
    this.requestMethod,
    this.headers = const {},
    this.name,
    this.active,
    this.useUserFieldNames,
  });

  /// The URL that must be called when the webhook is triggered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Indicates whether this webhook should listen to all events.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeAllEvents;

  /// A list containing the events that will trigger this webhook.
  List<EventsEnum> events;

  /// A list containing the addition event options.
  List<TableWebhookEventConfig> eventConfig;

  /// The request method that be used when the event occurs.  * `POST` - Post * `GET` - Get * `PUT` - Put * `PATCH` - Patch * `DELETE` - Delete
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RequestMethodEnum? requestMethod;

  /// The additional headers as an object where the key is the name and the value the value.
  Map<String, Object> headers;

  /// An internal name of the webhook.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Indicates whether the web hook is active. When a webhook has failed multiple times, it will automatically be deactivated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  /// Indicates whether the field names must be used as payload key instead of the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useUserFieldNames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedTableWebhookUpdateRequest &&
    other.url == url &&
    other.includeAllEvents == includeAllEvents &&
    _deepEquality.equals(other.events, events) &&
    _deepEquality.equals(other.eventConfig, eventConfig) &&
    other.requestMethod == requestMethod &&
    _deepEquality.equals(other.headers, headers) &&
    other.name == name &&
    other.active == active &&
    other.useUserFieldNames == useUserFieldNames;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url == null ? 0 : url!.hashCode) +
    (includeAllEvents == null ? 0 : includeAllEvents!.hashCode) +
    (events.hashCode) +
    (eventConfig.hashCode) +
    (requestMethod == null ? 0 : requestMethod!.hashCode) +
    (headers.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (useUserFieldNames == null ? 0 : useUserFieldNames!.hashCode);

  @override
  String toString() => 'PatchedTableWebhookUpdateRequest[url=$url, includeAllEvents=$includeAllEvents, events=$events, eventConfig=$eventConfig, requestMethod=$requestMethod, headers=$headers, name=$name, active=$active, useUserFieldNames=$useUserFieldNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.includeAllEvents != null) {
      json[r'include_all_events'] = this.includeAllEvents;
    } else {
      json[r'include_all_events'] = null;
    }
      json[r'events'] = this.events;
      json[r'event_config'] = this.eventConfig;
    if (this.requestMethod != null) {
      json[r'request_method'] = this.requestMethod;
    } else {
      json[r'request_method'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.useUserFieldNames != null) {
      json[r'use_user_field_names'] = this.useUserFieldNames;
    } else {
      json[r'use_user_field_names'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedTableWebhookUpdateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedTableWebhookUpdateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedTableWebhookUpdateRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedTableWebhookUpdateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedTableWebhookUpdateRequest(
        url: mapValueOfType<String>(json, r'url'),
        includeAllEvents: mapValueOfType<bool>(json, r'include_all_events'),
        events: EventsEnum.listFromJson(json[r'events']),
        eventConfig: TableWebhookEventConfig.listFromJson(json[r'event_config']),
        requestMethod: RequestMethodEnum.fromJson(json[r'request_method']),
        headers: mapCastOfType<String, Object>(json, r'headers') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        active: mapValueOfType<bool>(json, r'active'),
        useUserFieldNames: mapValueOfType<bool>(json, r'use_user_field_names'),
      );
    }
    return null;
  }

  static List<PatchedTableWebhookUpdateRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedTableWebhookUpdateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedTableWebhookUpdateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedTableWebhookUpdateRequest> mapFromJson(dynamic json) {
    final map = <String, PatchedTableWebhookUpdateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedTableWebhookUpdateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedTableWebhookUpdateRequest-objects as value to a dart map
  static Map<String, List<PatchedTableWebhookUpdateRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedTableWebhookUpdateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedTableWebhookUpdateRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

