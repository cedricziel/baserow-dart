// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace.dart';

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
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => WorkspaceUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: (json['order'] as num?)?.toInt(),
      permissions: json['permissions'] as String?,
      unreadNotificationsCount:
          (json['unread_notifications_count'] as num?)?.toInt(),
      generativeAiModelsEnabled:
          json['generative_ai_models_enabled'] as Map<String, dynamic>,
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
