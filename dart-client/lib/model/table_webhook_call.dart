//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWebhookCall {
  /// Returns a new [TableWebhookCall] instance.
  TableWebhookCall({
    required this.id,
    required this.eventId,
    required this.eventType,
    this.calledTime,
    required this.calledUrl,
    required this.request,
    required this.response,
    this.responseStatus,
    this.error,
  });

  int id;

  /// Event ID where the call originated from.
  String eventId;

  String eventType;

  DateTime? calledTime;

  String calledUrl;

  /// A text copy of the request headers and body.
  String request;

  /// A text copy of the response headers and body.
  String response;

  /// The HTTP response status code.
  ///
  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? responseStatus;

  /// An internal error reflecting what went wrong.
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWebhookCall &&
    other.id == id &&
    other.eventId == eventId &&
    other.eventType == eventType &&
    other.calledTime == calledTime &&
    other.calledUrl == calledUrl &&
    other.request == request &&
    other.response == response &&
    other.responseStatus == responseStatus &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (eventId.hashCode) +
    (eventType.hashCode) +
    (calledTime == null ? 0 : calledTime!.hashCode) +
    (calledUrl.hashCode) +
    (request.hashCode) +
    (response.hashCode) +
    (responseStatus == null ? 0 : responseStatus!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'TableWebhookCall[id=$id, eventId=$eventId, eventType=$eventType, calledTime=$calledTime, calledUrl=$calledUrl, request=$request, response=$response, responseStatus=$responseStatus, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'event_id'] = this.eventId;
      json[r'event_type'] = this.eventType;
    if (this.calledTime != null) {
      json[r'called_time'] = this.calledTime!.toUtc().toIso8601String();
    } else {
      json[r'called_time'] = null;
    }
      json[r'called_url'] = this.calledUrl;
      json[r'request'] = this.request;
      json[r'response'] = this.response;
    if (this.responseStatus != null) {
      json[r'response_status'] = this.responseStatus;
    } else {
      json[r'response_status'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [TableWebhookCall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWebhookCall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWebhookCall[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWebhookCall[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWebhookCall(
        id: mapValueOfType<int>(json, r'id')!,
        eventId: mapValueOfType<String>(json, r'event_id')!,
        eventType: mapValueOfType<String>(json, r'event_type')!,
        calledTime: mapDateTime(json, r'called_time', r''),
        calledUrl: mapValueOfType<String>(json, r'called_url')!,
        request: mapValueOfType<String>(json, r'request')!,
        response: mapValueOfType<String>(json, r'response')!,
        responseStatus: mapValueOfType<int>(json, r'response_status'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<TableWebhookCall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWebhookCall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWebhookCall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWebhookCall> mapFromJson(dynamic json) {
    final map = <String, TableWebhookCall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWebhookCall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWebhookCall-objects as value to a dart map
  static Map<String, List<TableWebhookCall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWebhookCall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWebhookCall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'event_id',
    'event_type',
    'called_url',
    'request',
    'response',
  };
}

