//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class TrashContents {
  /// Returns a new [TrashContents] instance.
  TrashContents({
    required this.id,
    required this.userWhoTrashed,
    required this.trashItemType,
    required this.trashItemId,
    required this.parentTrashItemId,
    required this.trashedAt,
    this.application,
    required this.workspace,
    required this.name,
    this.names = const [],
    this.parentName,
  });

  int id;

  String userWhoTrashed;

  String trashItemType;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int trashItemId;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int? parentTrashItemId;

  DateTime trashedAt;

  int? application;

  int workspace;

  String name;

  List<String>? names;

  String? parentName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrashContents &&
    other.id == id &&
    other.userWhoTrashed == userWhoTrashed &&
    other.trashItemType == trashItemType &&
    other.trashItemId == trashItemId &&
    other.parentTrashItemId == parentTrashItemId &&
    other.trashedAt == trashedAt &&
    other.application == application &&
    other.workspace == workspace &&
    other.name == name &&
    _deepEquality.equals(other.names, names) &&
    other.parentName == parentName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userWhoTrashed.hashCode) +
    (trashItemType.hashCode) +
    (trashItemId.hashCode) +
    (parentTrashItemId == null ? 0 : parentTrashItemId!.hashCode) +
    (trashedAt.hashCode) +
    (application == null ? 0 : application!.hashCode) +
    (workspace.hashCode) +
    (name.hashCode) +
    (names == null ? 0 : names!.hashCode) +
    (parentName == null ? 0 : parentName!.hashCode);

  @override
  String toString() => 'TrashContents[id=$id, userWhoTrashed=$userWhoTrashed, trashItemType=$trashItemType, trashItemId=$trashItemId, parentTrashItemId=$parentTrashItemId, trashedAt=$trashedAt, application=$application, workspace=$workspace, name=$name, names=$names, parentName=$parentName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_who_trashed'] = this.userWhoTrashed;
      json[r'trash_item_type'] = this.trashItemType;
      json[r'trash_item_id'] = this.trashItemId;
    if (this.parentTrashItemId != null) {
      json[r'parent_trash_item_id'] = this.parentTrashItemId;
    } else {
      json[r'parent_trash_item_id'] = null;
    }
      json[r'trashed_at'] = this.trashedAt.toUtc().toIso8601String();
    if (this.application != null) {
      json[r'application'] = this.application;
    } else {
      json[r'application'] = null;
    }
      json[r'workspace'] = this.workspace;
      json[r'name'] = this.name;
    if (this.names != null) {
      json[r'names'] = this.names;
    } else {
      json[r'names'] = null;
    }
    if (this.parentName != null) {
      json[r'parent_name'] = this.parentName;
    } else {
      json[r'parent_name'] = null;
    }
    return json;
  }

  /// Returns a new [TrashContents] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrashContents? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrashContents[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrashContents[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrashContents(
        id: mapValueOfType<int>(json, r'id')!,
        userWhoTrashed: mapValueOfType<String>(json, r'user_who_trashed')!,
        trashItemType: mapValueOfType<String>(json, r'trash_item_type')!,
        trashItemId: mapValueOfType<int>(json, r'trash_item_id')!,
        parentTrashItemId: mapValueOfType<int>(json, r'parent_trash_item_id'),
        trashedAt: mapDateTime(json, r'trashed_at', r'')!,
        application: mapValueOfType<int>(json, r'application'),
        workspace: mapValueOfType<int>(json, r'workspace')!,
        name: mapValueOfType<String>(json, r'name')!,
        names: json[r'names'] is Iterable
            ? (json[r'names'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        parentName: mapValueOfType<String>(json, r'parent_name'),
      );
    }
    return null;
  }

  static List<TrashContents> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrashContents>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrashContents.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrashContents> mapFromJson(dynamic json) {
    final map = <String, TrashContents>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrashContents.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrashContents-objects as value to a dart map
  static Map<String, List<TrashContents>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrashContents>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrashContents.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_who_trashed',
    'trash_item_type',
    'trash_item_id',
    'parent_trash_item_id',
    'trashed_at',
    'workspace',
    'name',
  };
}

