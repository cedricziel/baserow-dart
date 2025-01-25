//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class LocalBaserowDatabaseApplication {
  /// Returns a new [LocalBaserowDatabaseApplication] instance.
  LocalBaserowDatabaseApplication({
    required this.id,
    required this.name,
    required this.order,
    required this.type,
    required this.workspace,
    required this.createdOn,
    this.tables = const [],
    this.views = const [],
  });

  int id;

  String name;

  /// Minimum value: 0
  /// Maximum value: 2147483647
  int order;

  String type;

  /// The workspace that the application belongs to.
  Workspace workspace;

  DateTime createdOn;

  /// This field is specific to the `database` application and contains an array of tables that are in the database.
  List<TableSerializerWithFields> tables;

  /// This field is specific to the `database` application and contains an array of views that are in the tables.
  List<LocalBaserowView> views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalBaserowDatabaseApplication &&
    other.id == id &&
    other.name == name &&
    other.order == order &&
    other.type == type &&
    other.workspace == workspace &&
    other.createdOn == createdOn &&
    _deepEquality.equals(other.tables, tables) &&
    _deepEquality.equals(other.views, views);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (order.hashCode) +
    (type.hashCode) +
    (workspace.hashCode) +
    (createdOn.hashCode) +
    (tables.hashCode) +
    (views.hashCode);

  @override
  String toString() => 'LocalBaserowDatabaseApplication[id=$id, name=$name, order=$order, type=$type, workspace=$workspace, createdOn=$createdOn, tables=$tables, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'order'] = this.order;
      json[r'type'] = this.type;
      json[r'workspace'] = this.workspace;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'tables'] = this.tables;
      json[r'views'] = this.views;
    return json;
  }

  /// Returns a new [LocalBaserowDatabaseApplication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalBaserowDatabaseApplication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LocalBaserowDatabaseApplication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LocalBaserowDatabaseApplication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LocalBaserowDatabaseApplication(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        order: mapValueOfType<int>(json, r'order')!,
        type: mapValueOfType<String>(json, r'type')!,
        workspace: Workspace.fromJson(json[r'workspace'])!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        tables: TableSerializerWithFields.listFromJson(json[r'tables']),
        views: LocalBaserowView.listFromJson(json[r'views']),
      );
    }
    return null;
  }

  static List<LocalBaserowDatabaseApplication> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalBaserowDatabaseApplication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalBaserowDatabaseApplication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalBaserowDatabaseApplication> mapFromJson(dynamic json) {
    final map = <String, LocalBaserowDatabaseApplication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalBaserowDatabaseApplication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalBaserowDatabaseApplication-objects as value to a dart map
  static Map<String, List<LocalBaserowDatabaseApplication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalBaserowDatabaseApplication>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalBaserowDatabaseApplication.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'order',
    'type',
    'workspace',
    'created_on',
    'tables',
    'views',
  };
}

