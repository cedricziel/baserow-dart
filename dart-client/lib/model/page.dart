//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Page {
  /// Returns a new [Page] instance.
  Page({
    required this.id,
    required this.name,
    required this.path,
    this.pathParams = const [],
    required this.order,
    required this.builderId,
    required this.shared,
    required this.visibility,
    required this.roleType,
    required this.roles,
  });

  int id;

  String name;

  String path;

  List<PathParam> pathParams;

  /// Lowest first.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  int builderId;

  bool shared;

  /// Controls the page's visibility. When set to 'logged-in', the builder's login_page must also be set.  * `all` - All * `logged-in` - Logged In
  VisibilityC5fEnum visibility;

  /// Role type is used in conjunction with roles to control access to this page.  * `allow_all` - Allow All * `allow_all_except` - Allow All Except * `disallow_all_except` - Disallow All Except
  RoleTypeEnum roleType;

  /// List of user roles that are associated with this page. Used in conjunction with role_type.
  Object? roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Page &&
    other.id == id &&
    other.name == name &&
    other.path == path &&
    _deepEquality.equals(other.pathParams, pathParams) &&
    other.order == order &&
    other.builderId == builderId &&
    other.shared == shared &&
    other.visibility == visibility &&
    other.roleType == roleType &&
    other.roles == roles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (path.hashCode) +
    (pathParams.hashCode) +
    (order.hashCode) +
    (builderId.hashCode) +
    (shared.hashCode) +
    (visibility.hashCode) +
    (roleType.hashCode) +
    (roles == null ? 0 : roles!.hashCode);

  @override
  String toString() => 'Page[id=$id, name=$name, path=$path, pathParams=$pathParams, order=$order, builderId=$builderId, shared=$shared, visibility=$visibility, roleType=$roleType, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'path'] = this.path;
      json[r'path_params'] = this.pathParams;
      json[r'order'] = this.order;
      json[r'builder_id'] = this.builderId;
      json[r'shared'] = this.shared;
      json[r'visibility'] = this.visibility;
      json[r'role_type'] = this.roleType;
    if (this.roles != null) {
      json[r'roles'] = this.roles;
    } else {
      json[r'roles'] = null;
    }
    return json;
  }

  /// Returns a new [Page] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Page? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Page[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Page[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Page(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        path: mapValueOfType<String>(json, r'path')!,
        pathParams: PathParam.listFromJson(json[r'path_params']),
        order: mapValueOfType<int>(json, r'order')!,
        builderId: mapValueOfType<int>(json, r'builder_id')!,
        shared: mapValueOfType<bool>(json, r'shared')!,
        visibility: VisibilityC5fEnum.fromJson(json[r'visibility'])!,
        roleType: RoleTypeEnum.fromJson(json[r'role_type'])!,
        roles: mapValueOfType<Object>(json, r'roles'),
      );
    }
    return null;
  }

  static List<Page> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Page>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Page.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Page> mapFromJson(dynamic json) {
    final map = <String, Page>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Page.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Page-objects as value to a dart map
  static Map<String, List<Page>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Page>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Page.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'path',
    'order',
    'builder_id',
    'shared',
    'visibility',
    'role_type',
    'roles',
  };
}

