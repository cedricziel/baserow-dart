//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider {
  /// Returns a new [LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider] instance.
  LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider({
    required this.type,
    required this.userSourceId,
    this.domain,
    this.passwordFieldId,
  });

  /// The type of the app_auth_provider.  * `local_baserow_password` - local_baserow_password * `saml` - saml
  Type622Enum type;

  int userSourceId;

  /// The email domain registered with this provider.
  String? domain;

  /// The id of the field to use as password for the user account.
  int? passwordFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider &&
    other.type == type &&
    other.userSourceId == userSourceId &&
    other.domain == domain &&
    other.passwordFieldId == passwordFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (userSourceId.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (passwordFieldId == null ? 0 : passwordFieldId!.hashCode);

  @override
  String toString() => 'LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider[type=$type, userSourceId=$userSourceId, domain=$domain, passwordFieldId=$passwordFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'user_source_id'] = this.userSourceId;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.passwordFieldId != null) {
      json[r'password_field_id'] = this.passwordFieldId;
    } else {
      json[r'password_field_id'] = null;
    }
    return json;
  }

  /// Returns a new [LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider(
        type: Type622Enum.fromJson(json[r'type'])!,
        userSourceId: mapValueOfType<int>(json, r'user_source_id')!,
        domain: mapValueOfType<String>(json, r'domain'),
        passwordFieldId: mapValueOfType<int>(json, r'password_field_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider-objects as value to a dart map
  static Map<String, List<LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'user_source_id',
  };
}

