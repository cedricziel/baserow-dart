//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class GridViewView {
  /// Returns a new [GridViewView] instance.
  GridViewView({
    required this.id,
    required this.tableId,
    required this.name,
    required this.order,
    required this.type,
    required this.table,
    this.filterType,
    this.filters = const [],
    this.filterGroups = const [],
    this.sortings = const [],
    this.groupBys = const [],
    this.decorations = const [],
    this.filtersDisabled,
    required this.publicViewHasPassword,
    this.showLogo,
    required this.ownershipType,
    this.ownedById,
    this.rowIdentifierType,
    this.rowHeightSize,
    this.public,
    required this.slug,
  });

  int id;

  int tableId;

  String name;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  String type;

  TableWithoutDataSync table;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  List<ViewFilter> filters;

  List<ViewFilterGroup> filterGroups;

  List<ViewSort> sortings;

  List<ViewGroupBy> groupBys;

  List<ViewDecoration> decorations;

  /// Allows users to see results unfiltered while still keeping the filters saved for the view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filtersDisabled;

  /// Indicates whether the public view is password protected or not.  :return: True if the public view is password protected, False otherwise.
  bool publicViewHasPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showLogo;

  String ownershipType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ownedById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RowIdentifierTypeEnum? rowIdentifierType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RowHeightSizeEnum? rowHeightSize;

  /// Indicates whether the view is publicly accessible to visitors.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// The unique slug that can be used to construct a public URL.
  String slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridViewView &&
    other.id == id &&
    other.tableId == tableId &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    other.table == table &&
    other.filterType == filterType &&
    _deepEquality.equals(other.filters, filters) &&
    _deepEquality.equals(other.filterGroups, filterGroups) &&
    _deepEquality.equals(other.sortings, sortings) &&
    _deepEquality.equals(other.groupBys, groupBys) &&
    _deepEquality.equals(other.decorations, decorations) &&
    other.filtersDisabled == filtersDisabled &&
    other.publicViewHasPassword == publicViewHasPassword &&
    other.showLogo == showLogo &&
    other.ownershipType == ownershipType &&
    other.ownedById == ownedById &&
    other.rowIdentifierType == rowIdentifierType &&
    other.rowHeightSize == rowHeightSize &&
    other.public == public &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (tableId.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (table.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (filters.hashCode) +
    (filterGroups.hashCode) +
    (sortings.hashCode) +
    (groupBys.hashCode) +
    (decorations.hashCode) +
    (filtersDisabled == null ? 0 : filtersDisabled!.hashCode) +
    (publicViewHasPassword.hashCode) +
    (showLogo == null ? 0 : showLogo!.hashCode) +
    (ownershipType.hashCode) +
    (ownedById == null ? 0 : ownedById!.hashCode) +
    (rowIdentifierType == null ? 0 : rowIdentifierType!.hashCode) +
    (rowHeightSize == null ? 0 : rowHeightSize!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'GridViewView[id=$id, tableId=$tableId, name=$name, order=$order, type=$type, table=$table, filterType=$filterType, filters=$filters, filterGroups=$filterGroups, sortings=$sortings, groupBys=$groupBys, decorations=$decorations, filtersDisabled=$filtersDisabled, publicViewHasPassword=$publicViewHasPassword, showLogo=$showLogo, ownershipType=$ownershipType, ownedById=$ownedById, rowIdentifierType=$rowIdentifierType, rowHeightSize=$rowHeightSize, public=$public, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'table_id'] = this.tableId;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
      json[r'table'] = this.table;
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
      json[r'filters'] = this.filters;
      json[r'filter_groups'] = this.filterGroups;
      json[r'sortings'] = this.sortings;
      json[r'group_bys'] = this.groupBys;
      json[r'decorations'] = this.decorations;
    if (this.filtersDisabled != null) {
      json[r'filters_disabled'] = this.filtersDisabled;
    } else {
      json[r'filters_disabled'] = null;
    }
      json[r'public_view_has_password'] = this.publicViewHasPassword;
    if (this.showLogo != null) {
      json[r'show_logo'] = this.showLogo;
    } else {
      json[r'show_logo'] = null;
    }
      json[r'ownership_type'] = this.ownershipType;
    if (this.ownedById != null) {
      json[r'owned_by_id'] = this.ownedById;
    } else {
      json[r'owned_by_id'] = null;
    }
    if (this.rowIdentifierType != null) {
      json[r'row_identifier_type'] = this.rowIdentifierType;
    } else {
      json[r'row_identifier_type'] = null;
    }
    if (this.rowHeightSize != null) {
      json[r'row_height_size'] = this.rowHeightSize;
    } else {
      json[r'row_height_size'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [GridViewView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridViewView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridViewView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridViewView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridViewView(
        id: mapValueOfType<int>(json, r'id')!,
        tableId: mapValueOfType<int>(json, r'table_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        table: TableWithoutDataSync.fromJson(json[r'table'])!,
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        filters: ViewFilter.listFromJson(json[r'filters']),
        filterGroups: ViewFilterGroup.listFromJson(json[r'filter_groups']),
        sortings: ViewSort.listFromJson(json[r'sortings']),
        groupBys: ViewGroupBy.listFromJson(json[r'group_bys']),
        decorations: ViewDecoration.listFromJson(json[r'decorations']),
        filtersDisabled: mapValueOfType<bool>(json, r'filters_disabled'),
        publicViewHasPassword: mapValueOfType<bool>(json, r'public_view_has_password')!,
        showLogo: mapValueOfType<bool>(json, r'show_logo'),
        ownershipType: mapValueOfType<String>(json, r'ownership_type')!,
        ownedById: mapValueOfType<int>(json, r'owned_by_id'),
        rowIdentifierType: RowIdentifierTypeEnum.fromJson(json[r'row_identifier_type']),
        rowHeightSize: RowHeightSizeEnum.fromJson(json[r'row_height_size']),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<GridViewView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridViewView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridViewView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridViewView> mapFromJson(dynamic json) {
    final map = <String, GridViewView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridViewView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridViewView-objects as value to a dart map
  static Map<String, List<GridViewView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridViewView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridViewView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'table_id',
    'name',
    'order',
    'type',
    'table',
    'public_view_has_password',
    'ownership_type',
    'slug',
  };
}

