// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

DataSyncProperty _$DataSyncPropertyFromJson(Map<String, dynamic> json) =>
    DataSyncProperty(
      fieldId: (json['field_id'] as num).toInt(),
      key: json['key'] as String,
      uniquePrimary: json['unique_primary'] as bool,
    );

Map<String, dynamic> _$DataSyncPropertyToJson(DataSyncProperty instance) =>
    <String, dynamic>{
      'field_id': instance.fieldId,
      'key': instance.key,
      'unique_primary': instance.uniquePrimary,
    };

DataSync _$DataSyncFromJson(Map<String, dynamic> json) => DataSync(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      syncedProperties: (json['synced_properties'] as List<dynamic>)
          .map((e) => DataSyncProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastSync: json['last_sync'] == null
          ? null
          : DateTime.parse(json['last_sync'] as String),
      lastError: json['last_error'] as String?,
    );

Map<String, dynamic> _$DataSyncToJson(DataSync instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'synced_properties': instance.syncedProperties,
      'last_sync': instance.lastSync?.toIso8601String(),
      'last_error': instance.lastError,
    };

Table _$TableFromJson(Map<String, dynamic> json) => Table(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      databaseId: (json['database_id'] as num).toInt(),
      dataSync: json['data_sync'] == null
          ? null
          : DataSync.fromJson(json['data_sync'] as Map<String, dynamic>),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableToJson(Table instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'database_id': instance.databaseId,
      'data_sync': instance.dataSync,
      'fields': instance.fields,
    };

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      order: (json['order'] as num).toInt(),
      primary: json['primary'] as bool? ?? false,
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'order': instance.order,
      'primary': instance.primary,
    };
