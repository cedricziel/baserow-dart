//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class OpenIdConnectAuthProviderModelAuthProvider {
  /// Returns a new [OpenIdConnectAuthProviderModelAuthProvider] instance.
  OpenIdConnectAuthProviderModelAuthProvider({
    required this.id,
    required this.type,
    required this.domain,
    this.enabled,
    required this.name,
    required this.baseUrl,
    required this.clientId,
    required this.secret,
  });

  int id;

  /// The type of the related field.
  String type;

  /// The email domain registered with this provider.
  String domain;

  /// Whether the provider is enabled or not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  String name;

  /// Base URL of the authorization server
  String baseUrl;

  /// App ID, or consumer key
  String clientId;

  /// API secret, client secret, or consumer secret
  String secret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenIdConnectAuthProviderModelAuthProvider &&
    other.id == id &&
    other.type == type &&
    other.domain == domain &&
    other.enabled == enabled &&
    other.name == name &&
    other.baseUrl == baseUrl &&
    other.clientId == clientId &&
    other.secret == secret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (domain.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (name.hashCode) +
    (baseUrl.hashCode) +
    (clientId.hashCode) +
    (secret.hashCode);

  @override
  String toString() => 'OpenIdConnectAuthProviderModelAuthProvider[id=$id, type=$type, domain=$domain, enabled=$enabled, name=$name, baseUrl=$baseUrl, clientId=$clientId, secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'domain'] = this.domain;
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'name'] = this.name;
      json[r'base_url'] = this.baseUrl;
      json[r'client_id'] = this.clientId;
      json[r'secret'] = this.secret;
    return json;
  }

  /// Returns a new [OpenIdConnectAuthProviderModelAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenIdConnectAuthProviderModelAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenIdConnectAuthProviderModelAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenIdConnectAuthProviderModelAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenIdConnectAuthProviderModelAuthProvider(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        enabled: mapValueOfType<bool>(json, r'enabled'),
        name: mapValueOfType<String>(json, r'name')!,
        baseUrl: mapValueOfType<String>(json, r'base_url')!,
        clientId: mapValueOfType<String>(json, r'client_id')!,
        secret: mapValueOfType<String>(json, r'secret')!,
      );
    }
    return null;
  }

  static List<OpenIdConnectAuthProviderModelAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenIdConnectAuthProviderModelAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenIdConnectAuthProviderModelAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenIdConnectAuthProviderModelAuthProvider> mapFromJson(dynamic json) {
    final map = <String, OpenIdConnectAuthProviderModelAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenIdConnectAuthProviderModelAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenIdConnectAuthProviderModelAuthProvider-objects as value to a dart map
  static Map<String, List<OpenIdConnectAuthProviderModelAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenIdConnectAuthProviderModelAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenIdConnectAuthProviderModelAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'domain',
    'name',
    'base_url',
    'client_id',
    'secret',
  };
}

