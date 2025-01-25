//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class AuditLog {
  /// Returns a new [AuditLog] instance.
  AuditLog({
    required this.id,
    required this.actionType,
    required this.user,
    required this.workspace,
    required this.type,
    required this.description,
    required this.timestamp,
    required this.ipAddress,
  });

  int id;

  String actionType;

  String user;

  String workspace;

  String type;

  String description;

  DateTime timestamp;

  String? ipAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLog &&
    other.id == id &&
    other.actionType == actionType &&
    other.user == user &&
    other.workspace == workspace &&
    other.type == type &&
    other.description == description &&
    other.timestamp == timestamp &&
    other.ipAddress == ipAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (actionType.hashCode) +
    (user.hashCode) +
    (workspace.hashCode) +
    (type.hashCode) +
    (description.hashCode) +
    (timestamp.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode);

  @override
  String toString() => 'AuditLog[id=$id, actionType=$actionType, user=$user, workspace=$workspace, type=$type, description=$description, timestamp=$timestamp, ipAddress=$ipAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'action_type'] = this.actionType;
      json[r'user'] = this.user;
      json[r'workspace'] = this.workspace;
      json[r'type'] = this.type;
      json[r'description'] = this.description;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.ipAddress != null) {
      json[r'ip_address'] = this.ipAddress;
    } else {
      json[r'ip_address'] = null;
    }
    return json;
  }

  /// Returns a new [AuditLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLog(
        id: mapValueOfType<int>(json, r'id')!,
        actionType: mapValueOfType<String>(json, r'action_type')!,
        user: mapValueOfType<String>(json, r'user')!,
        workspace: mapValueOfType<String>(json, r'workspace')!,
        type: mapValueOfType<String>(json, r'type')!,
        description: mapValueOfType<String>(json, r'description')!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        ipAddress: mapValueOfType<String>(json, r'ip_address'),
      );
    }
    return null;
  }

  static List<AuditLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLog> mapFromJson(dynamic json) {
    final map = <String, AuditLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLog-objects as value to a dart map
  static Map<String, List<AuditLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'action_type',
    'user',
    'workspace',
    'type',
    'description',
    'timestamp',
    'ip_address',
  };
}

