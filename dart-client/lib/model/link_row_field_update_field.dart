//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LinkRowFieldUpdateField {
  /// Returns a new [LinkRowFieldUpdateField] instance.
  LinkRowFieldUpdateField({
    this.name,
    this.type,
    this.description,
    this.linkRowTableId,
    this.linkRowTable,
    this.hasRelatedField,
    this.linkRowLimitSelectionViewId = -1,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type6ebEnum? type;

  /// Field description
  String? description;

  /// The id of the linked table.
  int? linkRowTableId;

  /// (Deprecated) The id of the linked table.
  int? linkRowTable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasRelatedField;

  /// The ID of the view in the related table where row selection must be limited to.
  int? linkRowLimitSelectionViewId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkRowFieldUpdateField &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.linkRowTableId == linkRowTableId &&
    other.linkRowTable == linkRowTable &&
    other.hasRelatedField == hasRelatedField &&
    other.linkRowLimitSelectionViewId == linkRowLimitSelectionViewId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (linkRowTableId == null ? 0 : linkRowTableId!.hashCode) +
    (linkRowTable == null ? 0 : linkRowTable!.hashCode) +
    (hasRelatedField == null ? 0 : hasRelatedField!.hashCode) +
    (linkRowLimitSelectionViewId == null ? 0 : linkRowLimitSelectionViewId!.hashCode);

  @override
  String toString() => 'LinkRowFieldUpdateField[name=$name, type=$type, description=$description, linkRowTableId=$linkRowTableId, linkRowTable=$linkRowTable, hasRelatedField=$hasRelatedField, linkRowLimitSelectionViewId=$linkRowLimitSelectionViewId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.linkRowTableId != null) {
      json[r'link_row_table_id'] = this.linkRowTableId;
    } else {
      json[r'link_row_table_id'] = null;
    }
    if (this.linkRowTable != null) {
      json[r'link_row_table'] = this.linkRowTable;
    } else {
      json[r'link_row_table'] = null;
    }
    if (this.hasRelatedField != null) {
      json[r'has_related_field'] = this.hasRelatedField;
    } else {
      json[r'has_related_field'] = null;
    }
    if (this.linkRowLimitSelectionViewId != null) {
      json[r'link_row_limit_selection_view_id'] = this.linkRowLimitSelectionViewId;
    } else {
      json[r'link_row_limit_selection_view_id'] = null;
    }
    return json;
  }

  /// Returns a new [LinkRowFieldUpdateField] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkRowFieldUpdateField? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkRowFieldUpdateField[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkRowFieldUpdateField[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkRowFieldUpdateField(
        name: mapValueOfType<String>(json, r'name'),
        type: Type6ebEnum.fromJson(json[r'type']),
        description: mapValueOfType<String>(json, r'description'),
        linkRowTableId: mapValueOfType<int>(json, r'link_row_table_id'),
        linkRowTable: mapValueOfType<int>(json, r'link_row_table'),
        hasRelatedField: mapValueOfType<bool>(json, r'has_related_field'),
        linkRowLimitSelectionViewId: mapValueOfType<int>(json, r'link_row_limit_selection_view_id') ?? -1,
      );
    }
    return null;
  }

  static List<LinkRowFieldUpdateField> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkRowFieldUpdateField>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkRowFieldUpdateField.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkRowFieldUpdateField> mapFromJson(dynamic json) {
    final map = <String, LinkRowFieldUpdateField>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkRowFieldUpdateField.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkRowFieldUpdateField-objects as value to a dart map
  static Map<String, List<LinkRowFieldUpdateField>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkRowFieldUpdateField>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkRowFieldUpdateField.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

