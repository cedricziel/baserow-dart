//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RowComment {
  /// Returns a new [RowComment] instance.
  RowComment({
    required this.id,
    required this.userId,
    this.firstName,
    required this.tableId,
    required this.rowId,
    required this.message,
    required this.createdOn,
    required this.updatedOn,
    required this.edited,
    this.trashed,
  });

  int id;

  /// The user who made the comment.
  int? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// The table the row this comment is for is found in. 
  int tableId;

  /// The id of the row the comment is for.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int rowId;

  String message;

  DateTime createdOn;

  DateTime updatedOn;

  String edited;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? trashed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RowComment &&
    other.id == id &&
    other.userId == userId &&
    other.firstName == firstName &&
    other.tableId == tableId &&
    other.rowId == rowId &&
    other.message == message &&
    other.createdOn == createdOn &&
    other.updatedOn == updatedOn &&
    other.edited == edited &&
    other.trashed == trashed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (tableId.hashCode) +
    (rowId.hashCode) +
    (message.hashCode) +
    (createdOn.hashCode) +
    (updatedOn.hashCode) +
    (edited.hashCode) +
    (trashed == null ? 0 : trashed!.hashCode);

  @override
  String toString() => 'RowComment[id=$id, userId=$userId, firstName=$firstName, tableId=$tableId, rowId=$rowId, message=$message, createdOn=$createdOn, updatedOn=$updatedOn, edited=$edited, trashed=$trashed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
      json[r'table_id'] = this.tableId;
      json[r'row_id'] = this.rowId;
      json[r'message'] = this.message;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'updated_on'] = this.updatedOn.toUtc().toIso8601String();
      json[r'edited'] = this.edited;
    if (this.trashed != null) {
      json[r'trashed'] = this.trashed;
    } else {
      json[r'trashed'] = null;
    }
    return json;
  }

  /// Returns a new [RowComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RowComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RowComment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RowComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RowComment(
        id: mapValueOfType<int>(json, r'id')!,
        userId: mapValueOfType<int>(json, r'user_id'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        tableId: mapValueOfType<int>(json, r'table_id')!,
        rowId: mapValueOfType<int>(json, r'row_id')!,
        message: mapValueOfType<String>(json, r'message')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        updatedOn: mapDateTime(json, r'updated_on', r'')!,
        edited: mapValueOfType<String>(json, r'edited')!,
        trashed: mapValueOfType<bool>(json, r'trashed'),
      );
    }
    return null;
  }

  static List<RowComment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RowComment> mapFromJson(dynamic json) {
    final map = <String, RowComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RowComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RowComment-objects as value to a dart map
  static Map<String, List<RowComment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RowComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RowComment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'table_id',
    'row_id',
    'message',
    'created_on',
    'updated_on',
    'edited',
  };
}

