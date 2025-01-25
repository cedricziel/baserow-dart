//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class Snapshot {
  /// Returns a new [Snapshot] instance.
  Snapshot({
    required this.id,
    required this.name,
    required this.snapshotFromApplication,
    required this.createdAt,
    required this.createdBy,
  });

  int id;

  String name;

  int snapshotFromApplication;

  DateTime createdAt;

  User createdBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Snapshot &&
    other.id == id &&
    other.name == name &&
    other.snapshotFromApplication == snapshotFromApplication &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (snapshotFromApplication.hashCode) +
    (createdAt.hashCode) +
    (createdBy.hashCode);

  @override
  String toString() => 'Snapshot[id=$id, name=$name, snapshotFromApplication=$snapshotFromApplication, createdAt=$createdAt, createdBy=$createdBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'snapshot_from_application'] = this.snapshotFromApplication;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'created_by'] = this.createdBy;
    return json;
  }

  /// Returns a new [Snapshot] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Snapshot? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Snapshot[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Snapshot[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Snapshot(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        snapshotFromApplication: mapValueOfType<int>(json, r'snapshot_from_application')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        createdBy: User.fromJson(json[r'created_by'])!,
      );
    }
    return null;
  }

  static List<Snapshot> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Snapshot>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Snapshot.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Snapshot> mapFromJson(dynamic json) {
    final map = <String, Snapshot>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Snapshot.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Snapshot-objects as value to a dart map
  static Map<String, List<Snapshot>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Snapshot>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Snapshot.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'snapshot_from_application',
    'created_at',
    'created_by',
  };
}

