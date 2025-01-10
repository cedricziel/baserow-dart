import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class WorkspaceUser {
  final int id;
  final String name;
  final String email;
  final int workspace;
  final String? permissions;
  @JsonKey(name: 'created_on')
  final DateTime createdOn;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'to_be_deleted')
  final bool toBeDeleted;

  WorkspaceUser({
    required this.id,
    required this.name,
    required this.email,
    required this.workspace,
    this.permissions,
    required this.createdOn,
    required this.userId,
    required this.toBeDeleted,
  });

  factory WorkspaceUser.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceUserFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceUserToJson(this);
}

@JsonSerializable()
class Workspace {
  final int id;
  final String name;
  final List<WorkspaceUser> users;
  final int order;
  final String permissions;
  @JsonKey(name: 'unread_notifications_count')
  final int unreadNotificationsCount;
  @JsonKey(name: 'generative_ai_models_enabled')
  final Map<String, dynamic> generativeAiModelsEnabled;

  Workspace({
    required this.id,
    required this.name,
    required this.users,
    required this.order,
    required this.permissions,
    required this.unreadNotificationsCount,
    required this.generativeAiModelsEnabled,
  });

  factory Workspace.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceToJson(this);
}

/// Request body for creating a database token
@JsonSerializable()
class CreateDatabaseTokenRequest {
  final String name;
  final int workspace;

  CreateDatabaseTokenRequest({
    required this.name,
    required this.workspace,
  });

  factory CreateDatabaseTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDatabaseTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDatabaseTokenRequestToJson(this);
}

/// Represents permissions for a database token
@JsonSerializable()
class DatabaseTokenPermissions {
  final dynamic create;
  final dynamic read;
  final dynamic update;
  final dynamic delete;

  DatabaseTokenPermissions({
    required this.create,
    required this.read,
    required this.update,
    required this.delete,
  });

  factory DatabaseTokenPermissions.fromJson(Map<String, dynamic> json) =>
      _$DatabaseTokenPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseTokenPermissionsToJson(this);
}

/// Represents a database token that can be used to access tables
@JsonSerializable()
class DatabaseToken {
  final int id;
  final String name;
  final int workspace;
  final String key;
  final DatabaseTokenPermissions permissions;

  DatabaseToken({
    required this.id,
    required this.name,
    required this.workspace,
    required this.key,
    required this.permissions,
  });

  factory DatabaseToken.fromJson(Map<String, dynamic> json) =>
      _$DatabaseTokenFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseTokenToJson(this);
}

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

/// Represents data synchronization information for a table
@JsonSerializable()
class DataSync {
  final int id;
  final String type;
  @JsonKey(name: 'synced_properties')
  final List<Map<String, dynamic>> syncedProperties;
  @JsonKey(name: 'last_sync')
  final DateTime lastSync;
  @JsonKey(name: 'last_error')
  final String? lastError;

  DataSync({
    required this.id,
    required this.type,
    required this.syncedProperties,
    required this.lastSync,
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

/// Represents an application in Baserow
@JsonSerializable()
class Application {
  final int id;
  final String name;
  final int order;
  final String type;
  final Workspace workspace;
  @JsonKey(name: 'created_on')
  final DateTime createdOn;
  final List<Table> tables;

  Application({
    required this.id,
    required this.name,
    required this.order,
    required this.type,
    required this.workspace,
    required this.createdOn,
    required this.tables,
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
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
