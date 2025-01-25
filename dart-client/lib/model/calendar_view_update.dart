//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class CalendarViewUpdate {
  /// Returns a new [CalendarViewUpdate] instance.
  CalendarViewUpdate({
    this.name,
    this.filterType,
    this.filtersDisabled,
    this.publicViewPassword,
    this.ownershipType,
    this.dateField,
    required this.icalFeedUrl,
    this.icalPublic,
    this.public,
    required this.slug,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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

  /// The new password or an empty string to remove any previous password from the view and make it publicly accessible again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicViewPassword;

  /// Indicates how the access to the view is determined. By default, views are collaborative and shared for all users that have access to the table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownershipType;

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
  bool operator ==(Object other) => identical(this, other) || other is CalendarViewUpdate &&
    other.name == name &&
    other.filterType == filterType &&
    other.filtersDisabled == filtersDisabled &&
    other.publicViewPassword == publicViewPassword &&
    other.ownershipType == ownershipType &&
    other.dateField == dateField &&
    other.icalFeedUrl == icalFeedUrl &&
    other.icalPublic == icalPublic &&
    other.public == public &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (filterType == null ? 0 : filterType!.hashCode) +
    (filtersDisabled == null ? 0 : filtersDisabled!.hashCode) +
    (publicViewPassword == null ? 0 : publicViewPassword!.hashCode) +
    (ownershipType == null ? 0 : ownershipType!.hashCode) +
    (dateField == null ? 0 : dateField!.hashCode) +
    (icalFeedUrl.hashCode) +
    (icalPublic == null ? 0 : icalPublic!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'CalendarViewUpdate[name=$name, filterType=$filterType, filtersDisabled=$filtersDisabled, publicViewPassword=$publicViewPassword, ownershipType=$ownershipType, dateField=$dateField, icalFeedUrl=$icalFeedUrl, icalPublic=$icalPublic, public=$public, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.publicViewPassword != null) {
      json[r'public_view_password'] = this.publicViewPassword;
    } else {
      json[r'public_view_password'] = null;
    }
    if (this.ownershipType != null) {
      json[r'ownership_type'] = this.ownershipType;
    } else {
      json[r'ownership_type'] = null;
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

  /// Returns a new [CalendarViewUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarViewUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalendarViewUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalendarViewUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalendarViewUpdate(
        name: mapValueOfType<String>(json, r'name'),
        filterType: ConditionTypeEnum.fromJson(json[r'filter_type']),
        filtersDisabled: mapValueOfType<bool>(json, r'filters_disabled'),
        publicViewPassword: mapValueOfType<String>(json, r'public_view_password'),
        ownershipType: mapValueOfType<String>(json, r'ownership_type'),
        dateField: mapValueOfType<int>(json, r'date_field'),
        icalFeedUrl: mapValueOfType<String>(json, r'ical_feed_url')!,
        icalPublic: mapValueOfType<bool>(json, r'ical_public'),
        public: mapValueOfType<bool>(json, r'public'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<CalendarViewUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarViewUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarViewUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarViewUpdate> mapFromJson(dynamic json) {
    final map = <String, CalendarViewUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarViewUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarViewUpdate-objects as value to a dart map
  static Map<String, List<CalendarViewUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarViewUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarViewUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ical_feed_url',
    'slug',
  };
}

