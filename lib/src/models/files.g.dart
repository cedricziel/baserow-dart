// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

File _$FileFromJson(Map<String, dynamic> json) => File(
      size: (json['size'] as num).toInt(),
      mimeType: json['mime_type'] as String,
      isImage: json['is_image'] as bool,
      imageWidth: (json['image_width'] as num?)?.toInt(),
      imageHeight: (json['image_height'] as num?)?.toInt(),
      uploadedAt: DateTime.parse(json['uploaded_at'] as String),
      url: json['url'] as String,
      thumbnails: json['thumbnails'] as Map<String, dynamic>?,
      name: json['name'] as String,
      originalName: json['original_name'] as String,
    );

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
      'size': instance.size,
      'mime_type': instance.mimeType,
      'is_image': instance.isImage,
      'image_width': instance.imageWidth,
      'image_height': instance.imageHeight,
      'uploaded_at': instance.uploadedAt.toIso8601String(),
      'url': instance.url,
      'thumbnails': instance.thumbnails,
      'name': instance.name,
      'original_name': instance.originalName,
    };
