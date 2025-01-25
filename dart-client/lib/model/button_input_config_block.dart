//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ButtonInputConfigBlock {
  /// Returns a new [ButtonInputConfigBlock] instance.
  ButtonInputConfigBlock({
    this.loginButton,
    this.input,
  });

  /// Styles overrides for login_button
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ButtonThemeConfigBlock? loginButton;

  /// Styles overrides for input
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InputThemeConfigBlock? input;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ButtonInputConfigBlock &&
    other.loginButton == loginButton &&
    other.input == input;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loginButton == null ? 0 : loginButton!.hashCode) +
    (input == null ? 0 : input!.hashCode);

  @override
  String toString() => 'ButtonInputConfigBlock[loginButton=$loginButton, input=$input]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.loginButton != null) {
      json[r'login_button'] = this.loginButton;
    } else {
      json[r'login_button'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
    return json;
  }

  /// Returns a new [ButtonInputConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ButtonInputConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ButtonInputConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ButtonInputConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ButtonInputConfigBlock(
        loginButton: ButtonThemeConfigBlock.fromJson(json[r'login_button']),
        input: InputThemeConfigBlock.fromJson(json[r'input']),
      );
    }
    return null;
  }

  static List<ButtonInputConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ButtonInputConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ButtonInputConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ButtonInputConfigBlock> mapFromJson(dynamic json) {
    final map = <String, ButtonInputConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ButtonInputConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ButtonInputConfigBlock-objects as value to a dart map
  static Map<String, List<ButtonInputConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ButtonInputConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ButtonInputConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

