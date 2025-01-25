//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TableWebhookTestCallResponse {
  /// Returns a new [TableWebhookTestCallResponse] instance.
  TableWebhookTestCallResponse({
    required this.request,
    required this.response,
    required this.statusCode,
    required this.isUnreachable,
  });

  /// A text copy of the request headers and body.
  String request;

  /// A text copy of the response headers and body.
  String response;

  /// The HTTP response status code.
  int statusCode;

  /// Indicates whether the provided URL could be reached.
  bool isUnreachable;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableWebhookTestCallResponse &&
    other.request == request &&
    other.response == response &&
    other.statusCode == statusCode &&
    other.isUnreachable == isUnreachable;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (request.hashCode) +
    (response.hashCode) +
    (statusCode.hashCode) +
    (isUnreachable.hashCode);

  @override
  String toString() => 'TableWebhookTestCallResponse[request=$request, response=$response, statusCode=$statusCode, isUnreachable=$isUnreachable]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'request'] = this.request;
      json[r'response'] = this.response;
      json[r'status_code'] = this.statusCode;
      json[r'is_unreachable'] = this.isUnreachable;
    return json;
  }

  /// Returns a new [TableWebhookTestCallResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableWebhookTestCallResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableWebhookTestCallResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableWebhookTestCallResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableWebhookTestCallResponse(
        request: mapValueOfType<String>(json, r'request')!,
        response: mapValueOfType<String>(json, r'response')!,
        statusCode: mapValueOfType<int>(json, r'status_code')!,
        isUnreachable: mapValueOfType<bool>(json, r'is_unreachable')!,
      );
    }
    return null;
  }

  static List<TableWebhookTestCallResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableWebhookTestCallResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableWebhookTestCallResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableWebhookTestCallResponse> mapFromJson(dynamic json) {
    final map = <String, TableWebhookTestCallResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableWebhookTestCallResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableWebhookTestCallResponse-objects as value to a dart map
  static Map<String, List<TableWebhookTestCallResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableWebhookTestCallResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TableWebhookTestCallResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'request',
    'response',
    'status_code',
    'is_unreachable',
  };
}

