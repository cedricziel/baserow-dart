//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ICalCalendarDataSyncListDataSyncPropertiesRequest {
  /// Returns a new [ICalCalendarDataSyncListDataSyncPropertiesRequest] instance.
  ICalCalendarDataSyncListDataSyncPropertiesRequest({
    required this.type,
    required this.icalUrl,
  });

  /// The type of the data sync to get the properties from.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  String icalUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ICalCalendarDataSyncListDataSyncPropertiesRequest &&
    other.type == type &&
    other.icalUrl == icalUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (icalUrl.hashCode);

  @override
  String toString() => 'ICalCalendarDataSyncListDataSyncPropertiesRequest[type=$type, icalUrl=$icalUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'ical_url'] = this.icalUrl;
    return json;
  }

  /// Returns a new [ICalCalendarDataSyncListDataSyncPropertiesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ICalCalendarDataSyncListDataSyncPropertiesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ICalCalendarDataSyncListDataSyncPropertiesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ICalCalendarDataSyncListDataSyncPropertiesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ICalCalendarDataSyncListDataSyncPropertiesRequest(
        type: TypeD46Enum.fromJson(json[r'type'])!,
        icalUrl: mapValueOfType<String>(json, r'ical_url')!,
      );
    }
    return null;
  }

  static List<ICalCalendarDataSyncListDataSyncPropertiesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ICalCalendarDataSyncListDataSyncPropertiesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ICalCalendarDataSyncListDataSyncPropertiesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ICalCalendarDataSyncListDataSyncPropertiesRequest> mapFromJson(dynamic json) {
    final map = <String, ICalCalendarDataSyncListDataSyncPropertiesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ICalCalendarDataSyncListDataSyncPropertiesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ICalCalendarDataSyncListDataSyncPropertiesRequest-objects as value to a dart map
  static Map<String, List<ICalCalendarDataSyncListDataSyncPropertiesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ICalCalendarDataSyncListDataSyncPropertiesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ICalCalendarDataSyncListDataSyncPropertiesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'ical_url',
  };
}

