//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class WorkspacesAdminResponse {
  /// Returns a new [WorkspacesAdminResponse] instance.
  WorkspacesAdminResponse({
    required this.id,
    required this.name,
    this.users = const [],
    required this.applicationCount,
    required this.rowCount,
    this.storageUsage,
    required this.seatsTaken,
    required this.freeUsers,
    required this.createdOn,
  });

  int id;

  String name;

  List<WorkspaceAdminUsers> users;

  int applicationCount;

  int rowCount;

  /// Minimum value: -2147483648
  /// Maximum value: 2147483647
  int? storageUsage;

  int seatsTaken;

  int freeUsers;

  DateTime createdOn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspacesAdminResponse &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.users, users) &&
    other.applicationCount == applicationCount &&
    other.rowCount == rowCount &&
    other.storageUsage == storageUsage &&
    other.seatsTaken == seatsTaken &&
    other.freeUsers == freeUsers &&
    other.createdOn == createdOn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (users.hashCode) +
    (applicationCount.hashCode) +
    (rowCount.hashCode) +
    (storageUsage == null ? 0 : storageUsage!.hashCode) +
    (seatsTaken.hashCode) +
    (freeUsers.hashCode) +
    (createdOn.hashCode);

  @override
  String toString() => 'WorkspacesAdminResponse[id=$id, name=$name, users=$users, applicationCount=$applicationCount, rowCount=$rowCount, storageUsage=$storageUsage, seatsTaken=$seatsTaken, freeUsers=$freeUsers, createdOn=$createdOn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'users'] = this.users;
      json[r'application_count'] = this.applicationCount;
      json[r'row_count'] = this.rowCount;
    if (this.storageUsage != null) {
      json[r'storage_usage'] = this.storageUsage;
    } else {
      json[r'storage_usage'] = null;
    }
      json[r'seats_taken'] = this.seatsTaken;
      json[r'free_users'] = this.freeUsers;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [WorkspacesAdminResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspacesAdminResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkspacesAdminResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkspacesAdminResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkspacesAdminResponse(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        users: WorkspaceAdminUsers.listFromJson(json[r'users']),
        applicationCount: mapValueOfType<int>(json, r'application_count')!,
        rowCount: mapValueOfType<int>(json, r'row_count')!,
        storageUsage: mapValueOfType<int>(json, r'storage_usage'),
        seatsTaken: mapValueOfType<int>(json, r'seats_taken')!,
        freeUsers: mapValueOfType<int>(json, r'free_users')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
      );
    }
    return null;
  }

  static List<WorkspacesAdminResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspacesAdminResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspacesAdminResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspacesAdminResponse> mapFromJson(dynamic json) {
    final map = <String, WorkspacesAdminResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspacesAdminResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspacesAdminResponse-objects as value to a dart map
  static Map<String, List<WorkspacesAdminResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspacesAdminResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspacesAdminResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'users',
    'application_count',
    'row_count',
    'seats_taken',
    'free_users',
    'created_on',
  };
}

