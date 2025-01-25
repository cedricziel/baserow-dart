// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      type: json['type'] as String,
      workspace: Workspace.fromJson(json['workspace'] as Map<String, dynamic>),
      createdOn: DateTime.parse(json['created_on'] as String),
      tables: (json['tables'] as List<dynamic>?)
              ?.map((e) => Table.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
      faviconFile: json['favicon_file'] == null
          ? null
          : File.fromJson(json['favicon_file'] as Map<String, dynamic>),
      loginPageId: (json['login_page_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'type': instance.type,
      'workspace': instance.workspace,
      'created_on': instance.createdOn.toIso8601String(),
      'tables': instance.tables,
      'pages': instance.pages,
      'theme': instance.theme,
      'favicon_file': instance.faviconFile,
      'login_page_id': instance.loginPageId,
    };
