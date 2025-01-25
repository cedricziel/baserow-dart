//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class SamlAppAuthProviderModelBaseAppAuthProvider {
  /// Returns a new [SamlAppAuthProviderModelBaseAppAuthProvider] instance.
  SamlAppAuthProviderModelBaseAppAuthProvider({
    required this.type,
    required this.userSourceId,
    this.domain,
    required this.metadata,
    required this.isVerified,
    this.emailAttrKey,
    this.firstNameAttrKey,
    this.lastNameAttrKey,
  });

  /// The type of the app_auth_provider.  * `local_baserow_password` - local_baserow_password * `saml` - saml
  Type622Enum type;

  int userSourceId;

  /// The email domain registered with this provider.
  String? domain;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is SamlAppAuthProviderModelBaseAppAuthProvider &&
    other.type == type &&
    other.userSourceId == userSourceId &&
    other.domain == domain &&
    other.metadata == metadata &&
    other.isVerified == isVerified &&
    other.emailAttrKey == emailAttrKey &&
    other.firstNameAttrKey == firstNameAttrKey &&
    other.lastNameAttrKey == lastNameAttrKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (userSourceId.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (metadata.hashCode) +
    (isVerified.hashCode) +
    (emailAttrKey == null ? 0 : emailAttrKey!.hashCode) +
    (firstNameAttrKey == null ? 0 : firstNameAttrKey!.hashCode) +
    (lastNameAttrKey == null ? 0 : lastNameAttrKey!.hashCode);

  @override
  String toString() => 'SamlAppAuthProviderModelBaseAppAuthProvider[type=$type, userSourceId=$userSourceId, domain=$domain, metadata=$metadata, isVerified=$isVerified, emailAttrKey=$emailAttrKey, firstNameAttrKey=$firstNameAttrKey, lastNameAttrKey=$lastNameAttrKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'user_source_id'] = this.userSourceId;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
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
    return json;
  }

  /// Returns a new [SamlAppAuthProviderModelBaseAppAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SamlAppAuthProviderModelBaseAppAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SamlAppAuthProviderModelBaseAppAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SamlAppAuthProviderModelBaseAppAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SamlAppAuthProviderModelBaseAppAuthProvider(
        type: Type622Enum.fromJson(json[r'type'])!,
        userSourceId: mapValueOfType<int>(json, r'user_source_id')!,
        domain: mapValueOfType<String>(json, r'domain'),
        metadata: mapValueOfType<String>(json, r'metadata')!,
        isVerified: mapValueOfType<bool>(json, r'is_verified')!,
        emailAttrKey: mapValueOfType<String>(json, r'email_attr_key'),
        firstNameAttrKey: mapValueOfType<String>(json, r'first_name_attr_key'),
        lastNameAttrKey: mapValueOfType<String>(json, r'last_name_attr_key'),
      );
    }
    return null;
  }

  static List<SamlAppAuthProviderModelBaseAppAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SamlAppAuthProviderModelBaseAppAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SamlAppAuthProviderModelBaseAppAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SamlAppAuthProviderModelBaseAppAuthProvider> mapFromJson(dynamic json) {
    final map = <String, SamlAppAuthProviderModelBaseAppAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SamlAppAuthProviderModelBaseAppAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SamlAppAuthProviderModelBaseAppAuthProvider-objects as value to a dart map
  static Map<String, List<SamlAppAuthProviderModelBaseAppAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SamlAppAuthProviderModelBaseAppAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SamlAppAuthProviderModelBaseAppAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'user_source_id',
    'metadata',
    'is_verified',
  };
}

