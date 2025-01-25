//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWebhookTestCallRequest {
  /// Returns a new [TableWebhookTestCallRequest] instance.
  TableWebhookTestCallRequest({
    required this.url,
    required this.eventType,
    this.requestMethod,
    this.headers = const {},
    this.useUserFieldNames,
  });

  /// The URL that must be called when the webhook is triggered.
  String url;

  /// The event type that must be used for the test call.  * `rows.created` - rows.created * `rows.updated` - rows.updated * `rows.deleted` - rows.deleted * `field.created` - field.created * `field.updated` - field.updated * `field.deleted` - field.deleted * `view.created` - view.created * `view.updated` - view.updated * `view.deleted` - view.deleted
  EventTypeEnum eventType;

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

  /// Indicates whether the field names must be used as payload key instead of the id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useUserFieldNames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWebhookTestCallRequest &&
    other.url == url &&
    other.eventType == eventType &&
    other.requestMethod == requestMethod &&
    _deepEquality.equals(other.headers, headers) &&
    other.useUserFieldNames == useUserFieldNames;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (eventType.hashCode) +
    (requestMethod == null ? 0 : requestMethod!.hashCode) +
    (headers.hashCode) +
    (useUserFieldNames == null ? 0 : useUserFieldNames!.hashCode);

  @override
  String toString() => 'TableWebhookTestCallRequest[url=$url, eventType=$eventType, requestMethod=$requestMethod, headers=$headers, useUserFieldNames=$useUserFieldNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
      json[r'event_type'] = this.eventType;
    if (this.requestMethod != null) {
      json[r'request_method'] = this.requestMethod;
    } else {
      json[r'request_method'] = null;
    }
      json[r'headers'] = this.headers;
    if (this.useUserFieldNames != null) {
      json[r'use_user_field_names'] = this.useUserFieldNames;
    } else {
      json[r'use_user_field_names'] = null;
    }
    return json;
  }

  /// Returns a new [TableWebhookTestCallRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWebhookTestCallRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWebhookTestCallRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWebhookTestCallRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWebhookTestCallRequest(
        url: mapValueOfType<String>(json, r'url')!,
        eventType: EventTypeEnum.fromJson(json[r'event_type'])!,
        requestMethod: RequestMethodEnum.fromJson(json[r'request_method']),
        headers: mapCastOfType<String, Object>(json, r'headers') ?? const {},
        useUserFieldNames: mapValueOfType<bool>(json, r'use_user_field_names'),
      );
    }
    return null;
  }

  static List<TableWebhookTestCallRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWebhookTestCallRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWebhookTestCallRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWebhookTestCallRequest> mapFromJson(dynamic json) {
    final map = <String, TableWebhookTestCallRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWebhookTestCallRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWebhookTestCallRequest-objects as value to a dart map
  static Map<String, List<TableWebhookTestCallRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWebhookTestCallRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWebhookTestCallRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'event_type',
  };
}

