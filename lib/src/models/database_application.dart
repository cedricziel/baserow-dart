import 'package:json_annotation/json_annotation.dart';

part 'database_application.g.dart';

/// Represents a Baserow database
@JsonSerializable()
class Database {
  final int id;
  final String name;
  final String type;

  Database({
    required this.id,
    required this.name,
    required this.type,
  });

  factory Database.fromJson(Map<String, dynamic> json) =>
      _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

/// Represents a synchronized property in a data sync configuration
@JsonSerializable()
class DataSyncProperty {
  @JsonKey(name: 'field_id')
  final int fieldId;
  final String key;
  @JsonKey(name: 'unique_primary')
  final bool uniquePrimary;

  DataSyncProperty({
    required this.fieldId,
    required this.key,
    required this.uniquePrimary,
  });

  factory DataSyncProperty.fromJson(Map<String, dynamic> json) =>
      _$DataSyncPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$DataSyncPropertyToJson(this);
}

/// Represents data synchronization information for a table
@JsonSerializable()
class DataSync {
  final int id;
  final String type;
  @JsonKey(name: 'synced_properties')
  final List<DataSyncProperty> syncedProperties;
  @JsonKey(name: 'last_sync')
  final DateTime? lastSync;
  @JsonKey(name: 'last_error')
  final String? lastError;

  DataSync({
    required this.id,
    required this.type,
    required this.syncedProperties,
    this.lastSync,
    this.lastError,
  });

  factory DataSync.fromJson(Map<String, dynamic> json) =>
      _$DataSyncFromJson(json);

  Map<String, dynamic> toJson() => _$DataSyncToJson(this);
}

/// Represents a table within a Baserow database
@JsonSerializable()
class Table {
  final int id;
  final String name;
  final int order;
  @JsonKey(name: 'database_id')
  final int databaseId;
  @JsonKey(name: 'data_sync')
  final DataSync? dataSync;
  final List<Field>? fields;

  Table({
    required this.id,
    required this.name,
    required this.order,
    required this.databaseId,
    this.dataSync,
    this.fields,
  });

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);

  Map<String, dynamic> toJson() => _$TableToJson(this);
}

/// Represents a field within a Baserow table
@JsonSerializable()
class Field {
  final int id;
  final String name;
  final String type;
  final int order;
  final bool primary;

  Field({
    required this.id,
    required this.name,
    required this.type,
    required this.order,
    required this.primary,
  });

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
