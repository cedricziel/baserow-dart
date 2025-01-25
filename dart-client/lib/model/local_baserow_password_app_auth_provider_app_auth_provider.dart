//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowPasswordAppAuthProviderAppAuthProvider {
  /// Returns a new [LocalBaserowPasswordAppAuthProviderAppAuthProvider] instance.
  LocalBaserowPasswordAppAuthProviderAppAuthProvider({
    required this.type,
    required this.id,
    this.domain,
    this.passwordFieldId,
  });

  /// The type of the app_auth_provider.
  String type;

  int id;

  /// The email domain registered with this provider.
  String? domain;

  /// The id of the field to use as password for the user account.
  int? passwordFieldId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowPasswordAppAuthProviderAppAuthProvider &&
    other.type == type &&
    other.id == id &&
    other.domain == domain &&
    other.passwordFieldId == passwordFieldId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (passwordFieldId == null ? 0 : passwordFieldId!.hashCode);

  @override
  String toString() => 'LocalBaserowPasswordAppAuthProviderAppAuthProvider[type=$type, id=$id, domain=$domain, passwordFieldId=$passwordFieldId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'id'] = this.id;
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

  /// Returns a new [LocalBaserowPasswordAppAuthProviderAppAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowPasswordAppAuthProviderAppAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowPasswordAppAuthProviderAppAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowPasswordAppAuthProviderAppAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowPasswordAppAuthProviderAppAuthProvider(
        type: mapValueOfType<String>(json, r'type')!,
        id: mapValueOfType<int>(json, r'id')!,
        domain: mapValueOfType<String>(json, r'domain'),
        passwordFieldId: mapValueOfType<int>(json, r'password_field_id'),
      );
    }
    return null;
  }

  static List<LocalBaserowPasswordAppAuthProviderAppAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowPasswordAppAuthProviderAppAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowPasswordAppAuthProviderAppAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowPasswordAppAuthProviderAppAuthProvider> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowPasswordAppAuthProviderAppAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowPasswordAppAuthProviderAppAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowPasswordAppAuthProviderAppAuthProvider-objects as value to a dart map
  static Map<String, List<LocalBaserowPasswordAppAuthProviderAppAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowPasswordAppAuthProviderAppAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowPasswordAppAuthProviderAppAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'id',
  };
}

