import 'package:json_annotation/json_annotation.dart';

part 'files.g.dart';

@JsonSerializable()
class File {
  final int size;
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @JsonKey(name: 'is_image')
  final bool isImage;
  @JsonKey(name: 'image_width')
  final int? imageWidth;
  @JsonKey(name: 'image_height')
  final int? imageHeight;
  @JsonKey(name: 'uploaded_at')
  final DateTime uploadedAt;
  final String url;
  final Map<String, dynamic>? thumbnails;
  final String name;
  @JsonKey(name: 'original_name')
  final String originalName;

  File({
    required this.size,
    required this.mimeType,
    required this.isImage,
    this.imageWidth,
    this.imageHeight,
    required this.uploadedAt,
    required this.url,
    this.thumbnails,
    required this.name,
    required this.originalName,
  });

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);

  Map<String, dynamic> toJson() => _$FileToJson(this);
}
