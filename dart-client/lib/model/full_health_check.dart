//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class FullHealthCheck {
  /// Returns a new [FullHealthCheck] instance.
  FullHealthCheck({
    required this.passing,
    this.checks = const {},
    required this.celeryQueueSize,
    required this.celeryExportQueueSize,
  });

  /// False if any of the critical service health checks are failing, true otherwise.
  bool passing;

  /// An object keyed by the name of the health check and the value being the result.
  Map<String, String> checks;

  /// The number of enqueued celery tasks.
  int celeryQueueSize;

  /// The number of enqueued celery export worker tasks.
  int celeryExportQueueSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FullHealthCheck &&
    other.passing == passing &&
    _deepEquality.equals(other.checks, checks) &&
    other.celeryQueueSize == celeryQueueSize &&
    other.celeryExportQueueSize == celeryExportQueueSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (passing.hashCode) +
    (checks.hashCode) +
    (celeryQueueSize.hashCode) +
    (celeryExportQueueSize.hashCode);

  @override
  String toString() => 'FullHealthCheck[passing=$passing, checks=$checks, celeryQueueSize=$celeryQueueSize, celeryExportQueueSize=$celeryExportQueueSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'passing'] = this.passing;
      json[r'checks'] = this.checks;
      json[r'celery_queue_size'] = this.celeryQueueSize;
      json[r'celery_export_queue_size'] = this.celeryExportQueueSize;
    return json;
  }

  /// Returns a new [FullHealthCheck] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FullHealthCheck? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FullHealthCheck[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FullHealthCheck[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FullHealthCheck(
        passing: mapValueOfType<bool>(json, r'passing')!,
        checks: mapCastOfType<String, String>(json, r'checks')!,
        celeryQueueSize: mapValueOfType<int>(json, r'celery_queue_size')!,
        celeryExportQueueSize: mapValueOfType<int>(json, r'celery_export_queue_size')!,
      );
    }
    return null;
  }

  static List<FullHealthCheck> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FullHealthCheck>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FullHealthCheck.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FullHealthCheck> mapFromJson(dynamic json) {
    final map = <String, FullHealthCheck>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FullHealthCheck.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FullHealthCheck-objects as value to a dart map
  static Map<String, List<FullHealthCheck>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FullHealthCheck>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FullHealthCheck.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'passing',
    'checks',
    'celery_queue_size',
    'celery_export_queue_size',
  };
}

