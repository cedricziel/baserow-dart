// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceUser _$WorkspaceUserFromJson(Map<String, dynamic> json) =>
    WorkspaceUser(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      permissions: json['permissions'] as String,
    );

Map<String, dynamic> _$WorkspaceUserToJson(WorkspaceUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'permissions': instance.permissions,
    };

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) => Workspace(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => WorkspaceUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      applicationCount: (json['application_count'] as num).toInt(),
      rowCount: (json['row_count'] as num).toInt(),
      storageUsage: (json['storage_usage'] as num?)?.toInt(),
      seatsTaken: (json['seats_taken'] as num?)?.toInt(),
      freeUsers: (json['free_users'] as num?)?.toInt(),
      createdOn: DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$WorkspaceToJson(Workspace instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'users': instance.users,
      'application_count': instance.applicationCount,
      'row_count': instance.rowCount,
      'storage_usage': instance.storageUsage,
      'seats_taken': instance.seatsTaken,
      'free_users': instance.freeUsers,
      'created_on': instance.createdOn.toIso8601String(),
    };

CreateDatabaseTokenRequest _$CreateDatabaseTokenRequestFromJson(
        Map<String, dynamic> json) =>
    CreateDatabaseTokenRequest(
      name: json['name'] as String,
      workspace: (json['workspace'] as num).toInt(),
    );

Map<String, dynamic> _$CreateDatabaseTokenRequestToJson(
        CreateDatabaseTokenRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'workspace': instance.workspace,
    };

DatabaseTokenPermissions _$DatabaseTokenPermissionsFromJson(
        Map<String, dynamic> json) =>
    DatabaseTokenPermissions(
      create: json['create'],
      read: json['read'],
      update: json['update'],
      delete: json['delete'],
    );

Map<String, dynamic> _$DatabaseTokenPermissionsToJson(
        DatabaseTokenPermissions instance) =>
    <String, dynamic>{
      'create': instance.create,
      'read': instance.read,
      'update': instance.update,
      'delete': instance.delete,
    };

DatabaseToken _$DatabaseTokenFromJson(Map<String, dynamic> json) =>
    DatabaseToken(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      workspace: (json['workspace'] as num).toInt(),
      key: json['key'] as String,
      permissions: DatabaseTokenPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatabaseTokenToJson(DatabaseToken instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workspace': instance.workspace,
      'key': instance.key,
      'permissions': instance.permissions,
    };

Database _$DatabaseFromJson(Map<String, dynamic> json) => Database(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      order: (json['order'] as num).toInt(),
      primary: json['primary'] as bool,
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'order': instance.order,
      'primary': instance.primary,
    };
