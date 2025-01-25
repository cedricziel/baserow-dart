//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ButtonLinkConfigBlock {
  /// Returns a new [ButtonLinkConfigBlock] instance.
  ButtonLinkConfigBlock({
    this.button,
    this.link,
  });

  /// Styles overrides for button
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ButtonThemeConfigBlock? button;

  /// Styles overrides for link
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LinkThemeConfigBlock? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ButtonLinkConfigBlock &&
    other.button == button &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (button == null ? 0 : button!.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'ButtonLinkConfigBlock[button=$button, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.button != null) {
      json[r'button'] = this.button;
    } else {
      json[r'button'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [ButtonLinkConfigBlock] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ButtonLinkConfigBlock? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ButtonLinkConfigBlock[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ButtonLinkConfigBlock[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ButtonLinkConfigBlock(
        button: ButtonThemeConfigBlock.fromJson(json[r'button']),
        link: LinkThemeConfigBlock.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<ButtonLinkConfigBlock> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ButtonLinkConfigBlock>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ButtonLinkConfigBlock.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ButtonLinkConfigBlock> mapFromJson(dynamic json) {
    final map = <String, ButtonLinkConfigBlock>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ButtonLinkConfigBlock.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ButtonLinkConfigBlock-objects as value to a dart map
  static Map<String, List<ButtonLinkConfigBlock>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ButtonLinkConfigBlock>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ButtonLinkConfigBlock.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

