// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceUser _$WorkspaceUserFromJson(Map<String, dynamic> json) =>
    WorkspaceUser(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      workspace: (json['workspace'] as num).toInt(),
      permissions: json['permissions'] as String?,
      createdOn: DateTime.parse(json['created_on'] as String),
      userId: (json['user_id'] as num).toInt(),
      toBeDeleted: json['to_be_deleted'] as bool,
    );

Map<String, dynamic> _$WorkspaceUserToJson(WorkspaceUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'workspace': instance.workspace,
      'permissions': instance.permissions,
      'created_on': instance.createdOn.toIso8601String(),
      'user_id': instance.userId,
      'to_be_deleted': instance.toBeDeleted,
    };

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) => Workspace(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => WorkspaceUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: (json['order'] as num).toInt(),
      permissions: json['permissions'] as String,
      unreadNotificationsCount:
          (json['unread_notifications_count'] as num).toInt(),
      generativeAiModelsEnabled: json['generative_ai_models_enabled'] as String,
    );

Map<String, dynamic> _$WorkspaceToJson(Workspace instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'users': instance.users,
      'order': instance.order,
      'permissions': instance.permissions,
      'unread_notifications_count': instance.unreadNotificationsCount,
      'generative_ai_models_enabled': instance.generativeAiModelsEnabled,
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
