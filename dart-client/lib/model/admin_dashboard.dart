//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AdminDashboard {
  /// Returns a new [AdminDashboard] instance.
  AdminDashboard({
    required this.totalUsers,
    required this.totalWorkspaces,
    required this.totalApplications,
    required this.newUsersLast24Hours,
    required this.newUsersLast7Days,
    required this.newUsersLast30Days,
    required this.previousNewUsersLast24Hours,
    required this.previousNewUsersLast7Days,
    required this.previousNewUsersLast30Days,
    required this.activeUsersLast24Hours,
    required this.activeUsersLast7Days,
    required this.activeUsersLast30Days,
    required this.previousActiveUsersLast24Hours,
    required this.previousActiveUsersLast7Days,
    required this.previousActiveUsersLast30Days,
    this.newUsersPerDay = const [],
    this.activeUsersPerDay = const [],
  });

  int totalUsers;

  int totalWorkspaces;

  int totalApplications;

  int newUsersLast24Hours;

  int newUsersLast7Days;

  int newUsersLast30Days;

  int previousNewUsersLast24Hours;

  int previousNewUsersLast7Days;

  int previousNewUsersLast30Days;

  int activeUsersLast24Hours;

  int activeUsersLast7Days;

  int activeUsersLast30Days;

  int previousActiveUsersLast24Hours;

  int previousActiveUsersLast7Days;

  int previousActiveUsersLast30Days;

  List<AdminDashboardPerDay> newUsersPerDay;

  List<AdminDashboardPerDay> activeUsersPerDay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminDashboard &&
    other.totalUsers == totalUsers &&
    other.totalWorkspaces == totalWorkspaces &&
    other.totalApplications == totalApplications &&
    other.newUsersLast24Hours == newUsersLast24Hours &&
    other.newUsersLast7Days == newUsersLast7Days &&
    other.newUsersLast30Days == newUsersLast30Days &&
    other.previousNewUsersLast24Hours == previousNewUsersLast24Hours &&
    other.previousNewUsersLast7Days == previousNewUsersLast7Days &&
    other.previousNewUsersLast30Days == previousNewUsersLast30Days &&
    other.activeUsersLast24Hours == activeUsersLast24Hours &&
    other.activeUsersLast7Days == activeUsersLast7Days &&
    other.activeUsersLast30Days == activeUsersLast30Days &&
    other.previousActiveUsersLast24Hours == previousActiveUsersLast24Hours &&
    other.previousActiveUsersLast7Days == previousActiveUsersLast7Days &&
    other.previousActiveUsersLast30Days == previousActiveUsersLast30Days &&
    _deepEquality.equals(other.newUsersPerDay, newUsersPerDay) &&
    _deepEquality.equals(other.activeUsersPerDay, activeUsersPerDay);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalUsers.hashCode) +
    (totalWorkspaces.hashCode) +
    (totalApplications.hashCode) +
    (newUsersLast24Hours.hashCode) +
    (newUsersLast7Days.hashCode) +
    (newUsersLast30Days.hashCode) +
    (previousNewUsersLast24Hours.hashCode) +
    (previousNewUsersLast7Days.hashCode) +
    (previousNewUsersLast30Days.hashCode) +
    (activeUsersLast24Hours.hashCode) +
    (activeUsersLast7Days.hashCode) +
    (activeUsersLast30Days.hashCode) +
    (previousActiveUsersLast24Hours.hashCode) +
    (previousActiveUsersLast7Days.hashCode) +
    (previousActiveUsersLast30Days.hashCode) +
    (newUsersPerDay.hashCode) +
    (activeUsersPerDay.hashCode);

  @override
  String toString() => 'AdminDashboard[totalUsers=$totalUsers, totalWorkspaces=$totalWorkspaces, totalApplications=$totalApplications, newUsersLast24Hours=$newUsersLast24Hours, newUsersLast7Days=$newUsersLast7Days, newUsersLast30Days=$newUsersLast30Days, previousNewUsersLast24Hours=$previousNewUsersLast24Hours, previousNewUsersLast7Days=$previousNewUsersLast7Days, previousNewUsersLast30Days=$previousNewUsersLast30Days, activeUsersLast24Hours=$activeUsersLast24Hours, activeUsersLast7Days=$activeUsersLast7Days, activeUsersLast30Days=$activeUsersLast30Days, previousActiveUsersLast24Hours=$previousActiveUsersLast24Hours, previousActiveUsersLast7Days=$previousActiveUsersLast7Days, previousActiveUsersLast30Days=$previousActiveUsersLast30Days, newUsersPerDay=$newUsersPerDay, activeUsersPerDay=$activeUsersPerDay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total_users'] = this.totalUsers;
      json[r'total_workspaces'] = this.totalWorkspaces;
      json[r'total_applications'] = this.totalApplications;
      json[r'new_users_last_24_hours'] = this.newUsersLast24Hours;
      json[r'new_users_last_7_days'] = this.newUsersLast7Days;
      json[r'new_users_last_30_days'] = this.newUsersLast30Days;
      json[r'previous_new_users_last_24_hours'] = this.previousNewUsersLast24Hours;
      json[r'previous_new_users_last_7_days'] = this.previousNewUsersLast7Days;
      json[r'previous_new_users_last_30_days'] = this.previousNewUsersLast30Days;
      json[r'active_users_last_24_hours'] = this.activeUsersLast24Hours;
      json[r'active_users_last_7_days'] = this.activeUsersLast7Days;
      json[r'active_users_last_30_days'] = this.activeUsersLast30Days;
      json[r'previous_active_users_last_24_hours'] = this.previousActiveUsersLast24Hours;
      json[r'previous_active_users_last_7_days'] = this.previousActiveUsersLast7Days;
      json[r'previous_active_users_last_30_days'] = this.previousActiveUsersLast30Days;
      json[r'new_users_per_day'] = this.newUsersPerDay;
      json[r'active_users_per_day'] = this.activeUsersPerDay;
    return json;
  }

  /// Returns a new [AdminDashboard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminDashboard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminDashboard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminDashboard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminDashboard(
        totalUsers: mapValueOfType<int>(json, r'total_users')!,
        totalWorkspaces: mapValueOfType<int>(json, r'total_workspaces')!,
        totalApplications: mapValueOfType<int>(json, r'total_applications')!,
        newUsersLast24Hours: mapValueOfType<int>(json, r'new_users_last_24_hours')!,
        newUsersLast7Days: mapValueOfType<int>(json, r'new_users_last_7_days')!,
        newUsersLast30Days: mapValueOfType<int>(json, r'new_users_last_30_days')!,
        previousNewUsersLast24Hours: mapValueOfType<int>(json, r'previous_new_users_last_24_hours')!,
        previousNewUsersLast7Days: mapValueOfType<int>(json, r'previous_new_users_last_7_days')!,
        previousNewUsersLast30Days: mapValueOfType<int>(json, r'previous_new_users_last_30_days')!,
        activeUsersLast24Hours: mapValueOfType<int>(json, r'active_users_last_24_hours')!,
        activeUsersLast7Days: mapValueOfType<int>(json, r'active_users_last_7_days')!,
        activeUsersLast30Days: mapValueOfType<int>(json, r'active_users_last_30_days')!,
        previousActiveUsersLast24Hours: mapValueOfType<int>(json, r'previous_active_users_last_24_hours')!,
        previousActiveUsersLast7Days: mapValueOfType<int>(json, r'previous_active_users_last_7_days')!,
        previousActiveUsersLast30Days: mapValueOfType<int>(json, r'previous_active_users_last_30_days')!,
        newUsersPerDay: AdminDashboardPerDay.listFromJson(json[r'new_users_per_day']),
        activeUsersPerDay: AdminDashboardPerDay.listFromJson(json[r'active_users_per_day']),
      );
    }
    return null;
  }

  static List<AdminDashboard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminDashboard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminDashboard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminDashboard> mapFromJson(dynamic json) {
    final map = <String, AdminDashboard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminDashboard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminDashboard-objects as value to a dart map
  static Map<String, List<AdminDashboard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminDashboard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminDashboard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total_users',
    'total_workspaces',
    'total_applications',
    'new_users_last_24_hours',
    'new_users_last_7_days',
    'new_users_last_30_days',
    'previous_new_users_last_24_hours',
    'previous_new_users_last_7_days',
    'previous_new_users_last_30_days',
    'active_users_last_24_hours',
    'active_users_last_7_days',
    'active_users_last_30_days',
    'previous_active_users_last_24_hours',
    'previous_active_users_last_7_days',
    'previous_active_users_last_30_days',
    'new_users_per_day',
    'active_users_per_day',
  };
}

