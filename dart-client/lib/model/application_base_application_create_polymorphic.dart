//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ApplicationBaseApplicationCreatePolymorphic {
  /// Returns a new [ApplicationBaseApplicationCreatePolymorphic] instance.
  ApplicationBaseApplicationCreatePolymorphic({
    required this.name,
    required this.type,
    this.initWithData = false,
    this.faviconFile,
    this.loginPageId,
  });

  String name;

  Type8b0Enum type;

  bool initWithData;

  /// The favicon image file
  UserFile? faviconFile;

  int? loginPageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationBaseApplicationCreatePolymorphic &&
    other.name == name &&
    other.type == type &&
    other.initWithData == initWithData &&
    other.faviconFile == faviconFile &&
    other.loginPageId == loginPageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (initWithData.hashCode) +
    (faviconFile == null ? 0 : faviconFile!.hashCode) +
    (loginPageId == null ? 0 : loginPageId!.hashCode);

  @override
  String toString() => 'ApplicationBaseApplicationCreatePolymorphic[name=$name, type=$type, initWithData=$initWithData, faviconFile=$faviconFile, loginPageId=$loginPageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'init_with_data'] = this.initWithData;
    if (this.faviconFile != null) {
      json[r'favicon_file'] = this.faviconFile;
    } else {
      json[r'favicon_file'] = null;
    }
    if (this.loginPageId != null) {
      json[r'login_page_id'] = this.loginPageId;
    } else {
      json[r'login_page_id'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationBaseApplicationCreatePolymorphic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationBaseApplicationCreatePolymorphic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationBaseApplicationCreatePolymorphic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationBaseApplicationCreatePolymorphic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationBaseApplicationCreatePolymorphic(
        name: mapValueOfType<String>(json, r'name')!,
        type: Type8b0Enum.fromJson(json[r'type'])!,
        initWithData: mapValueOfType<bool>(json, r'init_with_data') ?? false,
        faviconFile: UserFile.fromJson(json[r'favicon_file']),
        loginPageId: mapValueOfType<int>(json, r'login_page_id'),
      );
    }
    return null;
  }

  static List<ApplicationBaseApplicationCreatePolymorphic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationBaseApplicationCreatePolymorphic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationBaseApplicationCreatePolymorphic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationBaseApplicationCreatePolymorphic> mapFromJson(dynamic json) {
    final map = <String, ApplicationBaseApplicationCreatePolymorphic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationBaseApplicationCreatePolymorphic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationBaseApplicationCreatePolymorphic-objects as value to a dart map
  static Map<String, List<ApplicationBaseApplicationCreatePolymorphic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationBaseApplicationCreatePolymorphic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationBaseApplicationCreatePolymorphic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
  };
}

