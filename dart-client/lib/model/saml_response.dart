//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SAMLResponse {
  /// Returns a new [SAMLResponse] instance.
  SAMLResponse({
    required this.sAMLResponse,
    required this.relayState,
  });

  /// The encoded SAML response from the IdP.
  String sAMLResponse;

  /// The frontend URL where redirect the authenticated user.
  String relayState;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SAMLResponse &&
    other.sAMLResponse == sAMLResponse &&
    other.relayState == relayState;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sAMLResponse.hashCode) +
    (relayState.hashCode);

  @override
  String toString() => 'SAMLResponse[sAMLResponse=$sAMLResponse, relayState=$relayState]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'SAMLResponse'] = this.sAMLResponse;
      json[r'RelayState'] = this.relayState;
    return json;
  }

  /// Returns a new [SAMLResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SAMLResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SAMLResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SAMLResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SAMLResponse(
        sAMLResponse: mapValueOfType<String>(json, r'SAMLResponse')!,
        relayState: mapValueOfType<String>(json, r'RelayState')!,
      );
    }
    return null;
  }

  static List<SAMLResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SAMLResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SAMLResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SAMLResponse> mapFromJson(dynamic json) {
    final map = <String, SAMLResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SAMLResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SAMLResponse-objects as value to a dart map
  static Map<String, List<SAMLResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SAMLResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SAMLResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'SAMLResponse',
    'RelayState',
  };
}

