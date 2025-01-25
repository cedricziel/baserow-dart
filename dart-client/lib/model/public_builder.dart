//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicBuilder {
  /// Returns a new [PublicBuilder] instance.
  PublicBuilder({
    required this.id,
    required this.name,
    this.pages = const [],
    required this.type,
    required this.theme,
    this.userSources = const [],
    required this.faviconFile,
    required this.loginPageId,
  });

  int id;

  String name;

  /// This field is specific to the `builder` application and contains an array of pages that are in the builder.
  List<PublicPage> pages;

  /// The type of the object.
  String type;

  /// This field is specific to the `builder` application and contains the theme settings.
  CombinedThemeConfigBlocks theme;

  /// The user sources related with this builder.
  List<UserSourceBasePublicUserSource> userSources;

  /// This field is specific to the `builder` application and contains the favicon settings.
  String faviconFile;

  /// The login page for this application. This is related to the visibility settings of builder pages.
  int loginPageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicBuilder &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.pages, pages) &&
    other.type == type &&
    other.theme == theme &&
    _deepEquality.equals(other.userSources, userSources) &&
    other.faviconFile == faviconFile &&
    other.loginPageId == loginPageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (pages.hashCode) +
    (type.hashCode) +
    (theme.hashCode) +
    (userSources.hashCode) +
    (faviconFile.hashCode) +
    (loginPageId.hashCode);

  @override
  String toString() => 'PublicBuilder[id=$id, name=$name, pages=$pages, type=$type, theme=$theme, userSources=$userSources, faviconFile=$faviconFile, loginPageId=$loginPageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'pages'] = this.pages;
      json[r'type'] = this.type;
      json[r'theme'] = this.theme;
      json[r'user_sources'] = this.userSources;
      json[r'favicon_file'] = this.faviconFile;
      json[r'login_page_id'] = this.loginPageId;
    return json;
  }

  /// Returns a new [PublicBuilder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicBuilder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicBuilder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicBuilder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicBuilder(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        pages: PublicPage.listFromJson(json[r'pages']),
        type: mapValueOfType<String>(json, r'type')!,
        theme: CombinedThemeConfigBlocks.fromJson(json[r'theme'])!,
        userSources: UserSourceBasePublicUserSource.listFromJson(json[r'user_sources']),
        faviconFile: mapValueOfType<String>(json, r'favicon_file')!,
        loginPageId: mapValueOfType<int>(json, r'login_page_id')!,
      );
    }
    return null;
  }

  static List<PublicBuilder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicBuilder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicBuilder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicBuilder> mapFromJson(dynamic json) {
    final map = <String, PublicBuilder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicBuilder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicBuilder-objects as value to a dart map
  static Map<String, List<PublicBuilder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicBuilder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicBuilder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'pages',
    'type',
    'theme',
    'user_sources',
    'favicon_file',
    'login_page_id',
  };
}

