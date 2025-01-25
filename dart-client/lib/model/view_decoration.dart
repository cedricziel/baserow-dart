//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ViewDecoration {
  /// Returns a new [ViewDecoration] instance.
  ViewDecoration({
    required this.id,
    this.view,
    this.type,
    this.valueProviderType,
    this.valueProviderConf,
    this.order,
  });

  int id;

  /// The view to which the decoration applies. Each view can have his own decorations.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? view;

  /// The decorator type. This is then interpreted by the frontend to display the decoration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// The value provider type that gives the value to the decorator.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? valueProviderType;

  /// The configuration consumed by the value provider.
  Object? valueProviderConf;

  /// The position of the decorator has within the view, lowest first. If there is another decorator with the same order value then the decorator with the lowest id must be shown first.
  ///
  /// Minimum value: -32768
  /// Maximum value: 32767
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ViewDecoration &&
    other.id == id &&
    other.view == view &&
    other.type == type &&
    other.valueProviderType == valueProviderType &&
    other.valueProviderConf == valueProviderConf &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (view == null ? 0 : view!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (valueProviderType == null ? 0 : valueProviderType!.hashCode) +
    (valueProviderConf == null ? 0 : valueProviderConf!.hashCode) +
    (order == null ? 0 : order!.hashCode);

  @override
  String toString() => 'ViewDecoration[id=$id, view=$view, type=$type, valueProviderType=$valueProviderType, valueProviderConf=$valueProviderConf, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.view != null) {
      json[r'view'] = this.view;
    } else {
      json[r'view'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.valueProviderType != null) {
      json[r'value_provider_type'] = this.valueProviderType;
    } else {
      json[r'value_provider_type'] = null;
    }
    if (this.valueProviderConf != null) {
      json[r'value_provider_conf'] = this.valueProviderConf;
    } else {
      json[r'value_provider_conf'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    return json;
  }

  /// Returns a new [ViewDecoration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ViewDecoration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ViewDecoration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ViewDecoration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ViewDecoration(
        id: mapValueOfType<int>(json, r'id')!,
        view: mapValueOfType<int>(json, r'view'),
        type: mapValueOfType<String>(json, r'type'),
        valueProviderType: mapValueOfType<String>(json, r'value_provider_type'),
        valueProviderConf: mapValueOfType<Object>(json, r'value_provider_conf'),
        order: mapValueOfType<int>(json, r'order'),
      );
    }
    return null;
  }

  static List<ViewDecoration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ViewDecoration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ViewDecoration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ViewDecoration> mapFromJson(dynamic json) {
    final map = <String, ViewDecoration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ViewDecoration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ViewDecoration-objects as value to a dart map
  static Map<String, List<ViewDecoration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ViewDecoration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ViewDecoration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

