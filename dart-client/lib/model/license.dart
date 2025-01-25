//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class License {
  /// Returns a new [License] instance.
  License({
    required this.id,
    required this.licenseId,
    required this.isActive,
    this.lastCheck,
    required this.validFrom,
    required this.validThrough,
    required this.freeUsersCount,
    required this.seatsTaken,
    required this.seats,
    required this.productCode,
    required this.issuedOn,
    required this.issuedToEmail,
    required this.issuedToName,
  });

  int id;

  /// Unique identifier of the license.
  String licenseId;

  /// Indicates if the backend deems the license valid.
  bool isActive;

  DateTime? lastCheck;

  /// From which timestamp the license becomes active.
  DateTime validFrom;

  /// Until which timestamp the license is active.
  DateTime validThrough;

  /// The amount of free users that are currently using the license.
  int freeUsersCount;

  /// The amount of users that are currently using the license.
  int seatsTaken;

  /// The maximum amount of users that can use the license.
  int seats;

  /// The product code that indicates what the license unlocks.
  String productCode;

  /// The date when the license was issued. It could be that a new license is issued with the same `license_id` because it was updated. In that case, the one that has been issued last should be used.
  DateTime issuedOn;

  /// Indicates to which email address the license has been issued.
  String issuedToEmail;

  /// Indicates to whom the license has been issued.
  String issuedToName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is License &&
    other.id == id &&
    other.licenseId == licenseId &&
    other.isActive == isActive &&
    other.lastCheck == lastCheck &&
    other.validFrom == validFrom &&
    other.validThrough == validThrough &&
    other.freeUsersCount == freeUsersCount &&
    other.seatsTaken == seatsTaken &&
    other.seats == seats &&
    other.productCode == productCode &&
    other.issuedOn == issuedOn &&
    other.issuedToEmail == issuedToEmail &&
    other.issuedToName == issuedToName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (licenseId.hashCode) +
    (isActive.hashCode) +
    (lastCheck == null ? 0 : lastCheck!.hashCode) +
    (validFrom.hashCode) +
    (validThrough.hashCode) +
    (freeUsersCount.hashCode) +
    (seatsTaken.hashCode) +
    (seats.hashCode) +
    (productCode.hashCode) +
    (issuedOn.hashCode) +
    (issuedToEmail.hashCode) +
    (issuedToName.hashCode);

  @override
  String toString() => 'License[id=$id, licenseId=$licenseId, isActive=$isActive, lastCheck=$lastCheck, validFrom=$validFrom, validThrough=$validThrough, freeUsersCount=$freeUsersCount, seatsTaken=$seatsTaken, seats=$seats, productCode=$productCode, issuedOn=$issuedOn, issuedToEmail=$issuedToEmail, issuedToName=$issuedToName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'license_id'] = this.licenseId;
      json[r'is_active'] = this.isActive;
    if (this.lastCheck != null) {
      json[r'last_check'] = this.lastCheck!.toUtc().toIso8601String();
    } else {
      json[r'last_check'] = null;
    }
      json[r'valid_from'] = this.validFrom.toUtc().toIso8601String();
      json[r'valid_through'] = this.validThrough.toUtc().toIso8601String();
      json[r'free_users_count'] = this.freeUsersCount;
      json[r'seats_taken'] = this.seatsTaken;
      json[r'seats'] = this.seats;
      json[r'product_code'] = this.productCode;
      json[r'issued_on'] = this.issuedOn.toUtc().toIso8601String();
      json[r'issued_to_email'] = this.issuedToEmail;
      json[r'issued_to_name'] = this.issuedToName;
    return json;
  }

  /// Returns a new [License] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static License? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "License[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "License[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return License(
        id: mapValueOfType<int>(json, r'id')!,
        licenseId: mapValueOfType<String>(json, r'license_id')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
        lastCheck: mapDateTime(json, r'last_check', r''),
        validFrom: mapDateTime(json, r'valid_from', r'')!,
        validThrough: mapDateTime(json, r'valid_through', r'')!,
        freeUsersCount: mapValueOfType<int>(json, r'free_users_count')!,
        seatsTaken: mapValueOfType<int>(json, r'seats_taken')!,
        seats: mapValueOfType<int>(json, r'seats')!,
        productCode: mapValueOfType<String>(json, r'product_code')!,
        issuedOn: mapDateTime(json, r'issued_on', r'')!,
        issuedToEmail: mapValueOfType<String>(json, r'issued_to_email')!,
        issuedToName: mapValueOfType<String>(json, r'issued_to_name')!,
      );
    }
    return null;
  }

  static List<License> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <License>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = License.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, License> mapFromJson(dynamic json) {
    final map = <String, License>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = License.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of License-objects as value to a dart map
  static Map<String, List<License>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<License>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = License.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'license_id',
    'is_active',
    'valid_from',
    'valid_through',
    'free_users_count',
    'seats_taken',
    'seats',
    'product_code',
    'issued_on',
    'issued_to_email',
    'issued_to_name',
  };
}

