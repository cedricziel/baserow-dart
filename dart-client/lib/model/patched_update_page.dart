//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedUpdatePage {
  /// Returns a new [PatchedUpdatePage] instance.
  PatchedUpdatePage({
    this.name,
    this.path,
    this.pathParams = const [],
    this.visibility,
    this.roleType,
    this.roles,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  List<PathParam> pathParams;

  /// Controls the page's visibility. When set to 'logged-in', the builder's login_page must also be set.  * `all` - All * `logged-in` - Logged In
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VisibilityC5fEnum? visibility;

  /// Role type is used in conjunction with roles to control access to this page.  * `allow_all` - Allow All * `allow_all_except` - Allow All Except * `disallow_all_except` - Disallow All Except
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RoleTypeEnum? roleType;

  /// List of user roles that are associated with this page. Used in conjunction with role_type.
  Object? roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUpdatePage &&
    other.name == name &&
    other.path == path &&
    _deepEquality.equals(other.pathParams, pathParams) &&
    other.visibility == visibility &&
    other.roleType == roleType &&
    other.roles == roles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (pathParams.hashCode) +
    (visibility == null ? 0 : visibility!.hashCode) +
    (roleType == null ? 0 : roleType!.hashCode) +
    (roles == null ? 0 : roles!.hashCode);

  @override
  String toString() => 'PatchedUpdatePage[name=$name, path=$path, pathParams=$pathParams, visibility=$visibility, roleType=$roleType, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
      json[r'path_params'] = this.pathParams;
    if (this.visibility != null) {
      json[r'visibility'] = this.visibility;
    } else {
      json[r'visibility'] = null;
    }
    if (this.roleType != null) {
      json[r'role_type'] = this.roleType;
    } else {
      json[r'role_type'] = null;
    }
    if (this.roles != null) {
      json[r'roles'] = this.roles;
    } else {
      json[r'roles'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUpdatePage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUpdatePage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUpdatePage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUpdatePage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUpdatePage(
        name: mapValueOfType<String>(json, r'name'),
        path: mapValueOfType<String>(json, r'path'),
        pathParams: PathParam.listFromJson(json[r'path_params']),
        visibility: VisibilityC5fEnum.fromJson(json[r'visibility']),
        roleType: RoleTypeEnum.fromJson(json[r'role_type']),
        roles: mapValueOfType<Object>(json, r'roles'),
      );
    }
    return null;
  }

  static List<PatchedUpdatePage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUpdatePage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUpdatePage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUpdatePage> mapFromJson(dynamic json) {
    final map = <String, PatchedUpdatePage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUpdatePage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUpdatePage-objects as value to a dart map
  static Map<String, List<PatchedUpdatePage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUpdatePage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUpdatePage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

