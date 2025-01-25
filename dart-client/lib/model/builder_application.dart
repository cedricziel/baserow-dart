//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class BuilderApplication {
  /// Returns a new [BuilderApplication] instance.
  BuilderApplication({
    required this.id,
    required this.name,
    required this.order,
    required this.type,
    required this.workspace,
    required this.createdOn,
    this.pages = const [],
    required this.theme,
    this.faviconFile,
    this.loginPageId,
  });

  int id;

  String name;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  String type;

  /// The workspace that the application belongs to.
  Workspace workspace;

  DateTime createdOn;

  /// This field is specific to the `builder` application and contains an array of pages that are in the builder.
  List<Page> pages;

  /// This field is specific to the `builder` application and contains the theme settings.
  CombinedThemeConfigBlocks theme;

  /// The favicon image file
  UserFile? faviconFile;

  int? loginPageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuilderApplication &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    other.workspace == workspace &&
    other.createdOn == createdOn &&
    _deepEquality.equals(other.pages, pages) &&
    other.theme == theme &&
    other.faviconFile == faviconFile &&
    other.loginPageId == loginPageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (workspace.hashCode) +
    (createdOn.hashCode) +
    (pages.hashCode) +
    (theme.hashCode) +
    (faviconFile == null ? 0 : faviconFile!.hashCode) +
    (loginPageId == null ? 0 : loginPageId!.hashCode);

  @override
  String toString() => 'BuilderApplication[id=$id, name=$name, order=$order, type=$type, workspace=$workspace, createdOn=$createdOn, pages=$pages, theme=$theme, faviconFile=$faviconFile, loginPageId=$loginPageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
      json[r'workspace'] = this.workspace;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'pages'] = this.pages;
      json[r'theme'] = this.theme;
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

  /// Returns a new [BuilderApplication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuilderApplication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuilderApplication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuilderApplication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuilderApplication(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        workspace: Workspace.fromJson(json[r'workspace'])!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        pages: Page.listFromJson(json[r'pages']),
        theme: CombinedThemeConfigBlocks.fromJson(json[r'theme'])!,
        faviconFile: UserFile.fromJson(json[r'favicon_file']),
        loginPageId: mapValueOfType<int>(json, r'login_page_id'),
      );
    }
    return null;
  }

  static List<BuilderApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuilderApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuilderApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuilderApplication> mapFromJson(dynamic json) {
    final map = <String, BuilderApplication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuilderApplication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuilderApplication-objects as value to a dart map
  static Map<String, List<BuilderApplication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuilderApplication>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuilderApplication.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'order',
    'type',
    'workspace',
    'created_on',
    'pages',
    'theme',
  };
}

