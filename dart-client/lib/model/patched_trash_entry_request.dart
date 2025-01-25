//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class PatchedTrashEntryRequest {
  /// Returns a new [PatchedTrashEntryRequest] instance.
  PatchedTrashEntryRequest({
    this.trashItemId,
    this.parentTrashItemId,
    this.trashItemType,
  });

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trashItemId;

  /// Minimum value: 0
  int? parentTrashItemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrashItemTypeEnum? trashItemType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedTrashEntryRequest &&
    other.trashItemId == trashItemId &&
    other.parentTrashItemId == parentTrashItemId &&
    other.trashItemType == trashItemType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trashItemId == null ? 0 : trashItemId!.hashCode) +
    (parentTrashItemId == null ? 0 : parentTrashItemId!.hashCode) +
    (trashItemType == null ? 0 : trashItemType!.hashCode);

  @override
  String toString() => 'PatchedTrashEntryRequest[trashItemId=$trashItemId, parentTrashItemId=$parentTrashItemId, trashItemType=$trashItemType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.trashItemId != null) {
      json[r'trash_item_id'] = this.trashItemId;
    } else {
      json[r'trash_item_id'] = null;
    }
    if (this.parentTrashItemId != null) {
      json[r'parent_trash_item_id'] = this.parentTrashItemId;
    } else {
      json[r'parent_trash_item_id'] = null;
    }
    if (this.trashItemType != null) {
      json[r'trash_item_type'] = this.trashItemType;
    } else {
      json[r'trash_item_type'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedTrashEntryRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedTrashEntryRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedTrashEntryRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedTrashEntryRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedTrashEntryRequest(
        trashItemId: mapValueOfType<int>(json, r'trash_item_id'),
        parentTrashItemId: mapValueOfType<int>(json, r'parent_trash_item_id'),
        trashItemType: TrashItemTypeEnum.fromJson(json[r'trash_item_type']),
      );
    }
    return null;
  }

  static List<PatchedTrashEntryRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedTrashEntryRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedTrashEntryRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedTrashEntryRequest> mapFromJson(dynamic json) {
    final map = <String, PatchedTrashEntryRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedTrashEntryRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedTrashEntryRequest-objects as value to a dart map
  static Map<String, List<PatchedTrashEntryRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedTrashEntryRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedTrashEntryRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

