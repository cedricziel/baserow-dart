// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
