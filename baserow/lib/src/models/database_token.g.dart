// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
