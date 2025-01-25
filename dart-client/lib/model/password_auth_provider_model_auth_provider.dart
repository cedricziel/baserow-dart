//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PasswordAuthProviderModelAuthProvider {
  /// Returns a new [PasswordAuthProviderModelAuthProvider] instance.
  PasswordAuthProviderModelAuthProvider({
    required this.id,
    required this.type,
    this.domain,
    this.enabled,
  });

  int id;

  /// The type of the related field.
  String type;

  /// The email domain (if any) registered with this password provider.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Whether the provider is enabled or not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordAuthProviderModelAuthProvider &&
    other.id == id &&
    other.type == type &&
    other.domain == domain &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'PasswordAuthProviderModelAuthProvider[id=$id, type=$type, domain=$domain, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [PasswordAuthProviderModelAuthProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordAuthProviderModelAuthProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PasswordAuthProviderModelAuthProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PasswordAuthProviderModelAuthProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PasswordAuthProviderModelAuthProvider(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        domain: mapValueOfType<String>(json, r'domain'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<PasswordAuthProviderModelAuthProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasswordAuthProviderModelAuthProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordAuthProviderModelAuthProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordAuthProviderModelAuthProvider> mapFromJson(dynamic json) {
    final map = <String, PasswordAuthProviderModelAuthProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordAuthProviderModelAuthProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordAuthProviderModelAuthProvider-objects as value to a dart map
  static Map<String, List<PasswordAuthProviderModelAuthProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasswordAuthProviderModelAuthProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasswordAuthProviderModelAuthProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
  };
}

