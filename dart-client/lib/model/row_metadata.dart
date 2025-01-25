//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RowMetadata {
  /// Returns a new [RowMetadata] instance.
  RowMetadata({
    this.rowCommentCount,
    this.rowCommentsNotificationMode,
  });

  /// How many row comments exist for this row.
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rowCommentCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RowCommentsNotificationModeEnum? rowCommentsNotificationMode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RowMetadata &&
    other.rowCommentCount == rowCommentCount &&
    other.rowCommentsNotificationMode == rowCommentsNotificationMode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rowCommentCount == null ? 0 : rowCommentCount!.hashCode) +
    (rowCommentsNotificationMode == null ? 0 : rowCommentsNotificationMode!.hashCode);

  @override
  String toString() => 'RowMetadata[rowCommentCount=$rowCommentCount, rowCommentsNotificationMode=$rowCommentsNotificationMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rowCommentCount != null) {
      json[r'row_comment_count'] = this.rowCommentCount;
    } else {
      json[r'row_comment_count'] = null;
    }
    if (this.rowCommentsNotificationMode != null) {
      json[r'row_comments_notification_mode'] = this.rowCommentsNotificationMode;
    } else {
      json[r'row_comments_notification_mode'] = null;
    }
    return json;
  }

  /// Returns a new [RowMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RowMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RowMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RowMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RowMetadata(
        rowCommentCount: mapValueOfType<int>(json, r'row_comment_count'),
        rowCommentsNotificationMode: RowCommentsNotificationModeEnum.fromJson(json[r'row_comments_notification_mode']),
      );
    }
    return null;
  }

  static List<RowMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RowMetadata> mapFromJson(dynamic json) {
    final map = <String, RowMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RowMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RowMetadata-objects as value to a dart map
  static Map<String, List<RowMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RowMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RowMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

