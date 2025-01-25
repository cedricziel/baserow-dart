//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class RowCommentsNotificationMode {
  /// Returns a new [RowCommentsNotificationMode] instance.
  RowCommentsNotificationMode({
    required this.mode,
  });

  /// The mode to use to receive notifications for new comments on a table row.  * `all` - all * `mentions` - mentions
  Mode884Enum mode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RowCommentsNotificationMode &&
    other.mode == mode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mode.hashCode);

  @override
  String toString() => 'RowCommentsNotificationMode[mode=$mode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mode'] = this.mode;
    return json;
  }

  /// Returns a new [RowCommentsNotificationMode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RowCommentsNotificationMode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RowCommentsNotificationMode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RowCommentsNotificationMode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RowCommentsNotificationMode(
        mode: Mode884Enum.fromJson(json[r'mode'])!,
      );
    }
    return null;
  }

  static List<RowCommentsNotificationMode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RowCommentsNotificationMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RowCommentsNotificationMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RowCommentsNotificationMode> mapFromJson(dynamic json) {
    final map = <String, RowCommentsNotificationMode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RowCommentsNotificationMode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RowCommentsNotificationMode-objects as value to a dart map
  static Map<String, List<RowCommentsNotificationMode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RowCommentsNotificationMode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RowCommentsNotificationMode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mode',
  };
}

