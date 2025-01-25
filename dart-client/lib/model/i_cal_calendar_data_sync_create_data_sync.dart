//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ICalCalendarDataSyncCreateDataSync {
  /// Returns a new [ICalCalendarDataSyncCreateDataSync] instance.
  ICalCalendarDataSyncCreateDataSync({
    this.syncedProperties = const [],
    required this.type,
    required this.tableName,
    required this.icalUrl,
  });

  List<String> syncedProperties;

  /// The type of the data sync table that must be created.  * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
  TypeD46Enum type;

  String tableName;

  String icalUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ICalCalendarDataSyncCreateDataSync &&
    _deepEquality.equals(other.syncedProperties, syncedProperties) &&
    other.type == type &&
    other.tableName == tableName &&
    other.icalUrl == icalUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncedProperties.hashCode) +
    (type.hashCode) +
    (tableName.hashCode) +
    (icalUrl.hashCode);

  @override
  String toString() => 'ICalCalendarDataSyncCreateDataSync[syncedProperties=$syncedProperties, type=$type, tableName=$tableName, icalUrl=$icalUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'synced_properties'] = this.syncedProperties;
      json[r'type'] = this.type;
      json[r'table_name'] = this.tableName;
      json[r'ical_url'] = this.icalUrl;
    return json;
  }

  /// Returns a new [ICalCalendarDataSyncCreateDataSync] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ICalCalendarDataSyncCreateDataSync? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ICalCalendarDataSyncCreateDataSync[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ICalCalendarDataSyncCreateDataSync[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ICalCalendarDataSyncCreateDataSync(
        syncedProperties: json[r'synced_properties'] is Iterable
            ? (json[r'synced_properties'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: TypeD46Enum.fromJson(json[r'type'])!,
        tableName: mapValueOfType<String>(json, r'table_name')!,
        icalUrl: mapValueOfType<String>(json, r'ical_url')!,
      );
    }
    return null;
  }

  static List<ICalCalendarDataSyncCreateDataSync> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ICalCalendarDataSyncCreateDataSync>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ICalCalendarDataSyncCreateDataSync.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ICalCalendarDataSyncCreateDataSync> mapFromJson(dynamic json) {
    final map = <String, ICalCalendarDataSyncCreateDataSync>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ICalCalendarDataSyncCreateDataSync.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ICalCalendarDataSyncCreateDataSync-objects as value to a dart map
  static Map<String, List<ICalCalendarDataSyncCreateDataSync>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ICalCalendarDataSyncCreateDataSync>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ICalCalendarDataSyncCreateDataSync.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'synced_properties',
    'type',
    'table_name',
    'ical_url',
  };
}

