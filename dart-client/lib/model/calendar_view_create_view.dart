//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CalendarViewCreateView {
  /// Returns a new [CalendarViewCreateView] instance.
  CalendarViewCreateView({
    required this.name,
    required this.type,
    this.ownershipType = OwnershipTypeEnum.collaborative,
    this.filterType,
    this.filtersDisabled,
    this.dateField,
    required this.icalFeedUrl,
    this.icalPublic,
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

  int? dateField;

  /// Read-only field with ICal feed endpoint. Note: this url will not be active if ical_public value is set to False.
  String icalFeedUrl;

  /// A flag to show if ical feed is exposed. Set this field to True when modifying this resource to enable ICal feed url.
  bool? icalPublic;

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
  bool operator ==(Object other) => identical(this, other) || other is CalendarViewCreateView &&
    other.name == name &&
    other.type == type &&
    other.ownershipType == ownershipType &&
    other.filterType == filterType &&
    other.filtersDisabled == filtersDisabled &&
    other.dateField == dateField &&
    other.icalFeedUrl == icalFeedUrl &&
    other.icalPublic == icalPublic &&
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
    (dateField == null ? 0 : dateField!.hashCode) +
    (icalFeedUrl.hashCode) +
    (icalPublic == null ? 0 : icalPublic!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'CalendarViewCreateView[name=$name, type=$type, ownershipType=$ownershipType, filterType=$filterType, filtersDisabled=$filtersDisabled, dateField=$dateField, icalFeedUrl=$icalFeedUrl, icalPublic=$icalPublic, public=$public, slug=$slug]';

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
    if (this.dateField != null) {
      json[r'date_field'] = this.dateField;
    } else {
      json[r'date_field'] = null;
    }
      json[r'ical_feed_url'] = this.icalFeedUrl;
    if (this.icalPublic != null) {
      json[r'ical_public'] = this.icalPublic;
    } else {
      json[r'ical_public'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [CalendarViewCreateView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarViewCreateView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarViewCreateView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarViewCreateView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarViewCreateView(
        name: mapValueOfType<String>(json, r'name')!,
        type: TypeBc4Enum.fromJson(json[r'type'])!,
        ownershipType: OwnershipTypeEnum.fromJson(json[r'ownership_type']) ?? OwnershipTypeEnum.collaborative,
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        filtersDisabled: mapValueOfType<bool>(json, r'filters_disabled'),
        dateField: mapValueOfType<int>(json, r'date_field'),
        icalFeedUrl: mapValueOfType<String>(json, r'ical_feed_url')!,
        icalPublic: mapValueOfType<bool>(json, r'ical_public'),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<CalendarViewCreateView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarViewCreateView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarViewCreateView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarViewCreateView> mapFromJson(dynamic json) {
    final map = <String, CalendarViewCreateView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarViewCreateView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarViewCreateView-objects as value to a dart map
  static Map<String, List<CalendarViewCreateView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarViewCreateView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarViewCreateView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
    'ical_feed_url',
    'slug',
  };
}

