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

FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) =>
    FileUploadResponse(
      url: json['url'] as String,
      thumbnails: (json['thumbnails'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ThumbnailInfo.fromJson(e as Map<String, dynamic>)),
      ),
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
      mimeType: json['mime_type'] as String,
      isImage: json['is_image'] as bool,
      imageWidth: (json['image_width'] as num?)?.toInt(),
      imageHeight: (json['image_height'] as num?)?.toInt(),
      uploadedAt: json['uploaded_at'] as String,
    );

Map<String, dynamic> _$FileUploadResponseToJson(FileUploadResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnails': instance.thumbnails,
      'name': instance.name,
      'size': instance.size,
      'mime_type': instance.mimeType,
      'is_image': instance.isImage,
      'image_width': instance.imageWidth,
      'image_height': instance.imageHeight,
      'uploaded_at': instance.uploadedAt,
    };

ThumbnailInfo _$ThumbnailInfoFromJson(Map<String, dynamic> json) =>
    ThumbnailInfo(
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ThumbnailInfoToJson(ThumbnailInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
