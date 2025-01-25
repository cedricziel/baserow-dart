//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RowHistory {
  /// Returns a new [RowHistory] instance.
  RowHistory({
    required this.id,
    required this.actionType,
    required this.user,
    required this.timestamp,
    required this.before,
    required this.after,
    required this.fieldsMetadata,
  });

  int id;

  /// The type of the action that was performed.
  String actionType;

  /// The user that performed the action.
  RowHistoryUser user;

  /// The timestamp of the action that was performed.
  DateTime timestamp;

  /// The mapping between field_ids and values for the row before the action was performed.
  Object? before;

  /// The mapping between field_ids and values for the row after the action was performed.
  Object? after;

  /// The metadata of the fields that were changed.
  Object? fieldsMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RowHistory &&
    other.id == id &&
    other.actionType == actionType &&
    other.user == user &&
    other.timestamp == timestamp &&
    other.before == before &&
    other.after == after &&
    other.fieldsMetadata == fieldsMetadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (actionType.hashCode) +
    (user.hashCode) +
    (timestamp.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (after == null ? 0 : after!.hashCode) +
    (fieldsMetadata == null ? 0 : fieldsMetadata!.hashCode);

  @override
  String toString() => 'RowHistory[id=$id, actionType=$actionType, user=$user, timestamp=$timestamp, before=$before, after=$after, fieldsMetadata=$fieldsMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'action_type'] = this.actionType;
      json[r'user'] = this.user;
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.before != null) {
      json[r'before'] = this.before;
    } else {
      json[r'before'] = null;
    }
    if (this.after != null) {
      json[r'after'] = this.after;
    } else {
      json[r'after'] = null;
    }
    if (this.fieldsMetadata != null) {
      json[r'fields_metadata'] = this.fieldsMetadata;
    } else {
      json[r'fields_metadata'] = null;
    }
    return json;
  }

  /// Returns a new [RowHistory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RowHistory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RowHistory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RowHistory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RowHistory(
        id: mapValueOfType<int>(json, r'id')!,
        actionType: mapValueOfType<String>(json, r'action_type')!,
        user: RowHistoryUser.fromJson(json[r'user'])!,
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        before: mapValueOfType<Object>(json, r'before'),
        after: mapValueOfType<Object>(json, r'after'),
        fieldsMetadata: mapValueOfType<Object>(json, r'fields_metadata'),
      );
    }
    return null;
  }

  static List<RowHistory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowHistory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowHistory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RowHistory> mapFromJson(dynamic json) {
    final map = <String, RowHistory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RowHistory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RowHistory-objects as value to a dart map
  static Map<String, List<RowHistory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RowHistory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RowHistory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'action_type',
    'user',
    'timestamp',
    'before',
    'after',
    'fields_metadata',
  };
}

