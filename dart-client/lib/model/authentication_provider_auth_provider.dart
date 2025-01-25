//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AuthenticationProviderAuthProvider {
  /// Returns a new [AuthenticationProviderAuthProvider] instance.
  AuthenticationProviderAuthProvider({
    required this.id,
    required this.type,
    required this.domain,
    this.enabled,
    required this.metadata,
    required this.isVerified,
    this.emailAttrKey,
    this.firstNameAttrKey,
    this.lastNameAttrKey,
    required this.name,
    required this.clientId,
    required this.secret,
    required this.baseUrl,
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

  /// The SAML metadata XML provided by the IdP.
  String metadata;

  /// Whether or not a user sign in correctly with this SAML provider.
  bool isVerified;

  /// The key in the SAML response that contains the email address of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAttrKey;

  /// The key in the SAML response that contains the first name of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstNameAttrKey;

  /// The key in the SAML response that contains the last name of the user. If this is not set, the first name attr will be used as full name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastNameAttrKey;

  String name;

  /// App ID, or consumer key
  String clientId;

  /// API secret, client secret, or consumer secret
  String secret;

  /// Base URL of the authorization server
  String baseUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthenticationProviderAuthProvider &&
    other.id == id &&
    other.type == type &&
    other.domain == domain &&
    other.enabled == enabled &&
    other.metadata == metadata &&
    other.isVerified == isVerified &&
    other.emailAttrKey == emailAttrKey &&
    other.firstNameAttrKey == firstNameAttrKey &&
    other.lastNameAttrKey == lastNameAttrKey &&
    other.name == name &&
    other.clientId == clientId &&
    other.secret == secret &&
    other.baseUrl == baseUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (domain.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (metadata.hashCode) +
    (isVerified.hashCode) +
    (emailAttrKey == null ? 0 : emailAttrKey!.hashCode) +
    (firstNameAttrKey == null ? 0 : firstNameAttrKey!.hashCode) +
    (lastNameAttrKey == null ? 0 : lastNameAttrKey!.hashCode) +
    (name.hashCode) +
    (clientId.hashCode) +
    (secret.hashCode) +
    (baseUrl.hashCode);

  @override
  String toString() => 'AuthenticationProviderAuthProvider[id=$id, type=$type, domain=$domain, enabled=$enabled, metadata=$metadata, isVerified=$isVerified, emailAttrKey=$emailAttrKey, firstNameAttrKey=$firstNameAttrKey, lastNameAttrKey=$lastNameAttrKey, name=$name, clientId=$clientId, secret=$secret, baseUrl=$baseUrl]';

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
      json[r'metadata'] = this.metadata;
      json[r'is_verified'] = this.isVerified;
    if (this.emailAttrKey != null) {
      json[r'email_attr_key'] = this.emailAttrKey;
    } else {
      json[r'email_attr_key'] = null;
    }
    if (this.firstNameAttrKey != null) {
      json[r'first_name_attr_key'] = this.firstNameAttrKey;
    } else {
      json[r'first_name_attr_key'] = null;
    }
    if (this.lastNameAttrKey != null) {
      json[r'last_name_attr_key'] = this.lastNameAttrKey;
    } else {
      json[r'last_name_attr_key'] = null;
    }
      json[r'name'] = this.name;
      json[r'client_id'] = this.clientId;
      json[r'secret'] = this.secret;
      json[r'base_url'] = this.baseUrl;
    return json;
  }

  /// Returns a new [AuthenticationProviderAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthenticationProviderAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthenticationProviderAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthenticationProviderAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthenticationProviderAuthProvider(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        enabled: mapValueOfType<bool>(json, r'enabled'),
        metadata: mapValueOfType<String>(json, r'metadata')!,
        isVerified: mapValueOfType<bool>(json, r'is_verified')!,
        emailAttrKey: mapValueOfType<String>(json, r'email_attr_key'),
        firstNameAttrKey: mapValueOfType<String>(json, r'first_name_attr_key'),
        lastNameAttrKey: mapValueOfType<String>(json, r'last_name_attr_key'),
        name: mapValueOfType<String>(json, r'name')!,
        clientId: mapValueOfType<String>(json, r'client_id')!,
        secret: mapValueOfType<String>(json, r'secret')!,
        baseUrl: mapValueOfType<String>(json, r'base_url')!,
      );
    }
    return null;
  }

  static List<AuthenticationProviderAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthenticationProviderAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthenticationProviderAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthenticationProviderAuthProvider> mapFromJson(dynamic json) {
    final map = <String, AuthenticationProviderAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthenticationProviderAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthenticationProviderAuthProvider-objects as value to a dart map
  static Map<String, List<AuthenticationProviderAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthenticationProviderAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthenticationProviderAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'domain',
    'metadata',
    'is_verified',
    'name',
    'client_id',
    'secret',
    'base_url',
  };
}

