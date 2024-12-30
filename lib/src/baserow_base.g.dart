// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baserow_base.dart';

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
