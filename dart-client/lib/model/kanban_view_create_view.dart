//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class KanbanViewCreateView {
  /// Returns a new [KanbanViewCreateView] instance.
  KanbanViewCreateView({
    required this.name,
    required this.type,
    this.ownershipType = OwnershipTypeEnum.collaborative,
    this.filterType,
    this.filtersDisabled,
    this.singleSelectField,
    this.cardCoverImageField,
    this.public,
    required this.slug,
  });

  String name;

  TypeBc4Enum type;

  OwnershipTypeEnum ownershipType;

  /// Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConditionTypeEnum? filterType;

  /// Allows users to see results unfiltered while still keeping the filters saved for the view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filtersDisabled;

  int? singleSelectField;

  /// References a file field of which the first image must be shown as card cover image.
  int? cardCoverImageField;

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
  bool operator ==(Object other) => identical(this, other) || other is KanbanViewCreateView &&
    other.name == name &&
    other.type == type &&
    other.ownershipType == ownershipType &&
    other.filterType == filterType &&
    other.filtersDisabled == filtersDisabled &&
    other.singleSelectField == singleSelectField &&
    other.cardCoverImageField == cardCoverImageField &&
    other.public == public &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (ownershipType.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (filtersDisabled == null ? 0 : filtersDisabled!.hashCode) +
    (singleSelectField == null ? 0 : singleSelectField!.hashCode) +
    (cardCoverImageField == null ? 0 : cardCoverImageField!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'KanbanViewCreateView[name=$name, type=$type, ownershipType=$ownershipType, filterType=$filterType, filtersDisabled=$filtersDisabled, singleSelectField=$singleSelectField, cardCoverImageField=$cardCoverImageField, public=$public, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'ownership_type'] = this.ownershipType;
    if (this.filterType != null) {
      json[r'filter_type'] = this.filterType;
    } else {
      json[r'filter_type'] = null;
    }
    if (this.filtersDisabled != null) {
      json[r'filters_disabled'] = this.filtersDisabled;
    } else {
      json[r'filters_disabled'] = null;
    }
    if (this.singleSelectField != null) {
      json[r'single_select_field'] = this.singleSelectField;
    } else {
      json[r'single_select_field'] = null;
    }
    if (this.cardCoverImageField != null) {
      json[r'card_cover_image_field'] = this.cardCoverImageField;
    } else {
      json[r'card_cover_image_field'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [KanbanViewCreateView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KanbanViewCreateView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KanbanViewCreateView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KanbanViewCreateView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KanbanViewCreateView(
        name: mapValueOfType<String>(json, r'name')!,
        type: TypeBc4Enum.fromJson(json[r'type'])!,
        ownershipType: OwnershipTypeEnum.fromJson(json[r'ownership_type']) ?? OwnershipTypeEnum.collaborative,
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        filtersDisabled: mapValueOfType<bool>(json, r'filters_disabled'),
        singleSelectField: mapValueOfType<int>(json, r'single_select_field'),
        cardCoverImageField: mapValueOfType<int>(json, r'card_cover_image_field'),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<KanbanViewCreateView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KanbanViewCreateView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KanbanViewCreateView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KanbanViewCreateView> mapFromJson(dynamic json) {
    final map = <String, KanbanViewCreateView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KanbanViewCreateView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KanbanViewCreateView-objects as value to a dart map
  static Map<String, List<KanbanViewCreateView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KanbanViewCreateView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KanbanViewCreateView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
    'slug',
  };
}

