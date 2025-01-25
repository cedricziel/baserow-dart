//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PublicView {
  /// Returns a new [PublicView] instance.
  PublicView({
    required this.id,
    required this.table,
    required this.name,
    required this.order,
    required this.type,
    this.sortings = const [],
    this.groupBys = const [],
    this.public,
    required this.slug,
    this.showLogo,
  });

  String id;

  PublicViewTable table;

  String name;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  String type;

  List<PublicViewSort> sortings;

  List<PublicViewGroupBy> groupBys;

  /// Indicates whether the view is publicly accessible to visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// The unique slug where the view can be accessed publicly on.
  String slug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showLogo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicView &&
    other.id == id &&
    other.table == table &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    _deepEquality.equals(other.sortings, sortings) &&
    _deepEquality.equals(other.groupBys, groupBys) &&
    other.public == public &&
    other.slug == slug &&
    other.showLogo == showLogo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (table.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (sortings.hashCode) +
    (groupBys.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode) +
    (showLogo == null ? 0 : showLogo!.hashCode);

  @override
  String toString() => 'PublicView[id=$id, table=$table, name=$name, order=$order, type=$type, sortings=$sortings, groupBys=$groupBys, public=$public, slug=$slug, showLogo=$showLogo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'table'] = this.table;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
      json[r'sortings'] = this.sortings;
      json[r'group_bys'] = this.groupBys;
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'slug'] = this.slug;
    if (this.showLogo != null) {
      json[r'show_logo'] = this.showLogo;
    } else {
      json[r'show_logo'] = null;
    }
    return json;
  }

  /// Returns a new [PublicView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicView(
        id: mapValueOfType<String>(json, r'id')!,
        table: PublicViewTable.fromJson(json[r'table'])!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        sortings: PublicViewSort.listFromJson(json[r'sortings']),
        groupBys: PublicViewGroupBy.listFromJson(json[r'group_bys']),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
        showLogo: mapValueOfType<bool>(json, r'show_logo'),
      );
    }
    return null;
  }

  static List<PublicView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicView> mapFromJson(dynamic json) {
    final map = <String, PublicView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicView-objects as value to a dart map
  static Map<String, List<PublicView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'table',
    'name',
    'order',
    'type',
    'sortings',
    'group_bys',
    'slug',
  };
}

